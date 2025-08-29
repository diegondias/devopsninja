
#!/bin/bash

# Install Rancher Server using Docker
sudo docker run -d --restart=unless-stopped --name rancher -v /opt/rancher:/var/lib/rancher -p 80:80 -p 443:443 --privileged rancher/rancher:v2.12.1