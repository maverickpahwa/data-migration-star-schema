
## Install docker with a script
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

#### To run Docker without root privileges
```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
```

#### change its ownership and permissions
```
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R
```

### Configure Docker to start on boot with systemd
```
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

### Configure Docker to not start on boot with systemd
```
sudo systemctl disable docker.service
sudo systemctl disable containerd.service
```

#### Get version
```
docker version
```
