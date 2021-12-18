[![Build Status](https://files.ariadata.co/file/ariadata_logo.png)](https://ariadata.co)

docker-compose for using nginx-proxy-manager
> This Needs `git + docker + docker-compose`:
---
#### 1- Create nginx-proxy-manager bridge network :
```sh
docker network create nginx-proxy-manager
```
#### 2- clone these repository to your system :
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
#### 5- goto : 
>  `http://YOUR-IP:8181`
Use these credentials to first login and change it after logged in :
User : `admin@example.com`
Pass : `changeme`

done!