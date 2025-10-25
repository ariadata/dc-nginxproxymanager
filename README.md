# docker-compose for nginx-proxy-manager + GeoIP2
[![Build Status](https://raw.githubusercontent.com/ariadata/ariadata-files/main/public-assets/images/ariadata_logo.png)](https://ariadata.co)

![](https://img.shields.io/github/stars/ariadata/dc-nginxproxymanager.svg)
![](https://img.shields.io/github/watchers/ariadata/dc-nginxproxymanager.svg)
![](https://img.shields.io/github/forks/ariadata/dc-nginxproxymanager.svg)

> This needs : [dockerhost](https://github.com/ariadata/dockerhost-sh)
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
bash init.sh
docker-compose up -d
```
#### 4- Goto : 
>  `http://YOUR-IP:8181`
>  
Use these credentials to first login and change it after logged in :

User : `admin@example.com`

Pass : `changeme`

Done!

#### Other Useful Tips! :
> for being behind another nginx, use these in parent nginx config
```conf
proxy_ssl_name $host;
proxy_ssl_server_name on;
```

Get Client Real IP by Header:
```
x-real-ip
```

Added Headers for GeoIP2 `20240426`:
```conf
HTTP_GEOIP2_COUNTRY_CODE
HTTP_GEOIP2_COUNTRY_NAME
HTTP_GEOIP2_CITY_NAME

# Links:
https://download.maxmind.com/app/geoip_download

https://github.com/PrxyHunter/GeoLite2/releases/latest

https://cdn.jsdelivr.net/npm/geolite2-country/
https://cdn.jsdelivr.net/npm/geolite2-city/
https://cdn.jsdelivr.net/npm/geolite2-asn/

```
