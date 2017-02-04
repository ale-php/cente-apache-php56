FROM cetres/centos-apache-php-oci
MAINTAINER Alexandre E Souza <alexandre@indev.net.br>
RUN	yum install -y nano
RUN TERM=xterm
RUN echo "ServerName Server" >> /etc/httpd/conf/httpd.conf
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/httpd/conf/httpd.conf
EXPOSE 80 443
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
