echo "-----> updating repos"
add-apt-repository ppa:cwchien/gradle;
add-apt-repository ppa:cwchien/gradle;

apt-get install -y gnupg2
#dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
#wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
#dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
#percona-release setup ps80

apt-get -y update;

echo "----> installing upgrades"
apt-get -y upgrade ;

echo "-----> installing gradle"
apt-get install -y gradle;

echo "-----> installing make"
apt-get install -y make;

echo "-----> installing htop"
apt-get install -y htop;

echo "-----> installing redis"
apt-get install -y redis;

echo "-----> installing java 8"
apt-get install -y openjdk-8-jdk;

echo "------> installing java 11"
apt-get install -y default-jdk ;

echo "-----> installing postgress"
apt-get install -y postgresql postgresql-contrib;

echo "------> installing unrar"
apt-get install -y  unrar;

echo "------> installing build essentials"
apt-get install -y build-essential libgtk2.0-dev;

echo "------> installing maven"
apt-get install -y maven ;

echo "------> installing git"
apt-get install -y git ;

echo "------> installing curl"
apt-get install -y curl ;

echo "------> installing ant"
apt-get install -y ant ;

echo "------> installing vim"
apt-get install -y vim ;

echo "------> installing docker"
apt-get install -y docker.io ;

echo "------> installing zsh"
apt-get install -y zsh;

echo "------> installing percona"

apt-get install -y percona-server-server

echo "-------> revoming useless packages"
apt-get autoremove

echo "-------> take ownershipt of /opt"
chown -R f5508088:f5508088 /opt
