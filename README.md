linked-icgc
===========

### Clone this repository
    cd $HOME  
    git clone https://github.com/ryotas/linked-icgc  

### Install MySQL 
    sudo yum -y install php php-mbstring mysql-server php-mysql
    sudo service mysqld start
    sudo mysql
    SET PASSWORD FOR root@localhost=PASSWORD('p');
    exit

### Install Virtuoso  



### Get virtuoso.sh
    cd $HOME
    wget https://raw.githubusercontent.com/dbcls/rdfsummit/master/virtuoso/virtuoso.sh

### Install Node.js



### Install SPARQL client
    cd $HOME
    git clone https://github.com/ryotas/sparql-gateway.git
    cd sparql-gateway
    npm install request fs config

### Download ICGC data  
    cd $HOME/linked-icgc
    vi project.txt          # list projects
    vi 10_download.sh projects.txt

### Convert ICGC data into RDF 
    cd $HOME/linked-icgc
    vi 20_convert.sh projects.txt

