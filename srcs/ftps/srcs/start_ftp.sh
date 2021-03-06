#!/bin/sh

adduser -D "admin"
echo "admin:admin" | chpasswd

openssl req -new -x509 -days 365 -nodes -out /etc/ssl/private/vsftpd.cert.pem -keyout /etc/ssl/private/vsftpd.key.pem -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=fbuthod/CN=localhost"
chown root:root /etc/ssl/private/vsftpd.cert.*
chmod 600 /etc/ssl/private/vsftpd.cert.*

