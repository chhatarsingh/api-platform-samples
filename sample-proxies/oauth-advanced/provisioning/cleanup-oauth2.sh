#!/bin/sh

source ../../../setup/setenv.sh

echo "Enter your password for the Apigee Enterprise organization, followed by [ENTER]:"

read -s password

echo using $username and $org

echo "Deleting Apps"

curl -u $username:$password $url/v1/o/$org/developers/oauth2dev@example.com/apps/oauth2-app -X DELETE

echo "Deleting Developers"

curl -u $username:$password $url/v1/o/$org/developers/oauth2dev@example.com -X DELETE

echo "Deleting Products"

curl -u $username:$password $url/v1/o/$org/apiproducts/oauth2-product -X DELETE


echo "\nCleanup Completed\n"
