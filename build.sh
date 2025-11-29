#!/usr/bin/env bash

#build image
docker build --tag=clickecho .

#list docker image ls
docker image ls 

#Run flask app
#docker run -p 8000:80 clickhello
docker run -it clickecho python app.py --name "Big John"