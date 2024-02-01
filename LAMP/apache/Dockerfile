
##############################################################################################
###> New Dockerfile  -> Richard Eric Walts as eric ---> 2023-06-24_15:16:37 init <<<
##############################################################################################
###> Apache2 container Ubuntu
#_#>

FROM ubuntu/apache2

WORKDIR .
###> install app dependencies
RUN apt-get update && apt-get -y install apt-utils php8.2 php8.2-gd php8.2-mysql libapache2-mod-php8.2
###> install php
#RUN "apt-get -y install php8.2 php8.2-gd php8.2-mysql libapache2-mod-php8.2"

###> copy configuration
#COPY /var/docker/web/apache/01-smm.conf /etc/apache2/sites-enabled/01-south-main-memorial.conf

###> copy php content to webroot
COPY www/html/index.php /var/www/html/index.php

###>  expose ports
EXPOSE 80 443
 
