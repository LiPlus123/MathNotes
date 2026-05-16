---
name: course-summarizer-schema
description: "用于课程总结阶段的产物契约 skill。Use when: 需要生成或校验课程 summary.md、review_list.md，以及 course-summarizer 回填知识点关联关系时的输出边界。Do not use for: 课程 outline、section_scope、单知识点抽取、Lean4 TODO、LaTeX TODO。"
---

# Course Summarizer Schema

## Purpose

这个 skill 约束 `course-summarizer` 的输出格式，保证第三步生成的课程总结、复核清单和关系回填具有稳定接口。

## Review List Contract

文件：`knowledge/<part>/<chapter>/review_list.md`

至少包含以下板块：

```md
# <课程名称> 复核清单

## 本课程内待复核问题

## 与其他课程重复的知识点

## 与其他课程冲突的知识点

## 建议处理方案
```

内容约束：
- 每个问题项都应指出涉及的知识点 id
- 每个问题项都应说明判断原因
- 每个问题项都应给出建议动作，例如重命名、合并、删除、保留并建立关联

## Summary Contract

文件：`knowledge/<part>/<chapter>/summary.md`

至少包含以下板块：

```md
# <课程名称>

## 课程概览

## 主题结构

## 核心知识点

## 与其他课程的关系
```

内容约束：
- 使用课程级视角总结，不逐字复写知识点 YAML
- 对核心知识点做简要说明，而不是展开证明
- 可以按 section 或主题分组组织内容

## Relationship Backfill Contract

目标文件：`knowledge/<part>/<chapter>/<section>/<subsection>/*.yml`

允许更新字段：
- `dependent_keypoints`
- `related_keypoints`

约束：
- 只更新当前课程下的知识点文件
- `dependent_keypoints` 表示直接依赖，不写宽泛背景知识
- `related_keypoints` 表示非依赖但存在稳定主题关联
- 未确认时保留空列表 `[]` 或现有值

## Validation Heuristics

生成后至少检查以下内容：
- `review_list.md` 是否覆盖重复、冲突和建议处理方案
- `summary.md` 是否覆盖课程概览、主题结构和核心知识点
- 回填的知识点 id 是否都能在 `knowledge/keypoints.yml` 中解析
- 是否只改动了目标课程目录下的知识库文件