#Pull the Docker Images
echo "Pulling images"
docker pull portainer/portainer-ce:latest
docker pull docker.io/bitnami/dokuwiki:latest
docker pull pawelmalak/flame:latest
docker pull phpipam/phpipam-www:latest
docker pull phpipam/phpipam-cron:latest
docker pull mariadb:latest
docker pull linuxserver/snipe-it:latest
docker pull linuxserver/mariadb:latest
#Save an image to a tar.gz file using gzip
clear
echo "Exporting and compressing images"
docker save portainer/portainer-ce:latest | gzip > 'images/portainer_latest.tar.gz'
docker save docker.io/bitnami/dokuwiki:latest | gzip > 'images/dokuwiki_latest.tar.gz'
docker save pawelmalak/flame:latest | gzip > 'images/flame_latest.tar.gz'
docker save phpipam/phpipam-www:latest | gzip > 'images/phpipam-www_latest.tar.gz'
docker save phpipam/phpipam-cron:latest | gzip > 'images/phpipam-cron_latest.tar.gz'
docker save mariadb:latest | gzip > 'images/mariadb_latest.tar.gz'
docker save linuxserver/snipe-it:latest | gzip > 'images/snipe-it_latest.tar.gz'
docker save linuxserver/mariadb:latest | gzip > 'images/linuxserver_mariadb_latest.tar.gz'