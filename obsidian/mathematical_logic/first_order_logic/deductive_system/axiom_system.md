---
title: 公理系统
tags:
  - logic
  - first_order_logic
  - deductive_system
---

# 公理系统

一阶语言的公理系统全称“希尔伯特式的一阶公理系统”，和命题逻辑的公理系统一样，是数学家大卫·希尔伯特（David Hilbert, 1862-1943）提出，用于描述一阶语言形式化证明的系统。

<!-- axiom_schema_l_1 -->
> [!Definition]
> **公理模式 Axiom Schema**：希尔伯特式的一阶公理系统包含如下公理模式：
> - 命题逻辑的三个公理模式：
>   1. 肯定后件模式：$\Phi \to (\Psi \to \Phi)$
>   2. 蕴含词分配模式：$(\Phi \to (\Psi \to \Theta)) \to ((\Phi \to \Psi) \to (\Phi \to \Theta))$
>   3. 换位模式：$(\neg \Phi \to \neg \Psi) \to (\Psi \to \Phi)$
> - 量词公理模式：
>   1. 全称量词的特化：$\forall x \Phi \to \Phi(x;\tau)$，其中 $\tau$ 是项， $\Phi(x;\tau)$ 是自由代入
>   2. 全称量词的分配：$\forall x (\Phi \to \Psi) \to (\Phi \to \forall x \Psi)$，其中 $x\notin \mathrm{fr}(\Phi)$
> - 等词公理模式：
>   1. 同一律：$\tau \simeq \tau$
>   2. 对称律：$\tau \simeq \sigma \to \sigma \simeq \tau$
>   3. 传递律：$\tau_1 \simeq \tau_2 \to \tau_2 \simeq \tau_3 \to \tau_1 \simeq \tau_3$
>   4. 等词替换律 1：$\tau_1 \simeq \sigma_1 \to \cdots \to \tau_n \simeq \sigma_n \to R(\tau_1,\cdots,\tau_n) \to R(\sigma_1,\cdots,\sigma_n)$，其中 $R$ 是 $n$ 元关系符号
>   5. 等词替换律 2：$\tau_1 \simeq \sigma_1 \to \cdots \to \tau_n \simeq \sigma_n \to f(\tau_1,\cdots,\tau_n) \simeq f(\sigma_1,\cdots,\sigma_n)$，其中 $f$ 是 $n$ 元函数符号

> **注**：希尔伯特式的一阶公理系统中：
> 1. 与命题逻辑的公理系统类似，将 $\tau,\tau_k,\sigma,\sigma_k$ 替换为 $\mathcal{L}_1$ 的任意项，将 $\Phi$、$\Psi$、$\Theta$ 替换为 $\mathcal{L}_1$ 的任意公式，得到的实例都是希尔伯特式的一阶公理系统的公理。
> 2. 上述公理模式也不是唯一的，在有的教材也会选择其他等价的公理模式来构建希尔伯特式的一阶公理系统。
> 3. 等词公理模式不是必须的，因为在初始符号中，将等词 $\simeq$ 作为了 $\mathcal{L}_1$ 的初始符号，那么公理系统中应该包含等词公理模式。等词公理模式中的五条公理模式与五条等词类有效式有模切关系。

<!-- modus_ponens_l_1 -->
> [!Definition]
> **Modus Ponens 规则**：希尔伯特式的一阶公理的 MP 规则：
> $$
> \frac{\varphi\qquad \varphi \to \psi}{\psi}
> $$

> **注**：希尔伯特式的一阶公理的 MP 规则与命题逻辑的 MP 规则相同，说明如果 $\varphi$ 成立且 $\varphi$ 能推出 $\psi$，那么 $\psi$ 也成立。

<!-- generalization_l_1 -->
> [!Definition]
> **Generalization 规则**：希尔伯特式的一阶公理的 Generalization 规则：
> $$
> \frac{\varphi}{\forall x \varphi}
> $$
> 其中，$x$ 不能自由出现在任何未解除假设中，该规则简称为 Gen 规则。

> **注**：Generalization 规则也称为“全称化规则”，说明如果 $\varphi$ 已在不依赖于 $x$ 的假设下被证明，则可全称化为 $\forall x \varphi$。

> [!Definition]
> **形式证明 Formal Proof**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的一个公式集，$\varphi_1,\cdots,\varphi_n$ 是一个 $\mathcal{L}_1$ 的公式序列，如果每个公式 $\varphi_k,k=1,\cdots,n$ 满足以下四个条件之一：
> 1. $\varphi_k$ 是 $\Gamma$ 中的一个公式
> 2. $\varphi_k$ 是一个公理模式的实例
> 3. $\varphi_k$ 是由前面的公式通过 MP 规则得到的，也即存在 $i,j < k$ 使得 $\varphi_j = (\varphi_i \to \varphi_k)$
> 4. $\varphi_k$ 是由前面的公式通过 Gen 规则得到的，也即存在 $i < k$ 和一个个体变元符号 $x$ 使得 $\varphi_k = \forall x \varphi_i$，称 $x$ 为 Gen 变元
> 
> 则称这个公式序列为一个以 $\Gamma$ 为假设的证明。

<!-- provable_formula_l_1 -->
> [!Definition]
> **可证明式 Provable Formula**：如果以 $\Gamma$ 为假设的证明 $\varphi_1,\cdots,\varphi_n$ 满足 $\varphi_n = \varphi$，那么称 $\varphi$ 是在假设 $\Gamma$ 下的一个可证明式，记为：
> $$
> \Gamma \vdash \varphi
> $$

> **注**：同样的，在希尔伯特式的一阶公理系统中，“证明”是由公理、假设、MP 规则和 Gen 规则生成的有限公式序列，是一个纯“语法”概念。

> [!Definition]
> **内定理 Internal Theorem**：如果 $\Gamma = \varnothing$，并且存在一个$\mathcal{L}_1$ 的公式序列 $\varphi_1,\cdots,\varphi_n$ 满足以下三个条件之一：
> 1. $\varphi_k$ 是一个公理模式的实例
> 2. $\varphi_k$ 是由前面的公式通过 MP 规则得到的
> 3. $\varphi_k$ 是由前面的公式通过 Gen 规则得到的
>
> 并且 $\varphi_n = \varphi$ ，那么称 $\varphi$ 是 $\mathcal{L}_1$ 的内定理，记为：
> $$
> \vdash \varphi
> $$

> **注**：内定理是指在没有任何假设的情况下，仅通过公理、MP 规则和 Gen 规则得到的公式。

<!-- deduction_theorem_l_1 -->
> [!Theorem]
> **演绎定理 Deduction Theorem**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_1$ 的公式，那么：
> 1. 如果 $\Gamma \vdash \varphi \to \psi$ 那么 $\Gamma \cup \{\varphi\} \vdash \psi$
> 2. 如果 $\Gamma \cup \{\varphi\} \vdash \psi$ 并且证明中所有 Gen 变元不在 $\varphi$ 中自由出现，那么不增加新的 Gen 变元就可以得到 $\Gamma \vdash \varphi \to \psi$

<!-- law_of_contradiction_l_1 -->
> [!Theorem]
> **反证律 Law of Contradiction**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_1$ 的公式。如果
> $$
> \begin{cases}
> \Gamma \cup \{\neg \varphi\} \vdash \psi \\
> \Gamma \cup \{\neg \varphi\} \vdash \neg \psi
> \end{cases}
> $$
> 
> 那么
> $$
> \Gamma \vdash \varphi
> $$

> **注**：反证律就是数学证明中常用的“反证法”，为了证明 $\Gamma \vdash \varphi$，我们先否定 $\varphi$，如果 $\Gamma \cup \{\neg \varphi\}$ 推出矛盾 $\psi \wedge \neg \psi$，那么 $\Gamma$ 就能推出 $\varphi$。

<!-- reductio_ad_absurdum_law_l_1 -->
> [!Theorem]
> **归谬律 Reductio ad Absurdum Law**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_1$ 的公式。如果
> $$
> \begin{cases}
> \Gamma \cup \{ \varphi\} \vdash \psi \\
> \Gamma \cup \{ \varphi\} \vdash \neg \psi
> \end{cases}
> $$
> 
> 那么
> $$
> \Gamma \vdash \neg \varphi
> $$