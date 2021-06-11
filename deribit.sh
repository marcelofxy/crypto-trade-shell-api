#!/bin/bash

id=miurei8g
secret=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
uri="https://www.deribit.com/api/v2/public/auth?client_id=$id&client_secret=$secret&grant_type=client_credentials"
instrumento="https://www.deribit.com/api/v2/private/buy?amount=1&instrument_name=ETH-16AUG20-425-P&label=market0000234&type=market"

bearer=$(curl -X GET $uri -H "Content-Type: application/json")

echo $bearer
echo $instrumento

curl -X GET $instrumento \
-H "Authorization: Bearer $bearer" \
-H "Content-Type: application/json"
