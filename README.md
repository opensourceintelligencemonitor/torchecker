# torchecker
Keeps a database of known tor exit nodes. After you launch tor, run torcheck.sh to double check your covered by tor.

Deps

		sudo apt-get install sqlite3 libsqlite3-dev -y && sudo apt-get install lynx -y

Then setup a cronjob like the following
		
		0 0,4,8,12,16,20 * * * /location/to/script/torupdate.sh
		
Update the torupdate.sh so when cronruns, it works fine.
		
		cd /XXXX/XXXX

Also update the config.sh so if refers to your installed location

		WRKLOC="/XXX/XXXX/torcheck"
		DB="/XXX/XXXX/tordatabase.db"
		EXIT="/XXX/XXXX/2hs62s72.txt"
		
