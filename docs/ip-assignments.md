# IP ranges assignments

## VLANs
ID | IP/Range | Name | Notes
---|----------|------|---------
10 | single ip | NAT-ed | Provided by A1
20 | 10.20.0.0/24 | mgmt |
21 | 10.21.0.0/22 | wired | wired clients 
22 | 10.22.0.0/22 | wireless | ap
23 | 10.23.0.0/24 | video | video team
24 | 10.24.0.0/24 | overflow | overflow TV's
25 | 10.25.0.0/24 | reception | Reception related
26 | 10.26.0.0/24 | VoIP | Phones
27 | 10.27.0.0/24 | workshop | random ppl
207| subnets | provided by IPAct

## Assignments

### MGMT
IP | Name | Notes
---|------|------
.1 | sonata | router/services
.11 | sw-core| CORE
.11 | core-backup| backu CORE(NO PoE)
.15 | sw-floor0| floor0 interconnecting switch
.16 | sw-barier| switch barier
.21 | sw-voc-a| video team switch room A
.22 | sw-voc-b| video team switch room B
.23 | sw-voc-z| video team switch room Z
.24 | sw-gkc|  GKC switch 
.25 | sw-rec-ja| Reception switch
.26 | sw-team| switch for teamroom
.27 | sw-workshop| switch workshop Floor 0
.28 | sw-noc| NOC
.51 | ap-voc-a |
.52 | ap-ws-front |
.53 | ap-voc-b |
.54 | ap-lector-a |
.55 | ap-lector-b |
.56 | ap-ws-back |
.57 | ap-noc|
.58 | ap-ws0-left |
.59 | ap-ws0-right |
.60 | ap-voc-z|

### Video WORK IN PROGRESS
IP | Name | Notes
---|------|------
.1 | sonata |

### Overflow
IP | Name | Notes
---|------|------
.1 | sonata |

### Wired
IP | Name | Notes
---|------|------
.1 | sonata |

### Reception
IP | Name | Notes
---|------|------
.1 | sonata |

### VoIP
IP | Name | Notes
---|------|------
.1 | sonata |
.10 |phone-noc|
.11 |phone-voc-a|
.12 |phone-voc-b|
.13 |phone-voc-z|
.14 |phone-rec-ja|
.15 |phone-rec-z|
.16 |phone-team|
