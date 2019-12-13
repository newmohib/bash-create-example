

#!/bin/sh
echo "Hello world" 

#git -C ./abbvie-piap checkout stage-docker;

read -p "git pull? (Y/N) " yn

case $yn in
  [Yy]* ) git -C ./abbvie-piap/ pull; break;;
  [Nn]* ) break;;
esac

docker build -t newmohib/abbvie-piap-api ./abbvie-piap
docker images

docker save -o ./abbvie-piap-api.tar newmohib/abbvie-piap-api

docker load -i ./abbvie-piap-api.tar

docker run -p 4000:4000 -d newmohib/abbvie-piap-api

read -p "Server Run .." yn
read -p "Press Any Key .." yn