#!/bin/bash

curl --include --request POST "http://localhost:4741/users" \
  --header "Content-Type: application/json" \
  --data '{
    "users": {
      "name": "'"${name}"'"
    }
  }'
# "email": "'"${email}"'"
