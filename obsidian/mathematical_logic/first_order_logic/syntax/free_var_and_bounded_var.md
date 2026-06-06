---
title: 自由变元与约束变元
tags:
  - logic
  - first_order_logic
  - syntax
---

# 自由变元与约束变元

在 $\forall x \varphi$ 和 $\exists x\varphi$ 中，$x$ 称为“指导变元”，$\varphi$ 称为量词的“辖域”。在 $\varphi$ 中的，$x$ 的所有出现都成为“约束变元”，$\varphi$ 中其他的变元称为“自由变元”。下面给出更正式的定义。

> [!Definition]
> **变元集 Variables Set**：设 $\mathrm{vr}$ 是一个函数，它可以接受一个项或一个公式。如果输入一个项，那么：
> 1. $\mathrm{vr}(x) = \{x\}$，其中 $x$ 是个体变元符号
> 2. $\mathrm{vr}(c) = \varnothing$，其中 $c$ 是个体常项符号
> 3. $\mathrm{vr}(f(\tau_1,\cdots,\tau_n)) = \mathrm{vr}(\tau_1) \cup \cdots \cup \mathrm{vr}(\tau_n)$，其中 $f$ 是 $n$ 元函数符号，$\tau_1,\cdots,\tau_n$ 是项
> 
> 如果输入一个原子公式，那么：
> 1. $\mathrm{vr}(R(\tau_1,\cdots,\tau_n)) = \mathrm{vr}(\tau_1) \cup \cdots \cup \mathrm{vr}(\tau_n)$，其中 $R$ 是 $n$ 元关系符号，$\tau_1,\cdots,\tau_n$ 是项
> 2. $\mathrm{vr}(\tau_1 \simeq \tau_2) = \mathrm{vr}(\tau_1) \cup \mathrm{vr}(\tau_2)$，其中 $\tau_1$ 和 $\tau_2$ 是项
> 
> 如果输入一个公式，那么：
> 1. $\mathrm{vr}(\neg \varphi) = \mathrm{vr}(\varphi)$
> 2. $\mathrm{vr}(\varphi \to \psi) = \mathrm{vr}(\varphi) \cup \mathrm{vr}(\psi)$
> 3. $\mathrm{vr}(\forall x \varphi) = \mathrm{vr}(\varphi)$，其中 $x$ 是个体变元符号

> **注**：变元集递归地从公式到原子公式，再到项，收集所有的变元。

<!-- free_variables_set -->
> [!Definition]
> **自由变元集 Free Variables Set**：设 $\mathrm{fr}$ 是一个函数，它接受一个公式作为输入。如果输入一个原子公式，那么：
> 1. $\mathrm{fr}(R(\tau_1,\cdots,\tau_n)) = \mathrm{vr}(R(\tau_1,\cdots,\tau_n))$，其中 $R$ 是 $n$ 元关系符号，$\tau_1,\cdots,\tau_n$ 是项
> 2. $\mathrm{fr}(\tau_1 \simeq \tau_2) = \mathrm{vr}(\tau_1 \simeq \tau_2)$，其中 $\tau_1$ 和 $\tau_2$ 是项
>
> 如果输入一个公式，那么：
> 1. $\mathrm{fr}(\neg \varphi) = \mathrm{fr}(\varphi)$
> 2. $\mathrm{fr}(\varphi \to \psi) = \mathrm{fr}(\varphi) \cup \mathrm{fr}(\psi)$
> 3. $\mathrm{fr}(\forall x \varphi) = \mathrm{fr}(\varphi) \setminus \{x\}$，其中 $x$ 是个体变元符号

> **注**：自由变元集递归地从公式到原子公式，再到项，收集所有的变元，并且在遇到 $\forall x$ 时，将 $x$ 从自由变元集中移除。

> [!Theorem]
> 设 $\varphi,\psi$ 是 $\mathcal{L}_1$ 的公式，那么有
> 1. $\mathrm{fr}(\exists x \varphi) = \mathrm{fr}(\varphi) \setminus \{x\}$
> 2. $\mathrm{fr}(\varphi \wedge \psi) = \mathrm{fr}(\varphi) \cup \mathrm{fr}(\psi)$
> 3. $\mathrm{fr}(\varphi \vee \psi) = \mathrm{fr}(\varphi) \cup \mathrm{fr}(\psi)$
> 4. $\mathrm{fr}(\varphi \leftrightarrow \psi) = \mathrm{fr}(\varphi) \cup \mathrm{fr}(\psi)$

> **注**：根据存在量词的定义，
> $$
> \begin{align*}
>   \mathrm{fr}(\exists x \varphi) &= \mathrm{fr}(\neg (\forall x (\neg \varphi)))\\
>   &= \mathrm{fr}(\forall x (\neg \varphi)) \\
>   &= \mathrm{fr}(\neg \varphi) \setminus \{x\} \\
>   &= \mathrm{fr}(\varphi) \setminus \{x\}
\end{align*}
> $$
> 类似地，可以证明合取、析取和双条件的自由变元集是其子公式的自由变元集的并集。

> [!Definition]
> **约束变元集 Bound Variables Set**：设 $\mathrm{br}$ 是一个函数，它接受一个公式作为输入。如果输入一个原子公式，那么：
> 1. $\mathrm{br}(R(\tau_1,\cdots,\tau_n)) = \varnothing$，其中 $R$ 是 $n$ 元关系符号，$\tau_1,\cdots,\tau_n$ 是项
> 2. $\mathrm{br}(\tau_1 \simeq \tau_2) = \varnothing$，其中 $\tau_1$ 和 $\tau_2$ 是项
>
> 如果输入一个公式，那么：
> 1. $\mathrm{br}(\neg \varphi) = \mathrm{br}(\varphi)$
> 2. $\mathrm{br}(\varphi \to \psi) = \mathrm{br}(\varphi) \cup \mathrm{br}(\psi)$
> 3. $\mathrm{br}(\forall x \varphi) = \mathrm{br}(\varphi) \cup (\mathrm{vr}(\varphi) \cap \{x\})$，其中 $x$ 是个体变元符号

> **注**：约束变元集递归地从公式到原子公式，在遇到 $\forall x$ 时，将 $x$ 加入约束变元集中。

> [!Theorem]
> 设 $\varphi,\psi$ 是 $\mathcal{L}_1$ 的公式，那么有
> 1. $\mathrm{br}(\exists x \varphi) = \mathrm{br}(\varphi) \cup \{x\}$
> 2. $\mathrm{br}(\varphi \wedge \psi) = \mathrm{br}(\varphi) \cup \mathrm{br}(\psi)$
> 3. $\mathrm{br}(\varphi \vee \psi) = \mathrm{br}(\varphi) \cup \mathrm{br}(\psi)$
> 4. $\mathrm{br}(\varphi \leftrightarrow \psi) = \mathrm{br}(\varphi) \cup \mathrm{br}(\psi)$

> [!Definition]
> **闭公式 Closed Formula**：如果 $\varphi$ 是 $\mathcal{L}_1$ 的公式，并且 $\mathrm{fr}(\varphi) = \varnothing$，那么称 $\varphi$ 是 $\mathcal{L}_1$ 的闭公式。

> **注**：不含自由变元的公式称为闭公式，也称为“句子 Sentence”，它的语义是一个完整的命题，可以直接赋予真值。含有自由变元的公式称为开公式 Open Formula，它的语义是一个带有参数的命题，不能直接赋予真值，但可以通过给自由变元赋值来得到一个闭公式，从而赋予真值。