echo "Mapping the network...";\
unset fpga calculon xavier nano projector;\
nmap -nsP 10.180.1.0/24 > /dev/null 2>&1;\
pid=$!;\
wait $pid;\
echo "Done.";\
fpga=$(arp -n | grep -w -i '00:00:F3:BE:EF:02' | awk '{print $1}');\
projector=$(arp -n | grep -w -i '00:0e:c6:ac:ca:2b' | awk '{print $1}');\
xavier=$(arp -n | grep -w -i '48:B0:2D:2F:7C:06' | awk '{print $1}');\
calculon=$(arp -n | grep -w -i '28:EE:52:1A:33:32' | awk '{print $1}');\
nano=$(arp -n | grep -w -i '00:04:4B:E6:DE:E3' | awk '{print $1}');\
echo -e "\nFPGA:\t\t$fpga\n\nJetson Xavier:\t$xavier\n\nCalculon-9:\t$calculon\n\nJetson Nano:\t$nano\n\nProjector:\t$projector\n";
