---
name: textbook-outline-schema
description: "用于教材目录建模阶段的 YAML 契约 skill。Use when: 需要生成或校验 knowledge/outline.yml、课程 outline.yml、section_scope.yml 的结构、字段、命名和页码来源。Do not use for: 知识点 schema、Lean4 schema、LaTeX TODO schema。"
---

# Textbook Outline Schema

## Purpose

这个 skill 约束 `textbooks-outline` 的输出文件格式，避免不同课程生成不兼容的目录结构。

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
    - path: textbooks/<course_path>/main.pdf
      pages: 12-18
      role: main
    - path: textbooks/<course_path>/reference_1.pdf
      pages: 20-23
      role: reference
  notes_for_extraction: 后续正文提取时的边界说明
```

字段约束：
- `description` 必填，描述主题边界而不是抄教材标题
- `sources` 必填，至少一项
- `path` 必须指向 `textbooks/` 下的具体教材文件
- `pages` 必须是页码范围字符串，便于人工复核
- `role` 只能是 `main` 或 `reference`
- `notes_for_extraction` 选填，但建议说明后续正文抽取的边界或特殊注意事项

## Naming Guidance

- 优先使用教材主题词作为 id 基础，例如 `counting_principles`
- 避免过短、过泛或含糊的 id，例如 `basic`, `intro`, `section_1`
- 同一课程内的 section 与 subsection 命名应彼此风格一致

## Validation Heuristics

生成后至少检查以下内容：
- 全局 outline 是否包含课程入口
- 课程级 outline 是否覆盖所有 section 与 subsection
- 每个 section 是否都存在目录与 `section_scope.yml`
- 每个 subsection 是否都至少关联一本教材和一个页码范围