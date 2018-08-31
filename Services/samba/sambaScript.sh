#This script will secure samba

#This will overwrite the contents inside /etc/samba/smb.conf
cat $PWDthi/Services/Refrencedirectory/smb_config > /etc/ssh/sshd_config
systemctl restart samba.service
sudo service samba restart

