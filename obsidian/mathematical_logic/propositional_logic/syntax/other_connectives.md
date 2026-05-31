---
title: 其他连接词
tags:
  - logic
  - propositional_logic
  - syntax
---

# 其他连接词

为了使表达式更加简洁，再定义一些“派生连接词”。需要注意的是，这些连接词都不是 $\mathcal{L}_0$ 的初始连接词，而是通过 $\neg$ 和 $\to$ 定义出来的，因此，它们并不增加 $\mathcal{L}_0$ 的表达能力。

<!-- conjunction_of_L0 -->
> [!Definition] 
> **合取 Conjunction**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。$\varphi$ 和 $\psi$ 的合取记为 $\varphi \wedge \psi$，定义为：
> $$
> \varphi \wedge \psi := \neg (\varphi \to \neg \psi)
> $$

<!-- disjunction_of_L0 -->
> [!Definition]
> **析取 Disjunction**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。$\varphi$ 和 $\psi$ 的析取记为 $\varphi \vee \psi$，定义为：
> $$
> \varphi \vee \psi := (\neg \varphi \to \psi)
> $$

<!-- biconditional_of_L0 -->
> [!Definition]
> **双条件 Biconditional**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_0$ 的公式。$\varphi$ 和 $\psi$ 的双条件记为 $\varphi \leftrightarrow \psi$，定义为：
> $$
> \varphi \leftrightarrow \psi := ((\varphi \to \psi) \wedge (\psi \to \varphi))
> $$

**括号的省略约定**：为了使表达式更加简洁，在不引起歧义的前提下，引入括号的省略约定：
1. 公式最外层的括号可以省略
2. 连接词的结合力依次递减为： $\neg$，$\wedge$，$\vee$，$\to$，$\leftrightarrow$
3. 相同优先级的连接词，从右向左结合
4. 其他情况下，括号不能省略

> [!Example]+
> 以下是一些根据上述省略约定得到的公式：
> - $p\to q \to r$ 等价于 $p\to (q \to r)$
> - $p\wedge q \vee r$ 等价于 $(p\wedge q) \vee r$
> - $r\to p \to p \leftrightarrow \neg \neg p \vee q$ 等价于 $(r\to (p \to p)) \leftrightarrow (\neg \neg p \vee q)$