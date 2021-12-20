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
#### 2- Clone these repository to your system :
```sh
git clone https://github.com/ariadata/dc-nginxproxymanager.git
```
#### 3- cd into created folder :
```sh
cd dc-nginxproxymanager
```
#### 4- Run docker-compose file by using :
```sh
docker-compose up -d
```
#### 5- Goto : 
>  `http://YOUR-IP:8181`
>  
Use these credentials to first login and change it after logged in :

User : `admin@example.com`

Pass : `changeme`

Done!
