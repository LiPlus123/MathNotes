---
name: course-summarizer-workflow
description: "用于课程总结阶段的工作流 skill。Use when: 需要在第二步所有 subsection 知识提取完成后，读取课程知识点、生成 review_list.md 与 summary.md，并回填知识点关联关系。Do not use for: 教材目录建模、正文知识点提取、Lean4 形式化、LaTeX 正式写作。"
---

# Course Summarizer Workflow

## Purpose

这个 skill 为 `course-summarizer` agent 提供稳定的第三步执行流程，确保课程总结只在第二步全部完成后执行，并且只基于知识库产物而不是教材原文。

## When To Use

在以下情形使用：
- 课程的所有 subsection 都已经完成知识点提取
- 需要汇总本课程全部知识点
- 需要生成课程 `review_list.md` 和 `summary.md`
- 需要回填知识点之间的关联关系

在以下情形不要使用：
- 还有 subsection 尚未完成第二步知识点抽取
- 需要直接阅读教材原文
- 需要形式化 Lean4 证明
- 需要写 LaTeX 正式章节内容

## Workflow

1. 读取课程级 `outline.yml`，枚举所有 section 与 subsection。
2. 检查每个 subsection 是否已经有知识点文件，并在 `knowledge/keypoints.yml` 中有索引。
3. 若存在未完成项，停止执行并列出缺失项。
4. 读取本课程全部知识点文件，整理主题结构与依赖关系。
5. 读取其他课程的 `summary.md`，识别跨课程重复、冲突和关联。
6. 生成或更新 `review_list.md`。
7. 生成或更新 `summary.md`。
8. 在本课程知识点文件中回填明确的 `dependent_keypoints` 与 `related_keypoints`。

## Gating Rules

- 第三步不是边抽取边总结的增量任务，而是在第二步结束后的收束任务。
- 只要有一个 subsection 未完成抽取，就必须停止第三步。
- 未完成时只能输出缺失项清单，不能先写课程总结占位稿。

## Quality Rules

- 只基于知识库文件和其他课程 summary 进行判断。
- 不把不确定的重复或冲突写成既定事实。
- 给出的处理建议必须可执行，例如重命名、合并、保留并建立关系。
- 关系回填应保守，只写证据充分的直接关系。

## Acceptance Checklist

在完成编辑前逐项检查：
- 是否验证了所有 subsection 的抽取完成状态
- 是否生成或更新了 `review_list.md`
- 是否生成或更新了 `summary.md`
- 是否只修改了本课程范围内的知识库文件
- 是否避免读取教材原文、Lean4、LaTeX 内容

## Common Failure Modes

- 第二步未完成就提前写第三步总结
- 只写 `summary.md`，忘记生成 `review_list.md`
- 修改了其他课程的知识点文件
- 把跨课程相似概念误判为完全重复
- 在没有充分依据时随意回填知识点关系