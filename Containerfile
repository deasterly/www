FROM fedora
RUN yum -y install httpd ; systemctl enable httpd ; yum -y clean all
COPY index.html /var/www/html/
EXPOSE 80
CMD /sbin/init
