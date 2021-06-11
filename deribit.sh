bearer=$(curl -X GET "https://www.deribit.com/api/v2/public/auth?client_id=XXXXXXXX&client_secret=XXXXXXXXXXXXXXXXXXXXXX&grant_type=client_credentials" -H "Content-Type: application/json")
instrumento=https://www.deribit.com/api/v2/private/buy?amount=1&instrument_name=ETH-16AUG20-425-P&label=market0000234&type=market

echo $bearer
echo $instrumento

curl -X GET $instrumento \
-H "Authorization: Bearer $bearer" \
-H "Content-Type: application/json"
