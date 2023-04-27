sudo su

#Instalando erlang
apt update
apt -y upgrade

apt install -y curl libssl-dev make automake autoconf libncurses5-dev gcc g++ openjdk-8-jdk javascript-common libjs-jquery libjs-jquery-metadata libjs-jquery-tablesorter libodbc1 libsctp1 libwxbase3.0-0v5 libwxgtk3.0-gtk3-0v5 xsltproc fop erlang

git clone https://github.com/erlang/otp.git
cd otp
git checkout maint-21 
./otp_build autoconf
./configure
make
make install
cd

#Instalando rebar3
git clone https://github.com/erlang/rebar3.git
cd rebar3
./bootstrap
cd
mv rebar3/ /usr/local/lib/
cd /usr/local/bin/
ln -s /usr/local/lib/rebar3/rebar3 rebar3

#Instalando R linguagem de programação
apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common build-essential
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
apt install -y r-base
R --version

#Instalando o FMKe
git clone https://github.com/goncalotomas/FMKe.git
git clone https://github.com/goncalotomas/fmke_populator.git
git clone https://github.com/goncalotomas/fmke_client.git
cd fmke_populator
rebar3 escriptize
cd ../fmke_client/
rebar3 escriptize

