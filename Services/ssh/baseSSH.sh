#This script will replace the /etc/ssh/ssh_config
updatedb
#This will replace the /etc/ssh/ssh_config
cd /etc/ssh
#Deletes previous files and replaces the ssh_config file with secured file
sudo chattr -i ssh_config
sudo chmod 777 ssh_config
cat $PWD/Services/Refrencedirectory/ssh_config > /etc/ssh/ssh_config
/usr/bin/sshd -t
sudo systemctl restart sshd.service 
#this service command will serve as a backup command in case systemctil does not work
sudo service sshd.service retart

