---
title: 其他逻辑符号
tags:
  - logic
  - first_order_logic
  - syntax
---

# 其他逻辑符号

<!-- existential_quantifier_l_1 -->
> [!Definition]
> **存在量词符号 Existential Quantifier**：设 $\varphi$ 是 $\mathcal{L}_1$ 的公式，$x$ 是 $\mathcal{L}_1$ 的个体变元符号，那么 $\exists x \varphi$ 定义为：
> $$
> \exists x \varphi := \neg (\forall x (\neg \varphi))
> $$

> **注**：$\neg (\forall x (\neg \varphi))$ 的语义是：“不存在所有 $x$ 都不满足 $\varphi$”，换句话说就是，“存在至少一个 $x$ 满足 $\varphi$”。

<!-- not_equal_symbol -->
> [!Definition]
> **不等词符号 Not Equal Symbol**：设 $\tau_1$ 和 $\tau_2$ 是 $\mathcal{L}_1$ 的项，那么 $\tau_1 \not\simeq \tau_2$ 定义为：
> $$
> \tau_1 \not\simeq \tau_2 := \neg (\tau_1 \simeq \tau_2)
> $$

<!-- conjunction_of_L1 -->
> [!Definition] 
> **合取 Conjunction**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_1$ 的公式。$\varphi$ 和 $\psi$ 的合取记为 $\varphi \wedge \psi$，定义为：
> $$
> \varphi \wedge \psi := \neg (\varphi \to \neg \psi)
> $$

<!-- disjunction_of_L1 -->
> [!Definition]
> **析取 Disjunction**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_1$ 的公式。$\varphi$ 和 $\psi$ 的析取记为 $\varphi \vee \psi$，定义为：
> $$
> \varphi \vee \psi := (\neg \varphi \to \psi)
> $$

<!-- biconditional_of_L1 -->
> [!Definition]
> **双条件 Biconditional**：设 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_1$ 的公式。$\varphi$ 和 $\psi$ 的双条件记为 $\varphi \leftrightarrow \psi$，定义为：
> $$
> \varphi \leftrightarrow \psi := ((\varphi \to \psi) \wedge (\psi \to \varphi))
> $$

**括号的省略约定**：为了使表达式更加简洁，在不引起歧义的前提下，引入括号的省略约定：
1. 公式最外层的括号可以省略
2. 逻辑符号的结合力依次递减为：$\neg,\forall,\exists$ 强于 $\wedge$ 强于 $\vee$ 强于 $\to$ 强于 $\leftrightarrow$
3. 相同结合力的逻辑符号连续出现时，从右向左结合

> [!Example]+
> 以下是一些根据上述省略约定得到的公式：
> - $\varphi \wedge \psi \vee \theta$ 等价于 $(\varphi \wedge \psi) \vee \theta$
> - $\neg \forall x \neg R(x,c)$ 等价于 $\neg (\forall x (\neg R(x,c)))$
> - $\varphi \to \forall x\psi \to \theta$ 等价于 $\varphi \to ((\forall x\psi) \to \theta)$