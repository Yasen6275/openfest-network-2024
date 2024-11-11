/usr/bin/logger "Start augmenting FW"

if [ -z "$1" ]; then
	sleep 1;
else
	sleep $1;
fi

INTERFACES="wifi.22"

all_interfaces_up() {
    for iface in $INTERFACES; do
        if ! ip link show "$iface" > /dev/null 2>&1; then
            return 1  # If any interface is missing, return failure
        fi
    done
    return 0  # All interfaces are up
}

while ! all_interfaces_up; do
    echo "Waiting for interfaces to appear: $INTERFACES"
    sleep 1  # Wait 1 second before checking again
done

/usr/sbin/nft insert rule inet fw4 forward iif wifi.22 ip saddr == 10.22.0.1 drop
/usr/sbin/nft insert rule inet fw4 forward iif wifi.22 ip saddr == 10.20.0.1 drop
/usr/sbin/nft insert rule inet fw4 forward iif wifi.22 ip saddr != 10.22.0.0/21 drop
/usr/sbin/nft insert rule inet fw4 forward iif wifi.22 ether saddr 3c:ec:ef:be:b9:7f drop

/usr/sbin/nft add table bridge filter
/usr/sbin/nft add chain bridge filter forward '{type filter hook forward priority 0; }'
/usr/sbin/nft add rule bridge filter forward iif { phy0-ap0, phy1-ap0 } ether saddr 3c:ec:ef:be:b9:7f drop
/usr/sbin/nft add rule bridge filter forward iif { phy0-ap0, phy1-ap0 } ip saddr == 10.22.0.1 drop
/usr/sbin/nft add rule bridge filter forward iif { phy0-ap0, phy1-ap0 } ip saddr != 10.22.0.0/22 drop
/usr/sbin/nft add rule bridge filter forward iif { phy0-ap0, phy1-ap0 } ip daddr == 10.22.0.0/22 drop

/usr/bin/logger "Finish augmenting FW"
