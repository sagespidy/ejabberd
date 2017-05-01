cd /opt
wget https://www.process-one.net/downloads/ejabberd/16.08/ejabberd-16.08.tgz
tar  -xvzf ejabberd-16.08.tgz
cd /opt/ejabberd-16.08
apt-get update
apt-get install make gcc libexpat1-dev libyaml-dev  automake libssl-dev -y
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
dpkg -i erlang-solutions_1.0_all.deb
apt-get update
apt-get install erlang
apt-get install build-essential checkinstall -y
cd /opt/ejabberd-16.08
bash autogen.sh
bash configure
make
make install
ejabberdctl start
