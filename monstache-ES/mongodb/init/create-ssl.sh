#!/bin/bash

openssl rand -base64 700 > /mongo_share/ssl.key

chmod 400 /mongo_share/ssl.key
chown mongodb /mongo_share/ssl.key