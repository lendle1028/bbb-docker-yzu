cp /etc/nginx/additional_conf/ssl/bbb.pem /usr/local/share/ca-certificates/CA.crt 
update-ca-certificates 
ln -sf /etc/nginx/additional_conf/src/greenlight/app /usr/src/app/app/
ln -sf /etc/nginx/additional_conf/src/greenlight/config /usr/src/app/config/
