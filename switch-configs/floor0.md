!TL-SG2210MP
#
vlan 20
        name "managment"
#
vlan 21
        name "wired"
#
vlan 22
        name "wireless"
#
vlan 23
        name "video"
#
vlan 24
        name "overflow"
#
vlan 25
        name "reception"
#
vlan 26
        name "voice"
#
vlan 27
        name "other"
#
vlan 28
        name "wired2"
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
hostname "sw-floor0"
#
#
system-time ntp UTC+08:00 133.100.9.2 139.78.100.163 12 199.165.76.11 140.142.16.34 128.138.140.44
no system-time dst
#
#
#
user name admin privilege admin password 0 @_pass_@
enable password 0 @_pass_@
no service reset-disable
#
#
#
#
#
#
#
#
#
snmp-server
snmp-server community "@_community_@" read-only "viewDefault"
#
#
#
#
power inline consumption 150.0
#
#

#
#
loopback-detection
#
#
#
#
#
#
#
no controller cloud-based
no controller cloud-based privacy-policy
interface vlan 1
  ip address-alloc dhcp
  no ipv6 enable
#
interface vlan 20
  ip address 10.20.0.15 255.255.255.0
  no ipv6 enable
#
interface gigabitEthernet 1/0/1
  switchport general allowed vlan 20,22,28 tagged

#
interface gigabitEthernet 1/0/2
  switchport general allowed vlan 20,22,28 tagged

#
interface gigabitEthernet 1/0/3
  switchport general allowed vlan 26 untagged
  no switchport general allowed vlan 1

#
interface gigabitEthernet 1/0/4
  switchport general allowed vlan 1,20,27 tagged
  switchport pvid 20

#
interface gigabitEthernet 1/0/5
  switchport general allowed vlan 1,24 tagged

#
interface gigabitEthernet 1/0/6
  switchport general allowed vlan 1,20,22,28 tagged

#
interface gigabitEthernet 1/0/7
  switchport general allowed vlan 1,20,22,28 tagged

#
interface gigabitEthernet 1/0/8
  switchport general allowed vlan 20-28 tagged
  switchport pvid 20

  power inline supply disable
#
interface gigabitEthernet 1/0/9
  switchport general allowed vlan 20-28 tagged

#
interface gigabitEthernet 1/0/10
  switchport general allowed vlan 20-28 tagged

#
end

