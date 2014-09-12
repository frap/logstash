wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
echo 'deb http://packages.elasticsearch.org/elasticsearch/1.1/debian stable main' | sudo tee /etc/apt/sources.list.d/elasticsearch.list
sudo apt-get update
# logstash 1.4 recommends elasticsearch 1.1.1
sudo apt-get -y install elasticsearch=1.1.1

sudo vi /etc/elasticsearch/elasticsearch.yml
script.disable_dynamic:true
network.host:localhost

sudo service elasticsearch restart
sudo update-rc.d elasticsearch defaults 95 10
