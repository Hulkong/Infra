#!/bin/bash

sleep 30 | echo Sleeping

mongo admin -u root -p "Input the Password!!!" --host mongo1 --port 27017 replicaSet.js

sleep 20 | echo Sleeping

mongo admin -u root -p "Input the Password!!!" --host mongo1 --port 27017 setUsers.js