
##############################################################################################
###> New Dockerfile  -> Richard Eric Walts as eric ---> 2023-06-24_15:16:37 init <<<
##############################################################################################
###> Apache2 container Ubuntu
#_#>

FROM ubuntu/apache2
WORKDIR .
###> install app dependencies
RUN apt-get update && apt-get install -y apt-utils
###> install php
RUN "apt-get -y install php8.1 php8.1-gd php8.1-mysql libapache2-mod-php8.1"
###> copy configuration
COPY 01-south-main-memorial.conf /etc/apache2/sites-enabled/01-south-main-memorial.conf
###>
COPY /var/docker/web/apache/index.php /var/www/html/index.php
###>  expose ports
EXPOSE 80, 443
 
