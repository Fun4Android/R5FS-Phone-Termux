echo "##############################################"
echo " Phone Hacker R5FS ~> Termux/GnuRoot"
echo "##############################################"
echo "______________________________________________"
echo "[+]Setting the Termux..."
echo "______________________________________________"
dir_bin=/data/data/com.termux/files/usr/bin/
apt update && apt -y upgrade  
termux-setup-storage 
pkg install ncurses-utils 
su -c dos2unix *.sh
su -c chmod 777 *
sleep 5
echo "______________________________________________"
echo "[+]Installing Apps && libs..."
echo "______________________________________________"
./aptInstallApps.sh
./aptInstallBin.sh
sleep 5
echo "______________________________________________"
echo "[+]Installing Python Libs..."
echo "______________________________________________"
./aptInstallPythonLibs.sh   
sleep 5
echo "______________________________________________"
echo "[+]Installing the Scapy..."
echo "______________________________________________"
./aptInstallScapy.sh 
sleep 5
echo "______________________________________________"
echo "[+]Setting the PostgreSQL && PHP SERVER..."
echo "______________________________________________"
./initPstServer.sh 
./startServerPst.sh 
sleep 5
echo "______________________________________________"
echo "[+]Installing the Sudo..." 
echo "______________________________________________"
su -c cat sudo > /data/data/com.termux/files/usr/bin/sudo
su -c chmod 777 /data/data/com.termux/files/usr/bin/sudo
sleep 5
echo "______________________________________________"
echo "[+]Installing the Ngrok..."
echo "______________________________________________"
su -c cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
su -c chmod 777 /data/data/com.termux/files/usr/bin/ngrok
echo "______________________________________________"
echo "##############################################"
echo "[+]PHONE-HACKER Success"
echo "##############################################"
