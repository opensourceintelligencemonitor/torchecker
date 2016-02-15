# torchecker
Keeps a database of known tor exit nodes. After you launch tor, run torcheck.sh to double check your covered by tor.

Deps

		sudo apt-get install sqlite3 libsqlite3-dev -y && sudo apt-get install lynx -y

Then setup a cronjob like the following
		
		0 0,4,8,12,16,20 * * * /location/to/script/torupdate.sh

Also update the config.sh so if refers to your installed location

		DB="/(EDIT THIS)/tordatabase.db"
		EXIT="/(EDIT THIS)/2hs62s72.txt"
