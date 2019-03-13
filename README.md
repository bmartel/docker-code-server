# Code Server + Letsencrypt

## Clone project

>  git clone https://github.com/bmartel/docker-code-server.git && cd docker-code-server

## Environment file

>  cp .env.example .env

Modify the env vars, specifying your letsencrypt email `EMAIL`, letsencrypt domain `URL`, dns validation provider `DNSPLUGIN`, and the password `PASSWORD` you want to use for the code-server instance.

## Dns config file

>  cp config/dns-conf/cloudflare.ini.sample config/dns-conf/cloudlare.ini

Update the details of the ini file you choose, ensure it matches your dns validation provider chosen and contains valid
credentials.

## Dns record

On your chosen dns provider, add an `A` record pointing to a subdomain you want to expose the code-server service on and
set it to the ip of the server you will be running the service.

>  A   ide.your.domain   1.1.1.1

## Proxy config file

>  cp config/nginx/proxy-confs/code-server.subdomain.conf.sample config/nginx/proxy-confs/code-server.subdomain.conf

Update the `server_name` to match whatever `A` record you have registered on your chosen dns provider.

## Bring up the services

>  docker-compose up -d

