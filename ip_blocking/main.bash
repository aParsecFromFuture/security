if [ $# -ne 1 ]
then
	echo "usage : ./main.bash <ip_address>"
	exit
fi

sudo iptables -t filter -A INPUT -s $1 -j DROP
sudo iptables -t filter -A OUTPUT -d $1 -j DROP
