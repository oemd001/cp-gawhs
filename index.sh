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


#--------Running automator scripts----
sudo ./AntiVirus/automator.sh