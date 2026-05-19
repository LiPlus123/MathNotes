---
name: textbook-outline-schema
description: "用于教材目录建模阶段的 YAML/Markdown 契约 skill。Use when: 需要生成或校验 knowledge/outline.yml、part_outline.yml、chapter_outline.yml、section_outline.yml、section_scope.yml、chapter_outline.md，以及 plan 阶段输出的结构、字段、命名和来源信息。Do not use for: 知识点 schema、Lean4 schema、LaTeX TODO schema。"
---

# Textbook Outline Schema

## Purpose

这个 skill 约束 `textbooks-outline` 的输出文件格式，避免不同课程生成不兼容的目录结构，并约束 `plan` 阶段与 `apply` 阶段的接口。

## Plan Contract

`plan` 阶段建议至少输出以下结构：

```yaml
mode: plan
target_level: part
keep:
  - level: chapter
    id: existing_chapter
modify:
  - level: chapter
    from: old_chapter_id
    to: new_chapter_id
    reason: 命名、顺序或边界需要调整
add:
  - level: chapter
    id: new_chapter
merge_or_remove:
  - level: chapter
    target: old_chapter_id
    action: merge
proposed_outline:
  focus: 先修逻辑与覆盖面
  structure:
    - chapter_id: foundations
      name: 基础章节
      derived_sections:
        - section_id: basic_concepts
affected_files:
  - knowledge/outline.yml
  - knowledge/<part>/part_outline.yml
  - knowledge/<part>/<chapter>/chapter_outline.yml
  - knowledge/<part>/<chapter>/chapter_outline.md
  - knowledge/<part>/<chapter>/<section>/section_outline.yml
  - knowledge/<part>/<chapter>/<section>/section_scope.yml
notes:
  - 这样安排的原因
review_points:
  - 需要人工确认的说明
```

约束：
- `plan` 阶段只描述将要发生的变更，不实际写文件
- `target_level` 只能是 `part` 或 `chapter`
- `modify`、`add`、`merge_or_remove` 任一非空时，都需要人工确认
- `proposed_outline` 必须体现本轮建议结构，而不只是变更清单
- `affected_files` 应尽量具体到会被创建或更新的文件

## Global Outline Schema

文件：`knowledge/outline.yml`

```yaml
part_id:
  name: part 中文名
  chapters:
    - chapter_id:
      name: chapter 中文名
```

约束：
- `part_id`、`chapter_id` 使用英文蛇形命名
- `name` 使用中文正式名称
- 这里只记录课程入口，不展开到 section 级别

## Part Outline Schema

文件：`knowledge/<part>/part_outline.yml`

```yaml
part_id:
  name: part 中文名
  chapters:
    - chapter_id:
      name: chapter 中文名
      summary: 本章在该 part 中的定位
```

约束：
- `summary` 建议简短说明 chapter 的功能定位
- 章节顺序应反映学习依赖和叙述顺序
- 不在该文件中展开到 section 级别

## Chapter Outline Schema

文件：`knowledge/<part>/<chapter>/chapter_outline.yml`

```yaml
chapter_id:
  name: chapter 中文名
  sections:
    - section_id:
      name: section 中文名
      summary: 本节在本章中的重点
```

约束：
- `section_id` 必须稳定，不使用顺序编号
- `summary` 建议点明该 section 的主题边界或作用
- 章节文件只展开到 section 级别

## Section Outline Schema

文件：`knowledge/<part>/<chapter>/<section>/section_outline.yml`

```yaml
section_id:
  name: section 中文名
  subsections:
    - subsection_id:
      name: subsection 中文名
      summary: 本小节的主题边界
```

约束：
- `subsection_id` 必须稳定，不使用顺序编号
- 一个 `subsection_id` 只能归属于一个 `section_id`
- `summary` 应描述主题边界，而不是简单重复标题

## Section Scope Schema

文件：`knowledge/<part>/<chapter>/<section>/section_scope.yml`

```yaml
subsection_id:
  description: 该 subsection 的内容简介
  sources:
    - path: textbooks/<course_path>/<textbook_name>/
      source_type: textbook
      pages: 12-18
      parts: 第 1.2 节 计数原理
      role: main
    - path: https://example.org/topic
      source_type: encyclopedia
      parts: Terminology and overview
      role: reference
  notes_for_extraction: 后续正文提取时的边界说明
```

字段约束：
- `description` 必填，描述主题边界而不是抄教材标题
- `sources` 必填，至少一项
- `path` 可以指向 `textbooks/` 下的具体教材路径，也可以是权威百科页面链接
- `source_type` 只能是 `textbook` 或 `encyclopedia`
- 教材来源建议提供 `pages` 和 `parts`；若当前轮次只有目录信息，允许暂缺 `pages`，但必须在 `notes_for_extraction` 中明确待补充
- 百科页面来源必须提供 `parts`
- `role` 由 agent 综合判断，只能是 `main` 或 `reference`
- `notes_for_extraction` 选填，但建议说明后续正文抽取的边界或特殊注意事项

## Chapter Outline Markdown Contract

文件：`knowledge/<part>/<chapter>/chapter_outline.md`

至少应包含以下小节：
- 本章定位
- 章节划分理由
- 各 section 重点
- 先后顺序说明
- 待人工复核项

要求：
- 使用简洁 Markdown，不写知识点正文
- 重点解释为什么这样划分，而不是重复 YAML 字段
- 只讨论 chapter 与 sections 的结构和重点

## Naming Guidance

- 优先使用教材主题词作为 id 基础，例如 `counting_principles`
- 避免过短、过泛或含糊的 id，例如 `basic`, `intro`, `chapter_1`, `section_1`
- 同一课程内的 chapter、section 与 subsection 命名应彼此风格一致
- 若已有骨架中已有稳定 id，新增来源不应轻易破坏它们

## Validation Heuristics

生成后至少检查以下内容：
- 全局 outline 是否包含课程入口
- `part_outline.yml` 是否覆盖目标 part 下的 chapters
- `chapter_outline.yml` 是否覆盖目标 chapter 下的 sections
- `section_outline.yml` 是否覆盖目标 section 下的 subsections
- 每个受影响的 chapter 是否存在 `chapter_outline.md`
- 每个受影响的 section 是否都存在目录与 `section_scope.yml`
- 每个 subsection 是否都至少关联一个来源
- 若登记了百科页面来源，是否给出了可定位的 `parts`
- 若本轮处于 `plan` 阶段，是否没有发生文件写入