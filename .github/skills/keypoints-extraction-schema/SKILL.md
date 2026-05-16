---
name: keypoints-extraction-schema
description: "用于知识点提取阶段的 YAML 契约 skill。Use when: 需要生成或校验 knowledge/keypoints.yml 与单知识点 yml 文件的结构、字段、命名、状态位和来源信息。Do not use for: 课程 outline、section_scope、Lean4 TODO、LaTeX TODO。"
---

# Keypoints Extraction Schema

## Purpose

这个 skill 约束 `keypoints-extraction` 的输出结构，保证知识点文件、全局索引和后续阶段之间的接口稳定。

## Global Index Schema

文件：`knowledge/keypoints.yml`

```yaml
combinatorics.addition_rule:
  metadata: ./discrete_mathematics/combinatorics/permutations_and_combinations/counting_principles/addition_rule.yml
```

约束：
- 顶层 key 是全局唯一的 `keypoint_id`
- `metadata` 是从 `knowledge/` 根目录出发的相对路径
- 每个索引项只指向一个单知识点 YAML 文件

## Single Keypoint Schema

文件：`knowledge/<part>/<chapter>/<section>/<subsection>/<concept>.yml`

```yaml
combinatorics.addition_rule:
  name: 加法原则
  type: definition
  part: discrete_mathematics
  chapter: combinatorics
  section: permutations_and_combinations
  subsection: counting_principles
  source_textbooks:
    - path: textbooks/discrete_mathematics/combinatorics/main.pdf
      pages: 12-13
      role: main
  latex: |
    设 ...
  dependent_keypoints: []
  related_keypoints: []
  lean_done: false
  latex_done: false
```

字段约束：
- `name` 必填，使用中文正式名称
- `type` 必填，推荐值为 `axiom`、`definition`、`lemma`、`proposition`、`theorem`、`corollary`、`example`
- `part`、`chapter`、`section`、`subsection` 必填，且必须与文件所在目录一致
- `source_textbooks` 必填，至少一项
- `role` 只能是 `main` 或 `reference`
- `latex` 必填，保存知识点陈述本身
- `dependent_keypoints`、`related_keypoints` 必填，未知时使用空列表 `[]`
- `lean_done`、`latex_done` 必填，初始值应为 `false`

## Naming Guidance

- `keypoint_id` 使用 `<chapter_id>.<concept_id>` 形式
- `concept_id` 应概括数学内容，而不是使用教材顺序编号
- 文件名与 `concept_id` 保持一致
- 同一 subsection 下的命名风格应保持一致

## Validation Heuristics

生成后至少检查以下内容：
- `knowledge/keypoints.yml` 是否新增了对应索引项
- 索引路径是否真实存在
- 单知识点文件的目录位置与 `part/chapter/section/subsection` 字段是否一致
- `source_textbooks` 是否记录了教材路径和页码范围
- `dependent_keypoints` 与 `related_keypoints` 是否使用列表而不是空值