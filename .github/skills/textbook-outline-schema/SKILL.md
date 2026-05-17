---
name: textbook-outline-schema
description: "用于教材目录建模阶段的 YAML 契约 skill。Use when: 需要生成或校验 knowledge/outline.yml、课程 outline.yml、section_scope.yml，以及 plan 阶段输出的结构、字段、命名和来源信息。Do not use for: 知识点 schema、Lean4 schema、LaTeX TODO schema。"
---

# Textbook Outline Schema

## Purpose

这个 skill 约束 `textbooks-outline` 的输出文件格式，避免不同课程生成不兼容的目录结构，并约束 `plan` 阶段与 `apply` 阶段的接口。

## Plan Contract

`plan` 阶段建议至少输出以下结构：

```yaml
mode: plan
keep:
  - section_id: existing_section
modify:
  - from: old_section_id
    to: new_section_id
    reason: 命名或边界需要调整
add:
  - section_id: new_section
merge_or_remove:
  - target: old_section_id
    action: merge
affected_files:
  - knowledge/<part>/<chapter>/outline.yml
  - knowledge/<part>/<chapter>/<section>/section_scope.yml
notes:
  - 需要人工确认的说明
```

约束：
- `plan` 阶段只描述将要发生的变更，不实际写文件
- `modify`、`add`、`merge_or_remove` 任一非空时，都需要人工确认
- `affected_files` 应尽量具体到会被创建或更新的文件

## Global Outline Schema

文件：`knowledge/outline.yml`

- `path` 统一表示教材来源或网页来源
- `source_type` 只能是 `textbook` 或 `encyclopedia`
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

## Chapter Outline Schema

文件：`knowledge/<part>/<chapter>/outline.yml`

```yaml
chapter_id:
  name: chapter 中文名
  sections:
    - section_id:
      name: section 中文名
      subsections:
        - subsection_id:
          name: subsection 中文名
        - subsection_id:
          name: subsection 中文名
```

约束：
- `section_id` 和 `subsection_id` 必须稳定，不使用顺序编号
- 一个 `subsection_id` 只能归属于一个 `section_id`
- `name` 应与教材术语保持一致，必要时做轻微规范化

## Section Scope Schema

文件：`knowledge/<part>/<chapter>/<section>/section_scope.yml`

```yaml
subsection_id:
  description: 该 subsection 的内容简介
  sources:
    - path: textbooks/<course_path>/<textbook_name>/toc.md
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
- `folder` 可以指向 `textbooks/` 下的具体教材文件夹，也可以是权威百科页面链接
- 教材来源必须提供 `pages`
- 百科页面来源必须提供 `parts`
- 教材来源建议同时提供 `parts`，便于后续定位
- `role` 只能是 `main` 或 `reference`
- `notes_for_extraction` 选填，但建议说明后续正文抽取的边界或特殊注意事项

## Naming Guidance

- 优先使用教材主题词作为 id 基础，例如 `counting_principles`
- 避免过短、过泛或含糊的 id，例如 `basic`, `intro`, `section_1`
- 同一课程内的 section 与 subsection 命名应彼此风格一致
- 若已有大纲中已有稳定 id，新增来源不应轻易破坏它们

## Validation Heuristics

生成后至少检查以下内容：
- 全局 outline 是否包含课程入口
- 课程级 outline 是否覆盖所有 section 与 subsection
- 每个 section 是否都存在目录与 `section_scope.yml`
- 每个 subsection 是否都至少关联一本教材来源
- 若登记了百科页面来源，是否给出了可定位的 `parts`
- 若本轮处于 `plan` 阶段，是否没有发生文件写入