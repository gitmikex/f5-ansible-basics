#!/bin/bash
echo "please enter the admin password to copy the ssh cert to the BIGIP"
ssh-copy-id admin@10.1.1.7
ssh admin@10.1.1.7 modify /auth user admin shell bash
ssh admin@10.1.1.7 tmsh modify /sys httpd ssl-port 8443
ssh admin@10.1.1.7 tmsh save /sys config
