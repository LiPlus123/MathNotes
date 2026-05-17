---
name: latex-writer-workflow
description: "用于 LaTeX 生成阶段的工作流 skill。Use when: 需要根据知识库中某个 subsection 的知识点和对应 Lean4 结果，渐进更新所属 section 的 LaTeX 文档、维护 latex_todo.yml，并在编译通过后回写 latex_done 状态。Do not use for: 教材目录建模、知识点抽取、课程总结、Lean4 形式化。"
---

# LaTeX Writer Workflow

## Purpose

这个 skill 为 `latex-writer` agent 提供稳定的写作流程，确保每次只处理一个 `subsection`，但输出始终落在所属 `section` 的单个 `*.tex` 文件中，并与 `latex_todo.yml`、`latex_done` 状态保持一致。

## When To Use

在以下情形使用：
- 第二步知识点提取已经完成
- 需要为某个 `subsection` 生成或更新 LaTeX 内容
- 需要参考对应 Lean4 文件中的已完成形式化结果
- 需要更新 `latex/latex_todo.yml`
- 需要在编译通过后把知识点的 `latex_done` 标记为 `true`

在以下情形不要使用：
- 需要重新抽取知识点
- 需要生成课程级总结
- 需要写或修改 Lean4 代码

## Workflow

1. 读取目标 `subsection` 目录下的全部知识点 YAML。
2. 读取 `latex/config/macros.tex`，先确认项目中已定义的集合符号、向量、矩阵、算子和常用数学记号。
3. 读取 `latex/config/packages.tex`，确认当前项目允许使用的数学环境、证明环境、说明环境和引用环境。
4. 读取所属 `section` 的现有 `*.tex` 文件；若不存在，则创建新的 section 文件骨架。
5. 若提供了对应 Lean 文件，读取其中已完成的定义、命题与证明结构。
6. 在 section 文件内定位当前 subsection 的内容块，并增量更新该部分内容。
7. 为 `concept`、`definition`、`axiom` 等条目写出叙述性内容；为重要的 `lemma`、`proposition`、`theorem`、`corollary`、`example` 写出证明。
8. 写作时优先复用 `macros.tex` 中已有宏；只有出现项目缺失且会复用的新符号时，才补充到 `macros.tex`。
9. 数学对象必须落到 `packages.tex` 已定义的环境中，不得随意自造 theorem-like 环境或误用环境类型。
10. 对暂时无法完成的条目插入 TODO，并写入 `latex/latex_todo.yml`。
11. 必要时更新最近的包含文件，确保 `latex/main.tex` 能纳入该 section 文件。
12. 执行 `latexmk -r latexmkrc -xelatex main.tex` 作为强制验证。
13. 仅在验证通过后，把已完成的知识点 `latex_done` 设为 `true`；同时清理已解决的 TODO。

## Granularity Rules

- 最小任务单元是一个 `subsection`。
- 输出文件单元是一个 `section`。
- 一个 section 文件应容纳该 section 下所有 subsection 的内容。
- 概念型 subsection 也应写入 LaTeX，不因无法形式化而跳过。

## Writing Rules

- 数学符号必须统一，不得同一概念同时混用项目宏和临时手写写法。
- 对已有宏，优先使用 `\N`、`\Z`、`\Q`、`\R`、`\C`、`\vv{}`、`\mm{}`、`\eps`、`\dd`、`\ee` 及 `macros.tex` 中已有算子定义。
- 新符号若确有复用价值，应先补到 `latex/config/macros.tex`，再在 section 文件中使用。
- 数学环境必须与知识点类型匹配，并严格使用 `packages.tex` 中给出的 `definition`、`axiom`、`theorem`、`proposition`、`lemma`、`corollary`、`example`、`remark`、`note`、`proof`、`important`。
- 优先使用自然语言叙述，必要时辅以一阶逻辑符号化。
- 证明应服务于人类阅读，不直接照抄 Lean 代码。
- 若 Lean 已完成形式化，优先沿用其证明逻辑框架。
- 若暂时无法保证证明严谨完整，应使用 TODO，而不是伪装成完成稿。

## Acceptance Checklist

在完成编辑前逐项检查：
- 是否只处理了一个 `subsection`
- 是否正确更新了所属 `section` 的单个 `*.tex` 文件
- 是否保留了同一 section 中其他 subsection 的现有内容
- 是否优先复用了 `latex/config/macros.tex` 中已有宏
- 如出现新符号，是否把宏补充到了 `latex/config/macros.tex`
- 是否正确使用了 `latex/config/packages.tex` 中定义的数学环境
- 是否更新了 `latex/latex_todo.yml`
- 是否在编译通过后再更新 `latex_done`
- 是否运行了 `latexmk -r latexmkrc -xelatex main.tex`

## Common Failure Modes

- 把每个 subsection 单独写成独立 section 文件，破坏 section 粒度约定
- 更新当前 subsection 时覆盖了同一 section 中其他 subsection 的内容
- 在 section 文件中直接手写重复的 `\newcommand`，绕过 `macros.tex`
- 把 `theorem`、`proposition`、`definition`、`remark`、`note`、`proof` 等环境混用或错用
- 编译失败但仍把 `latex_done` 设为 `true`
- 写了 TODO，却没有同步更新 `latex/latex_todo.yml`
- 机械翻译 Lean 证明，导致 LaTeX 文风不可读