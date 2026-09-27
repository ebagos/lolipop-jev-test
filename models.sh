#!/bin/bash
#
curl "$AI_GATEWAY_BASE_URL/v1/models" \
  -H "Authorization: Bearer $AI_GATEWAY_API_KEY" \
  -H "Content-Type: application/json" \
| jq
