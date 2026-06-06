---
title: 满足关系与重言式
tags:
  - logic
  - propositional_logic
  - semantic
---

# 满足关系与重言式

<!-- satisfaction_l_0 -->
> [!Definition]
> **满足关系 Satisfaction Relation**：设 $\varphi$ 是 $\mathcal{L}_0$ 的一个公式，$v$ 是 $\varphi$ 中命题变元集的一个赋值，$\bar{v}$ 是由 $v$ 诱导的公式赋值函数。如果 $\bar{v}(\varphi) = \top$，那么称赋值 $v$ 满足 $\varphi$，记为：
> $$
> v \models \varphi
> $$
> 如果 $\Gamma$ 是 $\mathcal{L}_0$ 的一个公式集，如果任意 $\psi\in \Gamma$，都有赋值 $v$ 都满足，那么称 $v$ 满足 $\Gamma$，记为：
> $$
> v \models \Gamma
> $$

<!-- satisfiable_formula -->
> [!Definition]
> **可满足式 Satisfiable Formula**：设 $\varphi$ 是 $\mathcal{L}_0$ 的一个公式，如果存在一个赋值 $v$ 满足 $\varphi$，那么称 $\varphi$ 是一个可满足式。

<!-- tautology -->
> [!Definition]
> **重言式 Tautology**：设 $\varphi$ 是 $\mathcal{L}_0$ 的一个公式，如果任意赋值 $v$ 都满足 $\varphi$，那么称 $\varphi$ 是一个重言式，记为
> $$
> \models \varphi
> $$

> **注**：重言式也称为“永真式”，指的是无论命题变元取什么真值，这个公式都为真。比如，公式 $p \vee \neg p$ 就是一个重言式，因为无论 $p$ 是真还是假，这个公式的真值都为真。与重言式相对的，称为“矛盾式”。

<!-- contradiction_formula -->
> [!Definition]
> **矛盾式 Contradiction**：设 $\varphi$ 是 $\mathcal{L}_0$ 的一个公式，如果任意赋值 $v$ 都不满足 $\varphi$，那么称 $\varphi$ 是一个矛盾式。

> **注**：矛盾式也称为“永假式”，指的是无论命题变元取什么真值，这个公式都为假。比如，公式 $p \wedge \neg p$ 就是一个矛盾式，因为无论 $p$ 是真还是假，这个公式的真值都为假。

> [!Theorem]
> **常见的重言式**：设 $\varphi,\psi,\theta$ 是 $\mathcal{L}_0$ 的公式，那么：
> 1. 同一律：$\varphi \to \varphi$
> 2. 排中律：$\varphi \vee \neg \varphi$
> 3. 矛盾律：$\neg (\varphi \wedge \neg \varphi)$
> 4. 分离律：$\varphi \wedge (\varphi \to \psi) \to \psi$
> 5. 交换律：$(\varphi \wedge \psi) \leftrightarrow (\psi \wedge \varphi)$ 与 $(\varphi \vee \psi) \leftrightarrow (\psi \vee \varphi)$
> 6. 结合律：$\varphi \wedge (\psi \wedge \theta) \leftrightarrow (\varphi \wedge \psi) \wedge \theta$ 与 $\varphi \vee (\psi \vee \theta) \leftrightarrow (\varphi \vee \psi) \vee \theta$
> 7. 分配律：$\varphi \wedge (\psi \vee \theta) \leftrightarrow (\varphi \wedge \psi) \vee (\varphi \wedge \theta)$ 与 $\varphi \vee (\psi \wedge \theta) \leftrightarrow (\varphi \vee \psi) \wedge (\varphi \vee \theta)$
> 8. 德摩根律：$\neg (\varphi \wedge \psi) \leftrightarrow (\neg \varphi \vee \neg \psi)$ 与 $\neg (\varphi \vee \psi) \leftrightarrow (\neg \varphi \wedge \neg \psi)$

^c1ebf9

> **注**：利用真值表可以验证上述公式都是重言式。


