#####################MAIN##############################
##############TOR DOWNLOAD DAILY#######################
cd /XXXX/XXXX
source config.sh
cd $WRKLOC
wget $EXITDL -O 1hs62s72.txt
grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' 1hs62s72.txt > $EXIT
rm 1hs62s72.txt
sqlite3 $DB ".import $EXIT ipaddress"
sqlite3 $DB "DELETE FROM ipaddress WHERE rowid NOT in (SELECT min(rowid) FROM ipaddress group by IP)";
rm 2hs62s72.txt
