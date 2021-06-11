#!/bin/bash

## previously INSTALL uuidgen on linux
uid=$(uuidgen -t | cut -c 1-32)

## insert key:secret
curl -X PUT -u "XXXXXXXXXXXXXXXXXXXXXXXXXX:XXXXXXXXXXXXXXXXXXXXXXXXXXX" \
    "https://api.pro.changelly.com/api/2/order/$uid" \
    -d 'symbol=ETHUSDT&side=sell&type=market&quantity=1'
