# docker-compose for nginx-proxy-manager
[![Build Status](https://files.ariadata.co/file/ariadata_logo.png)](https://ariadata.co)

![](https://img.shields.io/github/stars/ariadata/dc-nginxproxymanager.svg)
![](https://img.shields.io/github/watchers/ariadata/dc-nginxproxymanager.svg)
![](https://img.shields.io/github/forks/ariadata/dc-nginxproxymanager.svg)

> This needs : dockerhost
>
> Use this command to install :
```sh
bash <(curl -sSL https://git.io/JDM9J)
```
> Or goto [Here](https://github.com/ariadata/ubuntu-sh)
---
#### 1- Create nginx-proxy-manager bridge network :
```sh
docker network create nginx-proxy-manager
```
#### 2- Clone this repo and pull it's docker images:
```sh
git clone https://github.com/ariadata/dc-nginxproxymanager.git nginx-proxy-manager && cd nginx-proxy-manager && rm -rf .git && docker-compose pull
```
#### 3- Run docker-compose file by using :
```sh
docker-compose up -d
```
#### 4- Goto : 
>  `http://YOUR-IP:8181`
>  
Use these credentials to first login and change it after logged in :

User : `admin@example.com`

Pass : `changeme`

Done!
