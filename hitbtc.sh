#!/bin/bash

## previously INSTALL uuidgen on linux
uid=$(uuidgen -t | cut -c 1-32)

## insert key:secret
curl -X PUT -u "XXXXXXXXXXXXXXXXXXXXXXXXXXXX:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" \
    "https://api.hitbtc.com/api/2/order/$uid" \
    -d 'symbol=	LTCUSD&side=sell&quantity=1&type=market'
