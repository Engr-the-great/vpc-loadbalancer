#!/bin/bash
sudo su
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "<html><head><style>body { background-color: purple; color: white; }</style></head><body><h1><p> I love you, my queen. Welcome to my webpage: Year of Completeness.<br> You are redirected to ${HOSTNAME} to see how the load balancer is sharing the traffic.</p></h1></body></html>" > /var/www/html/index.html