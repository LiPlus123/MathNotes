---
title: 形式系统
tags:
  - logic
  - mathematical_logic
  - formal_language
---

# 形式系统

<!-- formal_system_definition -->
> [!Definition]
> **形式系统 Formal System**：形式系统是一个以形式语言为表达媒介、以公理和推理规则为演算核心的符号系统。通常可概括为四个组成部分：
> 1. 形式语言：规定哪些符号串是合法表达式；
> 2. 公理集：规定哪些公式可作为无须证明的初始公式；
> 3. 推理规则：规定如何从已得公式推出新公式；
> 4. 形式证明：规定何时一个公式被视为从公理出发按规则得到。

<!-- axiom_set_definition -->
> [!Definition]
> **公理集 Axiom Set**：形式系统中的公理集记为 $\mathrm{Ax}$，它是语言中某类公式构成的集合。其元素称为公理；若公理通过若干模板统一给出，则称为公理模式。

<!-- inference_rule_definition -->
> [!Definition]
> **推理规则 Inference Rule**：推理规则是一个有限前提到结论的演算模式。若从公式
> $$
> \varphi_1,\ldots,\varphi_n
> $$
> 可以按某条规则推出公式 $\psi$，则记作
> $$
> \varphi_1,\ldots,\varphi_n \;/\; \psi.
> $$
> 它刻画的是合法推理步骤的纯语法条件。

<!-- formal_proof_definition -->
> [!Definition]
> **形式证明 Formal Proof**：设 $\mathcal{S}$ 是一个形式系统。公式序列
> $$
> \varphi_1, \varphi_2, \ldots, \varphi_n
> $$
> 称为公式 $\varphi_n$ 在系统 $\mathcal{S}$ 中的一个形式证明，如果对每个 $i \le n$，$\varphi_i$ 不是公理，就是由前面若干公式通过某条推理规则得到。

<!-- provability_definition -->
> [!Definition]
> **可证性 Provability**：若公式 $\varphi$ 在形式系统 $\mathcal{S}$ 中存在形式证明，则称 $\varphi$ 在 $\mathcal{S}$ 中可证，记为
> $$
> \vdash_{\mathcal{S}} \varphi.
> $$
> 更一般地，若从假设集 $\Gamma$ 出发可以证明 $\varphi$，则记为
> $$
> \Gamma \vdash_{\mathcal{S}} \varphi.
> $$

<!-- formal_system_components_lemma -->
> [!Lemma]
> **形式系统的结构分工 Structural Roles in a Formal System**：在一个形式系统中，形式语言决定“哪些符号串有资格被讨论”，公理集决定“哪些公式可被无条件接受”，推理规则决定“哪些推演步骤被允许”，而形式证明则把前述三者组织成可检查的有限对象。

> **注**：这说明形式系统的核心目标是把数学推理转化为可精确检查的符号操作。

<!-- hilbert_system_example -->
> [!Example]+
> **命题逻辑希尔伯特系统 A Hilbert-style System for Propositional Logic**：命题逻辑的希尔伯特系统是形式系统的典型例子。其形式语言由命题变元和连接词构成，公理集由若干公理模式给出，推理规则通常至少包含分离规则，形式证明则是按这些规则排列的公式序列。

> **注**：形式系统是数理逻辑诸分支的共同基础。证明论研究形式证明本身，模型论研究形式语言的语义解释，而可计算性理论则研究这些形式对象的算法性质。