rm /etc/nginx/sites-enabled/default.old 
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/additional_conf/ssl/nginx.key -out /etc/nginx/additional_conf/ssl/nginx.crt
openssl x509 -inform PEM -in /etc/nginx/additional_conf/ssl/nginx.crt > /etc/nginx/additional_conf/ssl/bbb.pem
bbb-conf --setip bbb.imsofa.rocks
ln -sf /etc/nginx/additional_conf/bigbluebutton.properties /usr/share/bbb-web/WEB-INF/classes/
ln -sf /etc/nginx/additional_conf/screenshare.properties /usr/share/red5/webapps/screenshare/WEB-INF/
ln -sf /etc/nginx/additional_conf/config.xml /var/www/bigbluebutton/client/conf/
ln -sf /etc/nginx/additional_conf/settings.yml /usr/share/meteor/bundle/programs/server/assets/app/config/
ln -sf /etc/nginx/additional_conf/bigbluebutton.yml /usr/local/bigbluebutton/core/scripts/
ln -sf /etc/nginx/additional_conf/bigbluebutton /etc/nginx/sites-enabled/
ln -sf /etc/nginx/additional_conf/src/bbb/usr/share/bbb-web/WEB-INF/classes/ /usr/share/bbb-web/WEB-INF/classes/
ln -sf /etc/nginx/additional_conf/src/bbb/bbb-html5.nginx /etc/bigbluebutton/nginx/
rm -R /var/www/bigbluebutton-default/
ln -sf /etc/nginx/additional_conf/src/bbb/bigbluebutton-default/ /var/www/
bbb-conf --restart
