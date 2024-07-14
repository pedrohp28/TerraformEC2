#!/bin/bash

cd /home/ubuntu
echo "<h1>Feito com Terraform com AWS</h1>" > index.html
nohup busybox httpd -f -p 8081 &
