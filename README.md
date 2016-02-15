# torchecker
Keeps a database of known tor exit nodes. After you launch tor, run torcheck.sh to double check your covered by tor.

Deps

		sudo apt-get install sqlite3 libsqlite3-dev -y && sudo apt-get install lynx -y

Then setup a cronjob like the following
		
		0 12 * * * /location/to/script/torupdate.sh

Also update the connectcheck.sh so if refers to your installed location

		DB="findme/tor/tor.db"
		EXIT="findme/tor/torexitnotes.txt"
