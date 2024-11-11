!
version 15.0
no service pad
service timestamps debug datetime msec
service timestamps log datetime msec
no service password-encryption
service unsupported-transceiver
!
hostname team-sw
!
boot-start-marker
boot-end-marker
!
enable password @_pass_@
!
no aaa new-model
system mtu routing 1500
!
!
ip name-server 10.20.0.1
cluster enable of 0
!
!
!
!
spanning-tree mode pvst
spanning-tree extend system-id
!
vlan internal allocation policy ascending
!
!
!
!
!
interface FastEthernet0/1
 switchport access vlan 26
 switchport mode access
!
interface FastEthernet0/2
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/3
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/4
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/5
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/6
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/7
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/8
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/9
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/10
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/11
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/12
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/13
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/14
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/15
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/16
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/17
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/18
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/19
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/20
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/21
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/22
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/23
 switchport access vlan 21
 switchport mode access
!
interface FastEthernet0/24
 switchport access vlan 21
 switchport mode access
!
interface GigabitEthernet0/1
 switchport trunk allowed vlan 20-27
 switchport mode trunk
 switchport nonegotiate
 shutdown
!
interface GigabitEthernet0/2
 switchport trunk allowed vlan 20-27
 switchport mode trunk
 switchport nonegotiate
!
interface Vlan1
 no ip address
 no ip route-cache
 shutdown
!
interface Vlan20
 ip address 10.20.0.26 255.255.255.0
 no ip route-cache
!
ip default-gateway 10.20.0.1
no ip http server
no ip http secure-server
logging host 10.20.0.1 session-id hostname
snmp-server community @_community_@ RO
!
!
line con 0
line vty 0 4
 password @_pass_@
 login
line vty 5 15
 password @_pass_@
 login
!
end

