#!/bin/sh
# 连通性冒烟测试。把 sk-YOUR_API_KEY 换成你自己的 Key。
curl https://api.whenitreset.com/v1/chat/completions \
  -H "Authorization: Bearer sk-YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "deepseek-v4.1-flash-261017",
    "messages": [{"role": "user", "content": "只回答：收到"}],
    "max_tokens": 8
  }'
