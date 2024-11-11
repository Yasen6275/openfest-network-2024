!TL-SG3210
#
vlan 20,207,666,999
#
vlan 20
name "of-mgmt"
#
vlan 207
name "ipact"
#
vlan 666
name "uplink/ipacct"
#
#
#
#
hostname "barrier"
#
mac address-table aging-time 300
#
logging buffer 6
no logging file flash
#
enable secret @_pass_@
#
system-time ntp UTC+02:00 10.20.0.1 10.20.0.1 4
#
spanning-tree mode rstp
#
#
user name admin privilege admin secret 0 @_pass_@
user name root privilege admin secret 0 @_pass_@
#
#
#
#
#
#
snmp-server
snmp-server community "@_community_@" read-only "viewDefault"
#
interface gigabitEthernet 1/0/1
  switchport access vlan 20
#
interface gigabitEthernet 1/0/2
  switchport access vlan 207
#
interface gigabitEthernet 1/0/3
#
interface gigabitEthernet 1/0/4
#
interface gigabitEthernet 1/0/5
#
interface gigabitEthernet 1/0/6
#
interface gigabitEthernet 1/0/7
#
interface gigabitEthernet 1/0/8
#
interface gigabitEthernet 1/0/9
  switchport mode trunk
  switchport trunk allowed vlan 20,207,666,999
  description "downlink/gkc"
  speed 1000
  duplex full
#
interface gigabitEthernet 1/0/10
  switchport mode trunk
  switchport trunk allowed vlan 20,207,666,999
  description "uplink/ipacct"
  speed 1000
  duplex full
#
ip management-vlan 20
interface vlan 20
ip address 10.20.0.16 255.255.255.0 10.20.0.1
#
#
line vty 0 0
password @_pass_@
login
#
line vty 1 1
password @_pass_@
login
#
line vty 2 2
password @_pass_@
login
#
line vty 3 3
password @_pass_@
login
#
line vty 4 4
password @_pass_@
login
#
line vty 5 5
password @_pass_@
login
#
line vty 6 6
password @_pass_@
login
#
line vty 7 7
password @_pass_@
login
#
line vty 8 8
password @_pass_@
login
#
line vty 9 9
password @_pass_@
login
#
line vty 10 10
password @_pass_@
login
#
line vty 11 11
password @_pass_@
login
#
line vty 12 12
password @_pass_@
login
#
line vty 13 13
password @_pass_@
login
#
line vty 14 14
password @_pass_@
login
#
line vty 15 15
password @_pass_@
login
#
end
