# lark-user-feedback

从飞书反馈群提炼用户反馈、主题聚类、优先级和设计机会点，生成带原文跳转和可视化分析的用研报告。

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
