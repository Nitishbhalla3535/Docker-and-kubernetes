FROM centos:8

RUN yum install sudo -y
 
RUN yum install httpd -y

COPY nitz.php /var/www/html

CMD /usr/sbin/httpd -DFOREGROUND

EXPOSE 8080
