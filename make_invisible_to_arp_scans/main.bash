if [ $# -ne 1 ]
then
	echo "usage : ./main.bash <ip_address_of_router>"
	exit
fi

hash arptables 2> /dev/null || { echo >&2 "arptables not found";exit;}

sudo arptables -t filter -P INPUT DROP
sudo arptables -t filter -P OUTPUT DROP
sudo arptables -t filter -A INPUT -s $1 -j ACCEPT
sudo arptables -t filter -A OUTPUT -d $1 -j ACCEPT
