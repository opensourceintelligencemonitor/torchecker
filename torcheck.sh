####################MAIN##############################
##############TOR DOWNLOAD DAILY#######################
source config.sh
cd $WRKLOK
wget $EXITDL -O 1hs62s72.txt
grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' 1hs62s72.txt > $EXIT
rm 1hs62s72.txt
sqlite3 $DB ".import $EXIT ipaddress"
sqlite3 $DB "DELETE FROM ipaddress WHERE rowid NOT in (SELECT min(rowid) FROM ipaddress group by ip)";
rm $EXIT
###############TOR CHECK####################################
lynx --dump $IPCHK > 82bdsa.txt
grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' 82bdsa.txt > ns923sda.txt
rm 82bdsa.txt
cat ns923sda.txt | tr -d " \t\n\r" > 35dnvx.txt
rm ns923sda.txt
TORIPCHECK=$(< 35dnvx.txt)
echo """
############################
##Your current IP is below##
############################"""
echo "$TORIPCHECK"
sleep 2;
echo "######################################################################"
echo "##If your IP is returned below your running via a know tor exit node##"
echo "######################################################################"
sleep 1;
sqlite3 $DB "SELECT * FROM ipaddress WHERE ip LIKE '$TORIPCHECK'";
rm 35dnvx.txt
echo """
#############
##completed##
#############"""
sleep 2;
