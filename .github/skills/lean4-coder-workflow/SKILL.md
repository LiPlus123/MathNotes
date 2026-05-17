---
name: lean4-coder-workflow
description: "用于 Lean4 形式化阶段的工作流 skill。Use when: 需要根据知识库中某个 subsection 的知识点生成 Lean4 代码、更新 lean_todo.yml，并在验证通过后回写 lean_done 状态。Do not use for: 教材目录建模、知识点抽取、课程总结、LaTeX 正式写作。"
---

# Lean4 Coder Workflow

## Purpose

这个 skill 为 `lean4-coder` agent 提供稳定的形式化执行流程，确保每次只处理一个 `subsection`，并把 Lean 代码、TODO 状态和知识点状态更新成一个闭环。

## When To Use

在以下情形使用：
- 第二步知识点提取已经完成
- 需要对某个 `subsection` 的知识点进行 Lean4 形式化
- 需要更新 `lean/lean_todo.yml`
- 需要在验证通过后把知识点的 `lean_done` 标记为 `true`

在以下情形不要使用：
- 需要重新抽取知识点
- 需要生成课程级总结
- 需要写 LaTeX 正式文档
- 目标 subsection 只有 `concept` 类型知识点

## Workflow

1. 读取目标 `subsection` 目录下的全部知识点 YAML。
2. 过滤可形式化类型：`axiom`、`definition`、`lemma`、`proposition`、`theorem`、`corollary`、`example`。
3. 若没有可形式化条目，则结束并说明该 subsection 无需形式化。
4. 读取已有 Lean 文件、`lean/lean_todo.yml` 和必要依赖。
5. 生成或更新目标 Lean 文件，按依赖顺序组织声明。
6. 对能完成的条目给出 Lean 证明；对暂时无法完成的条目写入 TODO 并记录到 `lean_todo.yml`。
7. 执行 `lake build` 作为强制验证。
8. 仅在验证通过后，把成功形式化的知识点 `lean_done` 设为 `true`；同时清理已经解决的 TODO。

## Granularity Rules

- 最小任务单元是一个 `subsection`。
- 一个纯 `concept` 型 subsection 不生成 Lean 文件。
- 可以读取直接依赖的相邻知识点或已有 Lean 模块，但不应无边界扩展到无关章节。

## Proof Style Rules

- 默认优先 Term 风格。
- 复杂长证明允许使用 Tactic 风格。
- 在重要步骤写中文注释，说明证明思路。

## Quality Rules

- 形式化应忠实于知识点 YAML 的数学含义，不擅自改写命题内容。
- 尽量使用基础 Lean4 自行构造课程内核心对象。
- Mathlib 只用于知识库未覆盖的基础依赖或明显降低重复劳动的基础设施。
- `lean_done` 只在验证通过时更新。

## Acceptance Checklist

在完成编辑前逐项检查：
- 是否只处理了一个 `subsection`
- 是否只对允许的 `type` 做了形式化
- 是否正确跳过纯 `concept` 型 subsection
- 是否更新了目标 Lean 文件
- 是否更新了 `lean/lean_todo.yml`
- 是否在验证通过后再更新 `lean_done`
- 是否运行了 `lake build`

## Common Failure Modes

- 对 `concept` 条目强行生成 Lean 声明
- 证明失败但仍把 `lean_done` 设为 `true`
- 写了 TODO，却没有同步更新 `lean/lean_todo.yml`
- 只验证局部代码，没有执行 `lake build`
- 无边界依赖 Mathlib，导致课程核心对象被外部库吞掉