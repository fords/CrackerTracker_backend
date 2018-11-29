#!/bin/bash

curl --include --request POST "http://localhost:4741/foods" \
  --header "Content-Type: application/json" \
  --data '{
    "users": {
      "name": "'"${name}"'",
      "breakfast": "'"${breakfast}"'",
      "lunc": "'"${lunch}"'",
      "dinner": "'"${dinner}"'",
      "calendar": "'"${calendar}"'"
    }
  }'
