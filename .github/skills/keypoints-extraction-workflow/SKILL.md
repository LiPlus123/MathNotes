---
name: keypoints-extraction-workflow
description: "用于知识点提取阶段的工作流 skill。Use when: 需要根据 section_scope.yml 和教材正文范围，按 subsection 粒度抽取知识点、维护 knowledge/keypoints.yml，并约束 keypoints-extraction agent 的执行步骤与边界。Do not use for: 教材目录建模、课程总结、Lean4 形式化、LaTeX 正式写作。"
---

# Keypoints Extraction Workflow

## Purpose

这个 skill 为 `keypoints-extraction` agent 提供稳定的第二步执行流程，确保正文抽取工作只在一个 subsection 内完成，并把结果写成可复用的知识点 YAML。

## When To Use

在以下情形使用：
- 已经完成第一步目录建模
- 需要根据 `section_scope.yml` 读取指定正文范围
- 需要为某个 subsection 生成知识点文件
- 需要更新 `knowledge/keypoints.yml` 索引

在以下情形不要使用：
- 只处理教材目录、前言或章节导读
- 需要生成 `summary.md` 或 `review_list.md`
- 需要形式化 Lean4 证明
- 需要写 LaTeX 正式章节内容

## Workflow

1. 先读取目标课程 `outline.yml` 与目标 section 的 `section_scope.yml`。
2. 确认本次只处理一个 `subsection_id`，并记录允许读取的正文页码范围。
3. 阅读主线教材对应页码；必要时再读参考教材的对应范围。
4. 识别稳定、重要、可复用的知识点，排除解释性段落和证明细节。
5. 为每个知识点生成稳定的 `keypoint_id` 和目标文件名。
6. 创建或更新目标 subsection 目录下的单知识点 YAML。
7. 更新 `knowledge/keypoints.yml`。
8. 列出需要人工复核的冲突、重复或边界问题。

## Granularity Rules

- 最小任务单元是一个 subsection。
- 一个知识点文件只承载一个知识点，不把多个定义或命题堆在同一文件里。
- 证明正文、历史背景、动机说明通常不应单独抽取为知识点。
- 如果一个结论只是教材中的随口推论、没有稳定复用价值，可以不抽取。

## Quality Rules

- 优先忠实于主线教材的陈述，再做轻度规范化。
- 不编造教材中不存在的命题或定义。
- 网络资料只用于校正术语或记号，不得替代教材原文。
- `latex` 字段只保留知识点陈述，不写完整证明。

## Acceptance Checklist

在完成编辑前逐项检查：
- 是否只处理了一个 subsection
- 是否只读取了允许的正文范围
- 是否更新了目标 subsection 目录下的知识点文件
- 是否更新了 `knowledge/keypoints.yml`
- 是否为每个知识点记录了来源教材和页码
- 是否避免写入课程总结、Lean4、LaTeX 正式文档内容

## Common Failure Modes

- 跨多个 subsection 读取正文，导致抽取边界失控
- 用顺序编号给知识点命名，后续无法稳定引用
- 把证明过程或长解释段落混入 `latex` 字段
- 更新了知识点文件，但忘记同步 `knowledge/keypoints.yml`
- 引入了教材里没有出现的术语或结论