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

read -p "Server Run .." yn