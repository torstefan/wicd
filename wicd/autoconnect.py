#!/usr/bin/python

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

import dbus
import time
import gobject
import sys

if getattr(dbus, 'version', (0, 0, 0)) < (0, 80, 0):
    import dbus.glib
else:
    from dbus.mainloop.glib import DBusGMainLoop
    DBusGMainLoop(set_as_default=True)

try:
    bus = dbus.SystemBus()
    proxy_obj = bus.get_object('org.wicd.daemon', '/org/wicd/daemon')
    daemon = dbus.Interface(proxy_obj, 'org.wicd.daemon')
except Exception, e:
    print>>sys.stderr, "Exception caught: %s" % str(e)
    print>>sys.stderr, 'Could not connect to daemon.'
    sys.exit(1)

def handler(*args):
    loop.quit()

def error_handler(*args):
    print>>sys.stderr, 'Async error autoconnecting.'
    sys.exit(3)

if __name__ == '__main__':
    try:
        time.sleep(3)
        daemon.SetSuspend(False)
        if not daemon.CheckIfConnecting():
            daemon.SetForcedDisconnect(False)
            daemon.AutoConnect(True, reply_handler=handler, error_handler=handler)
    except Exception, e:
        print>>sys.stderr, "Exception caught: %s" % str(e)
        print>>sys.stderr, 'Error autoconnecting.'
        sys.exit(2)
