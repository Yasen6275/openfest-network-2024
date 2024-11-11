!
version 12.2
no service pad
service timestamps debug uptime
service timestamps log datetime msec
no service password-encryption
service sequence-numbers
service unsupported-transceiver
!
hostname core-sw
!
boot-start-marker
boot-end-marker
!
enable password @_pass_@
!
!
!
no aaa new-model
switch 1 provision ws-c3750e-48pd
system mtu routing 1500
ip routing
!
!
ip name-server 10.20.0.2
ip name-server 10.20.0.1
vtp mode off
!
!
spanning-tree mode rapid-pvst
spanning-tree extend system-id
no spanning-tree vlan 999
spanning-tree vlan 1,10,20-27 priority 0
!
!
vlan internal allocation policy ascending
!
vlan 10
 name of-ext
!
vlan 20
 name of-mgmt
!
vlan 21
 name of-wired
!
vlan 22
 name of-wifi
!
vlan 23
 name of-video
!
vlan 24
 name of-overflow
!
vlan 25
 name of-reception
!
vlan 26
 name of-phone
!
vlan 27
 name of-workshop
!
vlan 207
 name ipacct207
!
vlan 999
 name ipacct
!
lldp run
!
!
!
interface FastEthernet0
 no ip address
 no ip route-cache cef
 no ip route-cache
 no ip mroute-cache
!
interface GigabitEthernet1/0/1
 description Debug
 switchport access vlan 20
 switchport mode access
 switchport nonegotiate
 spanning-tree portfast
 spanning-tree bpdufilter enable
 spanning-tree bpduguard enable
!
interface GigabitEthernet1/0/2
 description Debug
 switchport access vlan 20
 switchport mode access
 switchport nonegotiate
 spanning-tree portfast
 spanning-tree bpdufilter enable
 spanning-tree bpduguard enable
!
interface GigabitEthernet1/0/3
!
interface GigabitEthernet1/0/4
 switchport access vlan 21
 switchport mode access
 switchport nonegotiate
 spanning-tree bpdufilter enable
 spanning-tree bpduguard enable
!
interface GigabitEthernet1/0/5
 switchport access vlan 21
 switchport mode access
 switchport nonegotiate
 spanning-tree bpdufilter enable
 spanning-tree bpduguard enable
!
interface GigabitEthernet1/0/6
!
interface GigabitEthernet1/0/7
 switchport access vlan 24
 switchport mode access
!
interface GigabitEthernet1/0/8
!
interface GigabitEthernet1/0/9
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/10
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/11
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/12
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/13
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/14
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/15
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/16
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/17
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/18
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/19
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/20
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/21
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/22
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/23
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/24
 description switch
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/25
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/26
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/27
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/28
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/29
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/30
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/31
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/32
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/33
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/34
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/35
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/36
 description AP
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/37
!
interface GigabitEthernet1/0/38
!
interface GigabitEthernet1/0/39
!
interface GigabitEthernet1/0/40
!
interface GigabitEthernet1/0/41
!
interface GigabitEthernet1/0/42
!
interface GigabitEthernet1/0/43
 switchport access vlan 10
 switchport mode access
 switchport nonegotiate
 spanning-tree portfast
 spanning-tree bpdufilter enable
 spanning-tree bpduguard enable
!
interface GigabitEthernet1/0/44
 switchport access vlan 10
 switchport mode access
 switchport nonegotiate
 spanning-tree portfast
 spanning-tree bpdufilter enable
 spanning-tree bpduguard enable
!
interface GigabitEthernet1/0/45
 description server mirror
 switchport access vlan 22
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-27,999
 switchport mode access
 switchport nonegotiate
 spanning-tree portfast trunk
!
interface GigabitEthernet1/0/46
 description server
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-27,999
 switchport mode trunk
 spanning-tree portfast trunk
!
interface GigabitEthernet1/0/47
 description server-IPMI
 switchport access vlan 10
 switchport mode access
 switchport nonegotiate
 spanning-tree portfast trunk
!
interface GigabitEthernet1/0/48
 description server
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 10,20-28,207,999
 switchport mode trunk
 spanning-tree portfast trunk
!
interface GigabitEthernet1/0/49
!
interface GigabitEthernet1/0/50
!
interface GigabitEthernet1/0/51
 description floor0-sw
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 20-28,207,999
 switchport mode trunk
 switchport nonegotiate
!
interface GigabitEthernet1/0/52
 description uplink-gkc
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 20-28,207,999
 switchport mode trunk
 no cdp enable
 no lldp transmit
 spanning-tree portfast trunk
 spanning-tree bpdufilter enable
 spanning-tree bpduguard enable
!
interface TenGigabitEthernet1/0/1
 description server
 switchport trunk encapsulation dot1q
 switchport mode trunk
 spanning-tree portfast trunk
!
interface TenGigabitEthernet1/0/2
!
interface Vlan1
 no ip address
!
interface Vlan20
 ip address 10.20.0.11 255.255.255.0
!
ip default-gateway 10.20.0.1
ip classless
!
no ip http server
no ip http secure-server
!
logging history informational
logging 10.20.0.1
!
snmp-server community @_community_@ RO
snmp-server enable traps license
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

