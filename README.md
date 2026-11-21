# 模汇云 API · 接入示例与排障

[English summary below](#english)

模汇云（`api.whenitreset.com`）是一个 **OpenAI 兼容**的大模型 API 网关：把 DeepSeek、GLM（智谱）、Qwen（通义）、Doubao（豆包）等模型统一到一个接口，按量计费，用你熟悉的 OpenAI SDK 或任何兼容客户端直接调用。

- 官网：https://api.whenitreset.com
- 价目广场（实时价格）：https://console.whenitreset.com/models-plaza/
- 接入文档：https://api.whenitreset.com/docs

> 价格以价目广场实时显示为准，下表仅为模型 ID 与能力索引，**不作为报价**。截至 2026-11-21。

## 在售模型 ID

| 模型 ID | 类型 | 说明 |
|---|---|---|
| `deepseek-v4.1-flash` | 文本 | DeepSeek，跟随上游最新快照 |
| `deepseek-v4.1-flash-261017` | 文本 | DeepSeek，锁定 261017 快照（推荐固定版本） |
| `glm-5.3` | 文本 | 智谱 GLM-5.3，**纯文本，不能读图** |
| `glm-5.3-flash` | 文本 / 读图 | 智谱 GLM-5.3-Flash，支持图片输入 |
| `qwen3.7-max` | 文本 | 通义千问 3.7 Max |
| `doubao-seedream-5.5` | 图片 | 豆包 Seedream 5.5 生图 |
| `doubao-seedream-5.0-pro` | 图片 | 豆包 Seedream 5.0 Pro |
| `doubao-seedream-5-0-flash` | 图片 | 豆包 Seedream 5.0 Flash |
| `doubao-seedream-4.0` | 图片 | 豆包 Seedream 4.0 |
| `doubao-seedance-2-5-260628` | 视频 | 豆包 Seedance 2.5 |
| `doubao-seedance-2-0-260128` | 视频 | 豆包 Seedance 2.0 |
| `doubao-seedance-2-0-fast-260128` | 视频 | 豆包 Seedance 2.0 fast |
| `doubao-seedance-2-0-mini-260615` | 视频 | 豆包 Seedance 2.0 mini |
| `seed-audio-1.0` | 音频 | Seed Audio 1.0 |

## 三步接入

1. 注册并在控制台创建 API Key：https://console.whenitreset.com
2. Base URL 填 `https://api.whenitreset.com/v1`
3. 模型填上表中的**完整 ID**（保留日期后缀）

```bash
curl https://api.whenitreset.com/v1/chat/completions \
  -H "Authorization: Bearer sk-YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "model": "deepseek-v4.1-flash-261017",
    "messages": [{"role": "user", "content": "你好"}]
  }'
```

各客户端的最小配置见 [`examples/`](examples/)，常见报错见 [`docs/TROUBLESHOOTING.md`](docs/TROUBLESHOOTING.md)。

## English

Mohuiyun (`api.whenitreset.com`) is an OpenAI-compatible gateway for DeepSeek, GLM, Qwen and Doubao models, billed per use. Point any OpenAI-compatible client at `https://api.whenitreset.com/v1` with your key and one of the exact model IDs above. Live pricing: https://console.whenitreset.com/models-plaza/ (the table above is an ID index, not a price quote; as of 2026-11-21).
