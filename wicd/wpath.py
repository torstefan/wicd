""" Path configuration and functions for the wicd daemon and gui clients.

chdir() -- Change directory to the location of the current file.

"""

import os

# The path containing the wpath.py file.
current = os.path.dirname(os.path.realpath(__file__)) + '/'

# These paths can easily be modified to handle system wide installs, or
# they can be left as is if all files remain with the source directory
# layout.

# These paths are replaced when setup.py configure is run

# All directory paths *MUST* end in a /

version = '1.7.3'
revision = '931'
curses_revision = 'uimod'

# DIRECTORIES

lib = '/usr/lib/wicd/'
share = '/usr/share/wicd/'
etc = '/etc/wicd/'
scripts = '/etc/wicd/scripts/'
predisconnectscripts = '/etc/wicd/scripts/predisconnect'
postdisconnectscripts = '/etc/wicd/scripts/postdisconnect'
preconnectscripts = '/etc/wicd/scripts/preconnect'
postconnectscripts = '/etc/wicd/scripts/postconnect'
images = '/usr/share/wicd/icons/'
encryption = '/etc/wicd/encryption/templates/'
bin = '/usr/bin/'
varlib = '/var/lib/wicd/'
networks = '/var/lib/wicd/configurations/'
log = '/var/log/wicd/'
resume = '/etc/acpi/resume.d/'
suspend = '/etc/acpi/suspend.d/'
sbin = '/usr/sbin/'
pmutils = '/usr/lib/pm-utils/sleep.d/'
dbus = '/etc/dbus-1/system.d/'
dbus_service = '/usr/share/dbus-1/system-services/'
systemd = '/lib/systemd/system/'
logrotate = '/etc/logrotate.d/'
desktop = '/usr/share/applications/'
backends = '/usr/share/wicd/backends/'
daemon = '/usr/share/wicd/daemon/'
curses = '/usr/share/wicd/curses/'
gtk = '/usr/share/wicd/gtk/'
cli = '/usr/share/wicd/cli/'
gnome_shell_extensions = '/usr/share/gnome-shell/extensions/'
translations = '/usr/share/locale/'
icons = '/usr/share/icons/hicolor/'
pixmaps = '/usr/share/pixmaps/'
autostart = '/etc/xdg/autostart/'
init = '/etc/init.d/'
docdir = '/usr/share/doc/wicd/'
mandir = '/usr/share/man/'
kdedir = '/usr/share/autostart/'

# FILES

# python begins the file section
python = '/usr/bin/python'
pidfile = '/var/run/wicd/wicd.pid'
# stores something like other/wicd
# really only used in the install
initfile = 'init/debian/wicd'
# stores only the file name, i.e. wicd
initfilename = 'wicd'
wicd_group = 'netdev'
log_group = 'adm'
log_perms = '0640'

# BOOLEANS
no_install_pmutils = False
no_install_init = False
no_install_man = False
no_install_i18n = False
no_install_i18n_man = False
no_install_kde = True
no_install_acpi = False
no_install_docs = False
no_install_gtk = False
no_install_ncurses = False
no_install_cli = False
no_install_gnome_shell_extensions = False
no_use_notifications = False

def chdir(f):
    """Change directory to the location of the specified file.

    Keyword arguments:
    f -- the file to switch to (usually __file__)

    """
    os.chdir(os.path.dirname(os.path.realpath(f)))

