cp /etc/nginx/additional_conf/ssl/bbb.pem /usr/local/share/ca-certificates/CA.crt 
update-ca-certificates 
rm -R /usr/src/app/app
rm -R /usr/src/app/config
ln -sf /etc/nginx/additional_conf/src/greenlight/app /usr/src/app/
ln -sf /etc/nginx/additional_conf/src/greenlight/config /usr/src/app/
