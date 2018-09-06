#index.sh

#runs everything
#Authored by Thomas 8/29
#Edited by Kenneth 8/30
#Script that will run entire directory of scripts. Use "automator.sh" to accomplish this

#--------Updating Linux----
	#Making the linux sources.list open for updates
	sudo chattr -i /etc/apt/sources.list
	sudo chmod 777 /etc/apt/sources.list
	#updating
	sudo apt-get update
	sudo apt-get upgrade
	clear

#--------Running Misc. Automator Scripts-----
	sudo ./AntiVirus/automator.sh 
	sudo ./Purge/automator.sh
	sudo ./PW/automator.sh
	clear

#--------Running Service Scripts
function serviceJump {

}

echo "What services are running? Choose samba, apache2 or ssh"

while [exit ==! false ]
read cotyn

if [ "$contyn" = "ssh"]; then
	./Services/sshScript.sh
	echo "ssh secured. Modify anything else accordingly"
fi

if [ "$contyn" = "samba"]; then
	./Services/sambaScript.sh
	echo "samba secured. Modify anything accordingly"
fi
