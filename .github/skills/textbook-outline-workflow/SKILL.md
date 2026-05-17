---
name: textbook-outline-workflow
description: "用于教材目录建模阶段的工作流 skill。Use when: 需要基于已有课程 outline.yml 与新增教材目录、前言、序言、章节导读或权威百科页面，先生成大纲计划 plan，经人工确认后再更新课程大纲、section 目录骨架和 section_scope.yml。Do not use for: 正文知识点提取、课程总结、Lean4 形式化、LaTeX 写作。"
---

# Textbook Outline Workflow

## Purpose

这个 skill 为 `textbooks-outline` agent 提供稳定的执行流程，确保第一步先规划、后执行，并且只做教材目录建模，不越界到后续阶段。

## When To Use

在以下情形使用：
- 读取已有课程 `outline.yml` 并评估是否需要修改或补充
- 根据新增教材目录建立或修订课程知识库骨架
- 用权威百科页面补足标准术语和主题边界
- 为 section 与 subsection 设计稳定的命名
- 为每个 section 生成 `section_scope.yml`
- 判断一个 subsection 是否适合作为后续 `keypoints-extraction` 的最小任务单元
- 在真正写入前先输出增量 `plan`

在以下情形不要使用：
- 需要读取教材正文
- 需要提取定义、定理、命题、例子
- 需要生成 `summary.md`、`review_list.md`
- 需要编写 Lean4 或 LaTeX

## Workflow

1. 确认调用输入完整：`mode`、`part_id`、`part_name`、`chapter_id`、`chapter_name`、`outline_file`，以及本轮新增的 `main_textbook`、`reference_textbooks`、`encyclopedia_urls`。
2. 先读取已有课程 `outline.yml`，判断是空骨架还是已有人工整理内容。
3. 再读取本轮新增的教材目录、前言、序言、章节导读，以及可选的权威百科页面。
4. 以已有 `outline.yml` 为基线，比较新来源是否支持保留、修改、补充、新增或合并既有结构。
5. 输出增量 `plan`，列出建议保留、修改、补充、新增、合并或删除的 section 与 subsection。
6. 若 `mode` 为 `plan`，到此结束，不执行写入。
7. 若 `mode` 为 `apply`，先确认用户已经接受本轮 `plan`。
8. 在确认后的结构上更新课程级 `outline.yml`、全局 `knowledge/outline.yml`、section 目录和 `section_scope.yml`。
9. 在结束前执行验收清单。

## Granularity Rules

- 一个 section 应对应一个相对稳定的写作主题。
- 一个 subsection 应对应后续一次可独立执行的正文抽取任务。
- 若 subsection 还需要依赖百科页面补充术语或主题边界，应在 `section_scope.yml` 中把该页面登记为 `sources`。
- 不要让一个 subsection 横跨多个证明体系或多个弱相关主题。
- 如果教材目录过粗，可以借助章节导读细分；如果仍无法稳定细分，应停止并请求人工指定。
- 已有且合理的 `section_id`、`subsection_id` 应优先保留，避免频繁重命名。

## Plan Rules

- 默认行为是输出 `plan`，而不是直接执行。
- 只要本轮涉及新增、删除、合并、重命名 section 或 subsection，就必须等待人工确认。
- 即使只是补充一本新参考书或一个网页链接，也要先对现有大纲做增量计划。
- `apply` 只能落实已经确认过的计划；如果输入变化导致计划变化，应回退到新的 `plan`。

## Acceptance Checklist

在完成编辑前逐项检查：
- 是否只使用了允许读取的材料
- 在 `plan` 阶段是否只输出了计划而没有写文件
- 在 `apply` 阶段是否更新了 `knowledge/outline.yml`
- 在 `apply` 阶段是否生成或更新了课程级 `outline.yml`
- 在 `apply` 阶段是否为受影响的 section 创建了 `section_scope.yml`
- 是否避免写入知识点、总结、Lean4、LaTeX 内容
- 是否列出了需要人工复核的歧义项

## Common Failure Modes

- 把教材正文中的定义或定理提前写入第一步产物
- 在未确认前直接改动现有 `outline.yml`
- 把百科页面当成主线教材，导致课程结构偏离教材
- 用顺序编号代替稳定的 section 或 subsection 标识
- 把多个弱相关主题强行合并到同一个 subsection
- 没有给出页码范围，导致后续正文提取无法切片
- 修改了课程总结或代码目录，破坏阶段边界