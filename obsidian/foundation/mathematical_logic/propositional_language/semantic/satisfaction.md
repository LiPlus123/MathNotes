---
title: 满足关系与重言式
tags:
  - logic
  - propositional_logic
  - semantic
---

# 满足关系

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

> [!Proposition]
> 设 $\varnothing$ 是 $\mathcal{L}_0$ 的空公式集，那么任意赋值 $v$ 都满足 $\varnothing$，即 $v \models \varnothing$。

<!-- semantic_consequence_l_0 -->
> [!Definition]
> **语义后承 Semantic Consequence**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式。如果任意 $v\models \Gamma$ 也都 $v\models \varphi$，那么称 $\varphi$ 是 $\Gamma$ 的语义后承，记为：
> $$
> \Gamma \models \varphi
> $$



