---
name: lean4-coder-schema
description: "用于 Lean4 形式化阶段的产物契约 skill。Use when: 需要生成或校验 Lean 文件、lean/lean_todo.yml，以及知识点 lean_done 状态更新的结构、命名和验证边界。Do not use for: 课程 outline、知识点抽取、课程总结、LaTeX TODO。"
---

# Lean4 Coder Schema

## Purpose

这个 skill 约束 `lean4-coder` 的输出结构，保证 Lean 文件、TODO 文件和知识点状态更新之间的接口稳定。

## Lean File Contract

目标文件：

```text
lean/chapters/<part>/<chapter>/<section>/<subsection>.lean
```

建议结构：

```lean
import Mathlib

namespace MathNotes.DiscreteMathematics.Combinatorics.PermutationsAndCombinations

-- 中文注释：说明本 subsection 的形式化主线

def exampleDefinition := ...

theorem exampleTheorem : ... := by
  -- 中文注释：关键证明思路
  ...

end MathNotes.DiscreteMathematics.Combinatorics.PermutationsAndCombinations
```

约束：
- 一个 `subsection` 对应一个 Lean 文件
- 文件名应与 `subsection_id` 保持一致
- 应有稳定的 `namespace`
- 重要步骤允许中文注释
- 对未完成条目可以保留清晰 TODO 标记，但必须同步进入 `lean_todo.yml`

## TODO Schema

文件：`lean/lean_todo.yml`

```yaml
- keypoint_id: combinatorics.addition_rule
  file: lean/chapters/discrete_mathematics/combinatorics/permutations_and_combinations/counting_principles.lean
  status: blocked
  reason: 依赖的集合论基础尚未形式化
  depends_on: []
```

字段约束：
- `keypoint_id` 必填，且必须能解析到 `knowledge/keypoints.yml`
- `file` 必填，指向对应 Lean 文件
- `status` 必填，只能使用 `blocked`、`in_progress`、`deferred`
- `reason` 必填，描述阻塞原因
- `depends_on` 必填，未知时使用空列表 `[]`

## Keypoint Status Contract

目标文件：`knowledge/<part>/<chapter>/<section>/<subsection>/*.yml`

允许更新字段：
- `lean_done`

约束：
- 形式化成功并验证通过后，设置 `lean_done: true`
- 仍未完成或验证失败时，必须保持 `lean_done: false`
- 不应顺带修改数学内容字段，如 `latex`、`name`、`type`

## Formalizable Types

默认需要形式化的类型：
- `axiom`
- `definition`
- `lemma`
- `proposition`
- `theorem`
- `corollary`
- `example`

默认不形式化的类型：
- `concept`

## Validation Heuristics

生成后至少检查以下内容：
- 目标 Lean 文件路径是否与 `subsection_id` 一致
- `lean/lean_todo.yml` 中的 `keypoint_id` 是否都能解析
- 已更新 `lean_done` 的知识点是否确实在 Lean 文件中完成了形式化
- 是否执行了 `lake build`
- 验证失败时是否保留了 `lean_done: false`