clear 
read -p "Please manually backup portainer from the WebGUI.  Only press Enter when you are ready to proceed." -n 1 -r
gunzip -c 'images/portainer_latest.tar.gz' | docker load
docker stop portainer
docker rm portainer
docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest