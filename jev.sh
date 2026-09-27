curl "$AI_GATEWAY_BASE_URL/v1/systemone" \
  -H "Authorization: Bearer $AI_GATEWAY_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "typesafe/jev-latest",
    "state": "商品が届きません。明日までに必要です。",
    "questions": {
      "urgent": {
        "type": "noul",
        "instructions": "至急対応が必要ですか？",
        "criteria": {
          "true": "明日までに対応が必要",
          "false": "期限に余裕がある"
        }
      },
      "department": {
        "type": "choice",
        "instructions": "どの担当に回すべきですか？",
        "criteria": {
          "delivery": "配送に関する問い合わせ",
          "other": null
        }
      },
      "priority": {
        "type": "score",
        "instructions": "対応の優先度を評価してください。",
        "criteria": [
          "通常対応でよい",
          "早めの対応が必要",
          "至急対応が必要"
        ]
      }
    }
  }'
