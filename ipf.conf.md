# This file is managed by Ansible. Any manual changes will be overwritten!
#
# ipf.conf
#
# IP Filter rules to be loaded during startup
#
# See ipf(4) manpage for more information on
# IP Filter rules syntax.

# Do not filter loopback
pass in quick on lo0 keep state
pass out quick on lo0 keep state

# Do not filter LAN interface
pass in quick on vioif1 keep state
pass out quick on vioif1 keep state

# Default deny on WAN inteface
block in on vioif0

# Allow SSH on WAN interface
pass in quick on vioif0 proto tcp from any to 1.2.3.4 port=22 keep state

# Allow ICMP on WAN interface
pass in quick on vioif0 proto icmp from any to 1.2.3.4 keep state


pass out quick on vioif0 keep state
