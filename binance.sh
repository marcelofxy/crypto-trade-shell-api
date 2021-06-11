#!/bin/bash

pair=ETHUSDT
side=BUY ## OR SELL
quant=1

APIKEY=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
APISECRET=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

RECVWINDOW=50000
RECVWINDOW="recvWindow=$RECVWINDOW"
TIMESTAMP="timestamp=$(( $(date +%s) *1000))"
QUERYSTRING="$RECVWINDOW&$TIMESTAMP"
PRICE=0;

echo $QUERYSTRING

SIGNATURE=$(echo -n "symbol=$pair&side=$side&type=MARKET&quantity=$quant&$RECVWINDOW&$TIMESTAMP" | openssl dgst -sha256 -hmac $APISECRET | cut -c 10-)

SIGNATURE="signature=$SIGNATURE"
echo $SIGNATURE

curl -4 --basic --compressed -H "X-MBX-APIKEY: $APIKEY" -X POST "https://api.binance.com/api/v3/order" -d "symbol=$pair&side=$side&type=MARKET&quantity=$quant&$RECVWINDOW&$TIMESTAMP&$SIGNATURE"
