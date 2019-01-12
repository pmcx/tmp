Upgrade from 16.04 lts to 18.04 lts ended up:

(Reading database ... 94306 files and directories currently installed.)
Removing systemd-shim (9-1bzr4ubuntu1) ...
Removing 'diversion of /usr/share/dbus-1/system-services/org.freedesktop.systemd1.service to /usr/share/dbus-1/system-services/org.freedesktop.systemd1.service.systemd by systemd-shim'
dpkg-divert: error: rename involves overwriting '/usr/share/dbus-1/system-services/org.freedesktop.systemd1.service' with
  different file '/usr/share/dbus-1/system-services/org.freedesktop.systemd1.service.systemd', not allowed
dpkg: error processing package systemd-shim (--remove):
 installed systemd-shim package post-removal script subprocess returned error exit status 2
Errors were encountered while processing:
 systemd-shim
E: Sub-process /usr/bin/dpkg returned an error code (1)
root@profistat:/var/log/dist-upgrade# sudo nano /etc/update-manager/release-upgrades
root@profistat:/var/log/dist-upgrade#  /etc/update-manager/release-upgrades
 /etc/update-manager/release-upgrades
-bash: /etc/update-manager/release-upgrades: Permission denied

Solution:
sudo mv /usr/share/dbus-1/system-services/org.freedesktop.systemd1.service /usr/share/dbus-1/system-services/org.freedesktop.systemd1.service.bak
