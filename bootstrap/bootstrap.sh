# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo 'Updating OS'
apt-get -y update >/dev/null 2>&1
#apt-get -y dist-upgrade
install 'development tools' build-essential libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
install 'zlib1g dependency' zlib1g-dev

install PostgreSQL postgresql postgresql-contrib libpq-dev
sudo -u postgres createuser --superuser vagrant
sudo -u postgres createdb -O vagrant activerecord_unittest

install Git git
install SQLite sqlite3 libsqlite3-dev
#install memcached memcached
#install Redis redis-server
#install RabbitMQ rabbitmq-server
install NodeJS nodejs

install 'Java' default-jre 

echo 'Setting Up Elastic Search Repo'
wget https://packages.elastic.co/GPG-KEY-elasticsearch -O- | apt-key add -
echo "deb http://packages.elastic.co/elasticsearch/1.7/debian stable main" > /etc/apt/sources.list.d/elasticsearch-1.7.list
apt-get -y update >/dev/null 2>&1

install 'Elastic Search' elasticsearch

echo 'Start Elastic on boot.'
sudo systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service

su -c 'bash /vagrant/bootstrap/run-rake.sh' vagrant

echo 'all set, rock on!'
