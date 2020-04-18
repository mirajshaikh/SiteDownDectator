if curl -s --head --request GET https://example.com | grep "200 OK" > /dev/null; then
echo "example.com is UP"
else
echo "example.com is DOWN"
curl -X POST -H 'Content-type: application/json' --data '{"text":"https://example.com is DOWN"}' YourWebHookLink
fi
