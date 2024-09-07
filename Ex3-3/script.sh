#!/bin/sh

gh repo clone $1
repo=$1
stripped_repo="${repo#*/}"
cd $stripped_repo

sudo docker build . -t $stripped_repo
sudo docker login
sudo docker tag $stripped_repo $2
sudo docker push $2
