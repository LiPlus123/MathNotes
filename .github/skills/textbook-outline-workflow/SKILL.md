---
name: textbook-outline-workflow
description: "用于教材目录建模阶段的工作流 skill。Use when: 需要根据教材目录、前言、序言、章节导读或权威百科页面，生成课程大纲、section 目录骨架、section_scope.yml，或重构 textbooks-outline agent 的输出步骤与验收清单。Do not use for: 正文知识点提取、课程总结、Lean4 形式化、LaTeX 写作。"
---

# Textbook Outline Workflow

## Purpose

这个 skill 为 `textbooks-outline` agent 提供稳定的执行流程，确保第一步只做教材目录建模，不越界到后续阶段。

## When To Use

在以下情形使用：
- 根据教材目录建立课程知识库骨架
- 用权威百科页面补足标准术语和主题边界
- 为 section 与 subsection 设计稳定的命名
- 为每个 section 生成 `section_scope.yml`
- 判断一个 subsection 是否适合作为后续 `keypoints-extraction` 的最小任务单元

在以下情形不要使用：
- 需要读取教材正文
- 需要提取定义、定理、命题、例子
- 需要生成 `summary.md`、`review_list.md`
- 需要编写 Lean4 或 LaTeX

## Workflow

1. 确认调用输入完整：`part_id`、`part_name`、`chapter_id`、`chapter_name`、`main_textbook`、`reference_textbooks`、`encyclopedia_urls`。
2. 只读取目录、前言、序言、章节导读，以及可选的权威百科页面。
3. 先划分 section，再划分 subsection；不要直接下钻到知识点。
4. 以主线教材结构为主，参考教材和权威百科页面只用于补足边界、命名和标准术语。
5. 对每个 section 输出目录骨架与 `section_scope.yml`。
6. 更新全局和课程级 outline。
7. 在结束前执行验收清单。

## Granularity Rules

- 一个 section 应对应一个相对稳定的写作主题。
- 一个 subsection 应对应后续一次可独立执行的正文抽取任务。
- 若 subsection 还需要依赖百科页面补充术语或主题边界，应在 `section_scope.yml` 中把该页面登记为 `sources`。
- 不要让一个 subsection 横跨多个证明体系或多个弱相关主题。
- 如果教材目录过粗，可以借助章节导读细分；如果仍无法稳定细分，应停止并请求人工指定。

## Acceptance Checklist

在完成编辑前逐项检查：
- 是否只使用了允许读取的材料
- 是否更新了 `knowledge/outline.yml`
- 是否生成或更新了课程级 `outline.yml`
- 是否为每个 section 创建了 `section_scope.yml`
- 是否避免写入知识点、总结、Lean4、LaTeX 内容
- 是否列出了需要人工复核的歧义项

## Common Failure Modes

- 把教材正文中的定义或定理提前写入第一步产物
- 把百科页面当成主线教材，导致课程结构偏离教材
- 用顺序编号代替稳定的 section 或 subsection 标识
- 把多个弱相关主题强行合并到同一个 subsection
- 没有给出页码范围，导致后续正文提取无法切片
- 修改了课程总结或代码目录，破坏阶段边界