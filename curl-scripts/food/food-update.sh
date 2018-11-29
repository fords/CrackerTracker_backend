
curl --include --request PATCH "http://localhost:4741/users/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "users": {
      "name": "'"${name}"'",
      "breakfast": "'"${breakfast}"'",
      "lunch": "'"${lunch}"'",
      "dinner": "'"${dinner}"'",
      "calendar": "'"${calendar}"'"
    }
  }'
