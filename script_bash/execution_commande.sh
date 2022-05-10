#!/bin/bash

filename=Extraction_$(echo $HOSTNAME | awk -F "." '{ print $1 }')
echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /etc/passwd' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /etc/passwd >> $filename 2>&1


echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /etc/login.defs' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /etc/login.defs >> $filename 2>&1


echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /etc/pam.d/system-auth-ac' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /etc/pam.d/system-auth-ac >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'chage -l root' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
chage -l root >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'chage -l <user> (account aging information)' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
chage -l user account aging information >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /etc/pam.d/common-password' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /etc/pam.d/common-password >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /etc/security/pwquality.conf' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /etc/security/pwquality.conf >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'ls -ail /etc/ssh/sshd_config' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
ls -ail /etc/ssh/sshd_config >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'ls -l /etc/sudoers.d' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
ls -l /etc/sudoers.d >> $filename 2>&1


echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /etc/issue' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /etc/issue >> $filename 2>&1


echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /proc/version' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /proc/version >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /var/log/sudo.log' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /var/log/sudo.log >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'cat /var/log/auth.log' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
cat /var/log/auth.log >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'rpm -qa --last' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
rpm -qa --last >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'service --status-all' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
service --status-all >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'systemctl list-units --type service --all' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
systemctl list-units --type service --all >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'chkconfig --list' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
chkconfig --list >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'find /  -path /proc -prune -o -type f \( -perm -4000 -o -perm -2000 \) -exec ls -l {} \;' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
find /  -path /proc -prune -o -type f \( -perm -4000 -o -perm -2000 \) -exec ls -l {} \; >> $filename 2>&1

echo " " >> $filename
echo "===================================" >> $filename
echo "Résultat de la commande :'find / -nouser -o -nogroup -exec ls -l {} \;' " >> $filename
echo "###################################" >> $filename
echo "     " >> $filename
find / -nouser -o -nogroup -exec ls -l {} \; >> $filename 2>&1
