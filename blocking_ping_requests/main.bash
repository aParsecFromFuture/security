sudo iptables -t filter -A INPUT -p icmp -j DROP
sudo iptables -t filter -A OUTPUT -p icmp -j DROP
