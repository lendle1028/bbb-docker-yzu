FROM jrei/systemd-ubuntu:16.04

RUN apt-get update
RUN apt-get -y install language-pack-en
RUN update-locale LANG=en_US.UTF-8
RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial multiverse" | tee -a /etc/apt/sources.list
RUN apt-get -y install haveged
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:bigbluebutton/support -y
RUN add-apt-repository universe
RUN add-apt-repository ppa:certbot/certbot -y
RUN apt-get -y install certbot
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:bigbluebutton/support -y
RUN LC_ALL=C.UTF-8 add-apt-repository ppa:rmescandon/yq -y
RUN add-apt-repository ppa:libreoffice/ppa
RUN apt-get -y install wget
RUN wget -qO - https://www.mongodb.org/static/pgp/server-3.4.asc | apt-key add -
RUN echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list
RUN apt-get update
RUN apt-get install -y mongodb-org curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get -y install -y nodejs
RUN wget https://ubuntu.bigbluebutton.org/repo/bigbluebutton.asc -O- | apt-key add -
RUN echo "deb https://ubuntu.bigbluebutton.org/xenial-22/ bigbluebutton-xenial main" | tee /etc/apt/sources.list.d/bigbluebutton.list
RUN apt-get update
RUN apt-get -y install bigbluebutton
RUN apt-get -y install bbb-html5
RUN apt-get -y install -f
RUN apt-get -y install net-tools
RUN apt-get -y install nano
RUN rm /etc/nginx/sites-enabled/default
RUN service nginx restart
