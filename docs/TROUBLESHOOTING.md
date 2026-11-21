# 常见报错排障

价格与可用模型以价目广场实时显示为准：https://console.whenitreset.com/models-plaza/

## 429 请求过于频繁

上游限流。应急做法：

- 降低并发、按返回的 `Retry-After`（如有）退避，不要立即反复重试；
- 临时切换到同能力的另一个模型继续用，见重置说明：https://www.whenitreset.com/reset

## 401 鉴权失败

- 确认请求头是 `Authorization: Bearer sk-...`，`Bearer` 和 Key 之间有空格；
- Key 没有多余空格或换行；
- 该 Key 没有被禁用或过期。

## 404 模型不存在 / 模型不可用

- 模型 ID 必须用完整值，保留日期后缀，如 `deepseek-v4.1-flash-261017`，不要自造简称；
- `deepseek-chat` 已停用，改用 `deepseek-v4.1-flash-261017`；
- 确认该模型在价目广场当前在售。

## 400 参数错误

- Base URL 用 `https://api.whenitreset.com/v1`。如果客户端会自动追加 `/v1`，就不要重复填，避免 `/v1/v1`；
- 消息格式按 OpenAI 标准：`messages` 为数组，每项含 `role` 和 `content`。

## 传图报错

- `glm-5.3` 是纯文本模型，不能读图，传图会报错；需要识图改用 `glm-5.3-flash`；
- DeepSeek 两款（`deepseek-v4.1-flash`、`deepseek-v4.1-flash-261017`）支持图片输入。

## 图片 / 视频模型

`doubao-seedream-*`（图片）和 `doubao-seedance-*`（视频）、`seed-audio-1.0`（音频）不是纯文本对话模型，调用方式和文本模型不同，见接入文档：https://api.whenitreset.com/docs
