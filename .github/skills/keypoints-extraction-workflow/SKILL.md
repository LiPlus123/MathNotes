---
name: keypoints-extraction-workflow
description: "用于知识点提取阶段的工作流 skill。Use when: 需要根据 section_scope.yml、教材正文范围和已登记的权威百科页面，以 section 为单位抽取知识点、维护 knowledge/keypoints.yml，并生成面向人类阅读的 section_summary.md。Do not use for: 教材目录建模、课程总结、Lean4 形式化、LaTeX 正式写作。"
---

# Keypoints Extraction Workflow

## Purpose

这个 skill 为 `keypoints-extraction` agent 提供稳定的第二步执行流程，确保正文抽取工作以一个 section 为单位完成，并把结果写成可复用的知识点 YAML 与供人类阅读的小节总结。

## When To Use

在以下情形使用：
- 已经完成第一步目录建模
- 需要根据 `section_scope.yml` 读取指定正文范围
- 需要根据 `section_scope.yml` 中登记的权威百科页面补足术语或抽取基础知识点
- 需要为某个 section 下的各个 subsection 生成知识点文件
- 需要更新 `knowledge/keypoints.yml` 索引
- 需要生成该 section 的 `section_summary.md`

在以下情形不要使用：
- 只处理教材目录、前言或章节导读
- 需要生成 `summary.md` 或 `review_list.md`
- 需要形式化 Lean4 证明
- 需要写 LaTeX 正式章节内容

## Workflow

1. 先读取目标课程 `outline.yml` 与目标 section 的 `section_scope.yml`。
2. 确认本次只处理一个 `section_id`，并梳理该 section 下所有 subsection 的允许读取范围与已登记百科页面部分。
3. 按 subsection 顺序阅读主线教材对应页码；必要时再读参考教材与已登记百科页面的对应部分。
4. 识别稳定、重要、可复用的知识点，排除解释性段落和证明细节。
5. 为每个知识点生成稳定的 `keypoint_id` 和目标文件名，并写入所属 subsection 目录。
6. 更新 `knowledge/keypoints.yml`。
7. 生成或更新目标 section 的 `section_summary.md`。
8. 列出需要人工复核的冲突、重复或边界问题。

## Granularity Rules

- 最小任务单元是一个 section。
- section 内部的每个知识点仍必须落到明确的 subsection。
- 一个知识点文件只承载一个知识点，不把多个定义或命题堆在同一文件里。
- 证明正文、历史背景、动机说明通常不应单独抽取为知识点。
- 若百科页面只提供背景介绍而不提供稳定陈述，不应仅凭背景段落抽取知识点。
- 如果一个结论只是教材中的随口推论、没有稳定复用价值，可以不抽取。

## Quality Rules

- 优先忠实于主线教材的陈述，再做轻度规范化。
- 不编造教材中不存在的命题或定义。
- 已登记的权威百科页面可作为补充抽取来源，但不能替代主线教材决定课程边界。
- `latex` 字段只保留知识点陈述，不写完整证明。
- `section_summary.md` 应总结 section 内部结构和知识脉络，不复制知识点 YAML，也不写课程级总结。

## Acceptance Checklist

在完成编辑前逐项检查：
- 是否只处理了一个 section
- 是否只读取了该 section 下允许的正文范围
- 是否更新了目标 section 下各 subsection 目录的知识点文件
- 是否更新了 `knowledge/keypoints.yml`
- 是否生成了 `section_summary.md`
- 是否为每个知识点记录了来源教材和页码
- 是否避免写入课程总结、Lean4、LaTeX 正式文档内容

## Common Failure Modes

- 跨多个 section 读取正文，导致抽取边界失控
- 以 section 为单位执行，却没有把知识点落回具体 subsection
- 用顺序编号给知识点命名，后续无法稳定引用
- 把证明过程或长解释段落混入 `latex` 字段
- 更新了知识点文件，但忘记同步 `knowledge/keypoints.yml`
- 写了 `section_summary.md`，但没有真实更新对应的知识点文件
- 读取了任意网页，却没有先把该页面登记进 `section_scope.yml`
- 引入了教材里没有出现的术语或结论