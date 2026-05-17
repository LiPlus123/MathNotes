---
name: latex-writer-schema
description: "用于 LaTeX 生成阶段的产物契约 skill。Use when: 需要生成或校验 section 级 LaTeX 文件、latex/latex_todo.yml，以及知识点 latex_done 状态更新的结构、命名和验证边界。Do not use for: 课程 outline、知识点抽取、课程总结、Lean4 TODO。"
---

# LaTeX Writer Schema

## Purpose

这个 skill 约束 `latex-writer` 的输出结构，保证 section 级 LaTeX 文件、TODO 文件和知识点状态更新之间的接口稳定。

## Section File Contract

目标文件：

```text
latex/chapters/<part>/<chapter>/<section>.tex
```

建议结构：

```latex
\section{命题逻辑}

\subsection{复合命题}

复合命题部分的概览性叙述。

\begin{definition}
设 $p, q$ 为命题，则 ...
\end{definition}

\begin{theorem}
... 
\end{theorem}

\begin{proof}
根据 ... 可得 ...
\end{proof}

\subsection{命题推理}

% 继续维护同一 section 下其他 subsection 的内容
```

约束：
- 一个 `section` 对应一个完整的 `*.tex` 文件
- 每次运行只增量更新其中一个 `subsection` 的内容块
- 文件中应保留同一 section 下其他 subsection 的既有内容
- 支持 XeLaTeX 中文排版
- 对未完成条目应保留清晰 TODO 标记

## Symbol Macro Contract

默认应优先使用 `latex/config/macros.tex` 中已有符号宏与算子定义，包括但不限于：
- 集合符号：`\N`、`\Z`、`\Q`、`\R`、`\C`
- 线性代数记号：`\vv{}`、`\mm{}`
- 常用数学记号：`\eps`、`\dd`、`\ee`
- 算子：`\sgn`、`\supp`、`\rank`、`\tr`、`\Img`、`\Real`、`\Ran`、`\Dom`

约束：
- 已有宏存在时，不应退回到原始或临时写法
- 不应在 section 文件里新增临时 `\newcommand` 或 `\DeclareMathOperator`
- 若确实需要新符号且后续会复用，应把它补充到 `latex/config/macros.tex`
- 新增宏应保持命名简洁、语义稳定，并避免与现有宏冲突

## Environment Contract

数学环境必须严格使用 `latex/config/packages.tex` 中已经定义的环境：
- theorem-like: `axiom`、`definition`、`theorem`、`proposition`、`lemma`、`corollary`、`example`
- remark-like: `remark`、`note`
- proof-like: `proof`
- boxed note: `important`

约束：
- `definition` 类型知识点应优先进入 `definition` 环境
- `axiom` 类型知识点应优先进入 `axiom` 环境
- `lemma`、`proposition`、`theorem`、`corollary`、`example` 应使用同名环境
- 解释性补充优先使用 `remark`、`note` 或 `important`
- 不得自造平行环境名，也不得把陈述环境和证明环境混用

## TODO Schema

文件：`latex/latex_todo.yml`

```yaml
- keypoint_id: logic.conjunction_proposition
  file: latex/chapters/mathematical_logic/logic/propositional_logic.tex
  status: blocked
  reason: 对应 Lean 形式化证明仍未完成，当前自然语言证明也未整理完成
  depends_on: []
```

字段约束：
- `keypoint_id` 必填，且必须能解析到 `knowledge/keypoints.yml`
- `file` 必填，指向对应 section 级 LaTeX 文件
- `status` 必填，只能使用 `blocked`、`in_progress`、`deferred`
- `reason` 必填，描述阻塞或推迟原因
- `depends_on` 必填，未知时使用空列表 `[]`

## Keypoint Status Contract

目标文件：`knowledge/<part>/<chapter>/<section>/<subsection>/*.yml`

允许更新字段：
- `latex_done`

约束：
- LaTeX 内容完成且编译验证通过后，设置 `latex_done: true`
- 仍未完成或验证失败时，必须保持 `latex_done: false`
- 不应顺带修改数学内容字段，如 `latex`、`name`、`type`

## Proof Contract

- `concept` 也可以出现在 LaTeX 文档中，以叙述性内容呈现
- 重要的 `lemma`、`proposition`、`theorem`、`corollary`、`example` 应尽量提供证明
- 若对应 Lean 结果已完成，可参考其证明逻辑
- 若证明尚未完成，应使用 TODO 并登记到 `latex/latex_todo.yml`

## Validation Heuristics

生成后至少检查以下内容：
- 目标 section 文件路径是否与 `section_id` 一致
- `latex/latex_todo.yml` 中的 `keypoint_id` 是否都能解析
- 已更新 `latex_done` 的知识点是否确实出现在目标 LaTeX 文件中
- 是否优先复用了 `latex/config/macros.tex` 中已有宏
- 如新增了可复用数学符号，是否把它写入了 `latex/config/macros.tex`
- 是否严格使用了 `latex/config/packages.tex` 中已定义的数学环境
- 是否执行了 `latexmk -r latexmkrc -xelatex main.tex`
- 编译失败时是否保留了 `latex_done: false`