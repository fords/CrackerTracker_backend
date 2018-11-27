#!/bin/bash

curl --include --request PATCH "http://localhost:4741/users/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "users": {
      "name": "'"${FIRST}"'"
    }
  }'
  # "email": "'"${email}"'"
