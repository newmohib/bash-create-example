#!/bin/sh
echo "abbvie Docker App" 

source abbvieConfig.txt

git clone "$abbviePiap"
git clone "$abbviePiapAdmin"

git -C ./abbvie-piap/ checkout "$abbviePiapBrance"
git -C ./abbvie-piap-admin/ checkout "$abbviePiapAdminBrance"
cd abbvie-piap-admin
npm i

cp .env.example .env

npm run build

cd ../

cd abbvie-piap

cp .env.example .env

cd ../

docker build -t newmohib/abbvie-piap ./abbvie-piap
docker images

docker save -o ./abbvie-piap.tar newmohib/abbvie-piap

docker load -i ./abbvie-piap.tar

docker run -p 3000:3000 -d newmohib/abbvie-piap

read -p "Server Run .." yn