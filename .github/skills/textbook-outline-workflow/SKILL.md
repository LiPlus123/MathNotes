---
name: textbook-outline-workflow
description: "用于教材目录建模阶段的工作流 skill。Use when: 需要综合多本教材目录类材料和权威百科页面，以 part 或 chapter 为目标层级先生成大纲计划与草案，经人工确认后再更新 knowledge/outline.yml、part_outline.yml、chapter_outline.yml、section_outline.yml、section_scope.yml 和 chapter_outline.md。Do not use for: 正文知识点提取、课程总结、Lean4 形式化、LaTeX 写作。"
---

# Textbook Outline Workflow

## Purpose

这个 skill 为 `textbooks-outline` agent 提供稳定的执行流程，确保第一步始终先规划、后执行，并且只做教材目录建模，不越界到后续阶段。

## When To Use

在以下情形使用：
- 读取已有的全局索引与 outline 骨架文件，评估是否需要修改或补充
- 根据多本教材目录、前言、序言、章节导读建立或修订课程知识库骨架
- 用权威百科页面补足标准术语、主题边界和编排顺序
- 以 `part` 或 `chapter` 为目标层级输出建议大纲
- 为 chapter、section、subsection 设计稳定命名并落地目录骨架
- 为每个受影响的 chapter 生成 `chapter_outline.md`
- 为每个受影响的 section 生成 `section_outline.yml` 与 `section_scope.yml`
- 在真正写入前先输出增量 `plan`

在以下情形不要使用：
- 需要读取教材正文
- 需要提取定义、定理、命题、例子
- 需要生成 `summary.md`、`review_list.md`
- 需要编写 Lean4 或 LaTeX
- 用户要整理的是 `section` 或 `subsection` 层级的大纲

## Workflow

1. 确认调用输入完整：`mode`、`target_level`、`part_id`、`part_name`、本轮新增的 `source_materials`，以及在 `target_level=chapter` 时所需的 `chapter_id`、`chapter_name`。
2. 先读取既有骨架文件：至少包括 `knowledge/outline.yml`，并根据目标范围读取 `part_outline.yml`、`chapter_outline.yml`、`section_outline.yml`、已有 `section_scope.yml` 与相关目录结构。
3. 再读取本轮新增的全部教材目录类材料与权威百科页面，不预设主线教材或参考教材。
4. 以既有骨架为基线，比较新来源之间在主题边界、章节顺序、覆盖范围上的共识与冲突。
5. 综合给出一版建议大纲，优先保证先修逻辑、术语稳定性和覆盖面，并显式指出将影响的下层骨架。
6. 输出增量 `plan`，列出建议保留、修改、补充、新增、合并或删除的项，以及会被创建或更新的文件。
7. 若 `mode` 为 `plan`，到此结束，不执行写入。
8. 若 `mode` 为 `apply`，先确认用户已经接受本轮 `plan`；若输入来源或建议结构变化，回退到新的 `plan`。
9. 在确认后的结构上更新 `knowledge/outline.yml`、`part_outline.yml`、`chapter_outline.yml`、`section_outline.yml`、`section_scope.yml` 和 `chapter_outline.md`，并补齐目录骨架。
10. 在结束前执行验收清单。

## Granularity Rules

- 用户输入的目标层级只能是 `part` 或 `chapter`。
- `part` 级任务的直接输出重点是 chapters 的组织；但在 `apply` 阶段仍需为受影响的 chapters 派生 section 与 subsection 骨架。
- `chapter` 级任务的直接输出重点是 sections 的组织；但在 `apply` 阶段仍需为受影响的 sections 派生 subsection 骨架。
- 一个 section 应对应一个相对稳定的写作主题。
- 一个 subsection 应对应后续一次可独立执行的正文抽取任务。
- 若 subsection 还需要依赖百科页面补充术语或主题边界，应在 `section_scope.yml` 中把该页面登记为 `sources`。
- 不要让一个 subsection 横跨多个弱相关主题。
- 如果目录材料过粗，可以借助章节导读细分；如果仍无法稳定细分，应停止并请求人工指定。
- 已有且合理的 `chapter_id`、`section_id`、`subsection_id` 应优先保留，避免频繁重命名。

## Source Synthesis Rules

- 不再要求用户指定主线教材和参考教材，所有来源先平等纳入比较。
- 规划结构时，优先采用多个来源都支持的主干顺序；对差异部分，再结合术语规范性和后续教学顺序做判断。
- 百科页面只能作为补足标准术语、主题边界和命名的一般性参考，不能单独压过教材目录形成主结构。
- 若不同来源冲突明显，必须在 `plan` 中列出取舍理由与待确认点，而不是静默选择其一。

## Plan Rules

- 默认行为是输出 `plan`，而不是直接执行。
- `plan` 中除了变更清单外，还应给出一版建议大纲和简要组织理由。
- 只要本轮涉及新增、删除、合并、重命名或重排 chapter、section、subsection，就必须等待人工确认。
- 即使只是补充一本新教材目录或一个网页链接，也要先对现有骨架做增量计划。
- `apply` 只能落实已经确认过的计划；如果输入变化导致计划变化，应回退到新的 `plan`。

## Acceptance Checklist

在完成编辑前逐项检查：
- 是否只使用了允许读取的材料
- 在 `plan` 阶段是否只输出了计划和草案而没有写文件
- 在 `apply` 阶段是否更新了 `knowledge/outline.yml`
- 在 `apply` 阶段是否生成或更新了 `part_outline.yml`、`chapter_outline.yml`、`section_outline.yml`
- 在 `apply` 阶段是否为受影响的 chapter 生成了 `chapter_outline.md`
- 在 `apply` 阶段是否为受影响的 section 创建了 `section_scope.yml`
- 在 `apply` 阶段是否补齐了 chapter、section、subsection 目录骨架
- 是否避免写入知识点、总结、Lean4、LaTeX 内容
- 是否列出了需要人工复核的歧义项

## Common Failure Modes

- 把教材正文中的定义或定理提前写入第一步产物
- 在未确认前直接改动现有骨架文件
- 仍以“主线教材/参考教材”作为硬编码输入前提
- 把百科页面当成唯一结构依据，导致课程结构偏离教材主流编排
- 只给出 part 或 chapter 的表层大纲，却没有说明落地时会如何影响下层骨架
- 用顺序编号代替稳定的 chapter、section 或 subsection 标识
- 没有给 `section_scope.yml` 留出清晰来源边界，导致后续正文提取无法切片
- 修改了课程总结或代码目录，破坏阶段边界