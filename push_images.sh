echo "Extracting and pushing images to Docker server"
gunzip -c 'images/portainer_latest.tar.gz' | docker load
gunzip -c 'images/dokuwiki_latest.tar.gz' | docker load
gunzip -c 'images/flame_latest.tar.gz' | docker load
gunzip -c 'images/phpipam-www_latest.tar.gz' | docker load
gunzip -c 'images/phpipam-cron_latest.tar.gz' | docker load
gunzip -c 'images/mariadb_latest.tar.gz' | docker load
gunzip -c 'images/snipe-it_latest.tar.gz' | docker load
gunzip -c 'images/linuxserver_mariadb_latest.tar.gz' | docker load