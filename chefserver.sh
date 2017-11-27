                                          34,1          Bot
#!/bin/bash
apt-get update
apt-get -y install curl

# create staging directories
if [ ! -d /drop ]; then
  mkdir /drop
fi
if [ ! -d /downloads ]; then
  mkdir /downloads
fi

# download the Chef server package
if [ ! -f /downloads/chef-server-core_12.16.2_amd64.deb ]; then
  echo "Downloading the Chef server package..."
  wget -nv -P /downloads https://packages.chef.io/files/stable/chef-server/12.16.2/ubuntu/16.04/chef-server-core_12.16.2-1_amd64.deb
fi

# install Chef server
if [ ! $(which chef-server-ctl) ]; then
  echo "Installing Chef server..."
  dpkg -i /downloads/chef-server-core_12.16.2-1_amd64.deb
"ChefServer.sh" [noeol][dos] 34L, 1208C                       1,1           Top
