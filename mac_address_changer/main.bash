if [ $# -ne 2 ]
then
	echo "usage : ./main.bash <network_interface> <new_mac_address>"
fi

sudo ifconfig $1 down
sudo ifconfig $1 hw ether $2
sudo ifconfig $1 up
sudo ifconfig $1 | grep ether
