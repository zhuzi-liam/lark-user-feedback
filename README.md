# lark-user-feedback

用户反馈常分散在多个反馈群里，人工翻找、去重和归类很费时。这个 Skill 可按群、时间范围和关键词捞取反馈，自动清洗噪音、聚类主题，并生成带原文跳转、可视化分析和设计机会点的用研报告，帮助设计师快速看清用户痛点与下一步方向。

报告中可以生成好看的飞书画板，用来承载一句话结论、主题分布、优先级判断和设计机会点。

## 安装

一键安装：

```bash
curl -fsSL https://raw.githubusercontent.com/easondoittt/lark-user-feedback/main/install-lark-user-feedback.sh | bash
```

也可以手动安装：

```bash
git clone https://github.com/easondoittt/lark-user-feedback.git ~/lark-user-feedback
cd ~/lark-user-feedback
./install-lark-user-feedback.sh
```

## 更新

```bash
cd ~/lark-user-feedback
git pull
```

如果本地用软链接安装，`git pull` 后 Codex 和 Claude Code 会自动读到新版。
