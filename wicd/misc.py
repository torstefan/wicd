""" Misc - miscellaneous functions for wicd """

#
#   Copyright (C) 2007 - 2008 Adam Blackburn
#   Copyright (C) 2007 - 2008 Dan O'Reilly
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License Version 2 as
#   published by the Free Software Foundation.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

import os
import locale
import gettext
import sys
import re
from subprocess import Popen, STDOUT, PIPE, call
import commands

import wicd.wpath as wpath

if __name__ == '__main__':
    wpath.chdir(__file__)
    
NOT_CONNECTED = 0
CONNECTING = 1
WIRELESS = 2
WIRED = 3
SUSPENDED = 4

AUTO = 0
DHCLIENT = 1
DHCPCD = 2
PUMP = 3

ETHTOOL = 1
MIITOOL = 2

IP = 1
ROUTE = 2

class WicdError(Exception):
    pass
    
__LANG = None
def Run(cmd, include_stderr=False, return_pipe=False):
    """ Run a command.

    Runs the given command, returning either the output
    of the program, or a pipe to read output from.

    keyword arguments --
    cmd - The command to execute
    include_std_err - Boolean specifying if stderr should
                      be included in the pipe to the cmd.
    return_pipe - Boolean specifying if a pipe to the
                  command should be returned.  If it is
                  false, all that will be returned is
                  one output string from the command.

    """
    global __LANG
    if not isinstance(cmd, list):
        cmd = to_unicode(str(cmd))
        cmd = cmd.split()
    if include_stderr:
        err = STDOUT
        fds = True
    else:
        err = None
        fds = False
    
    if not __LANG:
        __LANG = get_good_lang()

    tmpenv = os.environ.copy()
    tmpenv["LC_ALL"] = __LANG
    tmpenv["LANG"] = __LANG
    try:
        f = Popen(cmd, shell=False, stdout=PIPE, stderr=err, close_fds=fds,
                  cwd='/', env=tmpenv)
    except OSError, e:
        print "Running command %s failed: %s" % (str(cmd), str(e))
        return ""
        
    
    if return_pipe:
        return f.stdout
    else:
        return f.communicate()[0]
    
def get_good_lang():
    """ Check if en_US.utf8 is an available locale, if not use C. """
    output = Popen(["locale", "-a"], shell=False, stdout=PIPE).communicate()[0]
    if "en_US.utf8" in output:
        return "en_US.utf8"
    else:
        return "C"
    
def LaunchAndWait(cmd):
    """ Launches the given program with the given arguments, then blocks.

    cmd : A list contained the program name and its arguments.
    
    """
    
    call(cmd, shell=False)

def IsValidIP(ip):
    """ Make sure an entered IP is valid. """
    if ip and ip.count('.') == 3:
        ipNumbers = ip.split('.')
        for number in ipNumbers:
            if not number.isdigit() or int(number) > 255:
                return False
        return ipNumbers
    return False

def PromptToStartDaemon():
    """ Prompt the user to start the daemon """
    daemonloc = wpath.sbin + 'wicd'
    sudo_prog = choose_sudo_prog()
    if sudo_prog.endswith("gksudo") or sudo_prog.endswith("ktsuss"):
        msg = '--message'
    else:
        msg = '--caption'
    sudo_args = [sudo_prog, msg, 
                 'Wicd needs to access your computer\'s network cards.',
                 daemonloc]
    os.spawnvpe(os.P_WAIT, sudo_prog, sudo_args, os.environ)

def RunRegex(regex, string):
    """ runs a regex search on a string """
    m = regex.search(string)
    if m:
        return m.groups()[0]
    else:
        return None

def WriteLine(my_file, text):
    """ write a line to a file """
    my_file.write(text + "\n")

def ExecuteScript(script):
    """ Execute a command and send its output to the bit bucket. """
    call("%s > /dev/null 2>&1" % script, shell=True)

def ReadFile(filename):
    """ read in a file and return it's contents as a string """
    if not os.path.exists(filename):
        return None
    my_file = open(filename,'r')
    data = my_file.read().strip()
    my_file.close()
    return str(data)

def to_bool(var):
    """ Convert a string to type bool, but make "False"/"0" become False. """
    if var in ("False", "0"):
        var = False
    else:
        var = bool(var)
    return var

def Noneify(variable):
    """ Convert string types to either None or booleans"""
    #set string Nones to real Nones
    if variable in ("None", "", None):
        return None
    if variable in ("False", "0"):
        return False
    if variable in ("True", "1"):
        return True
    return variable

def ParseEncryption(network):
    """ Parse through an encryption template file

    Parses an encryption template, reading in a network's info
    and creating a config file for it

    """
    enctemplate = open(wpath.encryption + network["enctype"])
    template = enctemplate.readlines()
    # Set these to nothing so that we can hold them outside the loop
    z = "ap_scan=1\n"
    # Loop through the lines in the template, selecting ones to use
    for y, x in enumerate(template):
        x = x.strip("\n")
        if y > 4:
            # replace values
            x = x.replace("$_SCAN","0")
            for t in network:
                # Don't bother if z's value is None cause it will cause errors
                if Noneify(network[t]) is not None:
                    x = x.replace("$_" + str(t).upper(), str(network[t]))
            z = z + "\n" + x

    # Write the data to the files then chmod them so they can't be read 
    # by normal users.
    file = open(wpath.networks + network["bssid"].replace(":", "").lower(), "w")
    os.chmod(wpath.networks + network["bssid"].replace(":", "").lower(), 0600)
    os.chown(wpath.networks + network["bssid"].replace(":", "").lower(), 0, 0)
    # We could do this above, but we'd like to read protect
    # them before we write, so that it can't be read.
    file.write(z)
    file.close()

def LoadEncryptionMethods():
    """ Load encryption methods from configuration files

    Loads all the encryption methods from the template files
    in /encryption/templates into a data structure.  To be
    loaded, the template must be listed in the "active" file.

    """
    def parse_ent(line, key):
        return line.replace(key, "").replace("=", "").strip()
    
    encryptionTypes = []
    try:
        enctypes = open(wpath.encryption + "active","r").readlines()
    except IOError, e:
        print "Fatal Error: template index file is missing."
        raise IOError(e)
    
    # Parse each encryption method
    for x in enctypes:
        x = x.strip()
        try:
            f = open(wpath.encryption + x, "r")
        except IOError:
            print 'Failed to load encryption type ' + str(x)
            continue
        line = f.readlines()
        f.close()
        
        cur_type = {}
        cur_type[0] = parse_ent(line[0], "name")
        cur_type[1] = x
        cur_type[2] = {}
        
        # Find the line containing our required fields.
        i = 1
        try:
            while not line[i].startswith("require"):
                i += 1
        except IndexError:
            print "Bad encryption template: Couldn't find 'require' line"
        requiredFields = parse_ent(line[i], "require")
        requiredFields = requiredFields.split(" ")

        # Get the required fields.
        index = -1
        for current in requiredFields:
            # The pretty names will start with an * so we can
            # separate them with that.
            if current[0] == "*":
                # Make underscores spaces
                # and remove the *
                cur_type[2][index][0] = current.replace("_", " ").lstrip("*")
            else:
                # Add to the list of things that are required.
                index = len(cur_type[2])
                cur_type[2][index] = {}
                cur_type[2][index][1] = current
        # Add the current type to the dict of encryption types.
        encryptionTypes.append(cur_type)
    return encryptionTypes

def noneToString(text):
    """ Convert None, "None", or "" to string type "None"

    Used for putting text in a text box.  If the value to put in is 'None',
    the box will be blank.

    """
    if text in (None, ""):
        return "None"
    else:
        return str(text)

def noneToBlankString(text):
    """ Converts NoneType or "None" to a blank string. """
    if text in (None, "None"):
        return ""
    else:
        return str(text)

def stringToNone(text):
    """ Performs opposite function of noneToString. """
    if text in ("", None, "None"):
        return None
    else:
        return str(text)

def stringToBoolean(text):
    """ Turns a string representation of a bool to a boolean if needed. """
    if text in ("True", "1"):
        return True
    if text in ("False", "0"):
        return False
    return bool(text)
    
def get_gettext():
    """ Set up gettext for translations. """
    # Borrowed from an excellent post on how to do this at
    # http://www.learningpython.com/2006/12/03/translating-your-pythonpygtk-application/
    local_path = wpath.translations
    langs = []
    try:
        lc, encoding = locale.getdefaultlocale()
    except ValueError, e:
        print str(e)
        print "Default locale unavailable, falling back to en_US"
        lc = None
    if lc:
        langs = [lc]
    osLanguage = os.environ.get('LANGUAGE', None)
    if osLanguage:
        langs += osLanguage.split(":")
    langs += ["en_US"]
    lang = gettext.translation('wicd', local_path, languages=langs, 
                               fallback=True)
    _ = lang.gettext
    return _

def to_unicode(x):
    """ Attempts to convert a string to utf-8. """
    # If this is a unicode string, encode it and return
    if not isinstance(x, basestring):
        return x
    if isinstance(x, unicode):
        return x.encode('utf-8')
    encoding = locale.getpreferredencoding()
    try:
        ret = x.decode(encoding).encode('utf-8')
    except UnicodeError:
        try:
            ret = x.decode('utf-8').encode('utf-8')
        except UnicodeError:
            try:
                ret = x.decode('latin-1').encode('utf-8')
            except UnicodeError:
                ret = x.decode('utf-8', 'replace').encode('utf-8')
    return ret

def RenameProcess(new_name):
    if sys.platform != 'linux2':
        print 'Unsupported platform'
        return False
    try:
        import ctypes
        is_64 = os.path.exists('/lib64/libc.so.6')
        if is_64:
            libc = ctypes.CDLL('/lib64/libc.so.6')
        else:
            libc = ctypes.CDLL('/lib/libc.so.6')
        libc.prctl(15, new_name, 0, 0, 0)
        return True
    except:
        return False
    
def detect_desktop_environment():
    desktop_environment = 'generic'
    if os.environ.get('KDE_FULL_SESSION') == 'true':
        desktop_environment = 'kde'
    elif os.environ.get('GNOME_DESKTOP_SESSION_ID'):
        desktop_environment = 'gnome'
    else:
        try:
            info = commands.getoutput('xprop -root _DT_SAVE_MODE')
            if ' = "xfce4"' in info:
                desktop_environment = 'xfce'
        except (OSError, RuntimeError):
            pass
    
    return desktop_environment

def get_sudo_cmd(msg):
    """ Returns a graphical sudo command for generic use. """
    sudo_prog = choose_sudo_prog()
    if not sudo_prog: return None
    if re.search("(ktsuss|gksu|gksudo)$", sudo_prog):
        msg_flag = "-m"
    else:
        msg_flag = "--caption"
    return [sudo_prog, msg_flag, msg]


def choose_sudo_prog():
    desktop_env = detect_desktop_environment()
    env_path = os.environ['PATH'].split(":")
    
    if desktop_env == "kde":
        paths = []
        for p in env_path:
            paths.extend([p + '/kdesu', p + '/kdesudo', p + '/ktsuss'])
    else:
        paths = []
        for p in env_path:
            paths.extend([p + '/gksudo', p + '/ktsuss'])
    for path in paths:
        if os.access(path, os.F_OK):
            return path
    
    raise WicdError("Couldn't find graphical sudo program.")

def find_path(cmd):
    paths = os.getenv("PATH", default="/usr/bin:/usr/local/bin").split(':')
    for path in paths:
        if os.access(os.path.join(path, cmd), os.F_OK):
            return os.path.join(path, cmd)
    return None
