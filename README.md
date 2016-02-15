# torchecker
Keeps a database of known tor exit nodes and after you launch tor run the script to check your tor exit node status

Deps

		sudo apt-get install sqlite3 libsqlite3-dev -y
		sudo apt-get install lynx -y

Then setup a cronjob like the following
		
		0 12 * * * /location/to/script/torupdate.sh

Also update the connectcheck.sh so if refers to your installed location

		DB="findme/tor/tor.db"
		EXIT="findme/tor/torexitnotes.txt"
