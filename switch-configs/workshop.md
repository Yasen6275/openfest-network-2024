!
version 12.2
no service pad
service timestamps debug uptime
service timestamps log uptime
no service password-encryption
!
hostname workshop-sw
!
enable secret @_pass_@
enable password @_pass_@
!
no aaa new-model
ip subnet-zero
!
!
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
!
interface FastEthernet0/1
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/2
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/3
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/4
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/5
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/6
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/7
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/8
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/9
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/10
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/11
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/12
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/13
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/14
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/15
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/16
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/17
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/18
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/19
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/20
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/21
 switchport access vlan 27
 switchport mode access
!
interface FastEthernet0/22
 switchport access vlan 24
 switchport mode access
!
interface FastEthernet0/23
 description "uplink"
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 20-27
 switchport mode trunk
 switchport nonegotiate
 shutdown
!
interface FastEthernet0/24
 description "uplink fl0"
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 20-27
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet0/1
 switchport mode dynamic desirable
!
interface GigabitEthernet0/2
 switchport mode dynamic desirable
!
interface Vlan1
 no ip address
 shutdown
!
interface Vlan20
 ip address 10.20.0.27 255.255.255.0
!
ip default-gateway 10.20.0.1
ip classless
no ip http server
no ip http secure-server
!
!
logging 10.20.0.1
snmp-server community @_community_@ RO
!
control-plane
!
!
line con 0
 password @_pass_@
 login
line vty 0 4
 password @_pass_@
 login
line vty 5 15
 password @_pass_@
 login
!
end

