cd greenlight_yzu
sudo docker-compose up -d
sudo docker exec -it greenlight_yzu_bbb_1 bbb-conf --restart
cd ..
