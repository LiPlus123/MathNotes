---
title: 满足关系
tags:
  - logic
  - first_order_logic
  - semantic
---

# 满足关系

<!-- satisfaction_relation_l_1 -->
> [!Definition]
> **满足关系 Satisfaction Relation**：设 $\varphi$ 是 $\mathcal{L}_1$ 的一个公式，$\mathfrak{M} = (M,I)$ 是 $\mathcal{L}_1$ 的一个结构，$v$ 是 $\mathcal{L}_1$ 的一个变量赋值，$\bar{v}$ 是由 $v$ 诱导的项的赋值函数。$\mathfrak{M}, v$ 满足公式 $\varphi$，记为 $(\mathfrak{M},v) \models \varphi$，定义为：
> 1. 如果公式 $\varphi = \tau_1 \simeq \tau_2$，那么 $(\mathfrak{M},v) \models \varphi$ 当且仅当 $\bar{v}(\tau_1) = \bar{v}(\tau_2)$
> 2. 如果公式 $\varphi = R(\tau_1,\cdots,\tau_n)$，那么 $(\mathfrak{M},v) \models \varphi$ 当且仅当 $(\bar{v}(\tau_1),\cdots,\bar{v}(\tau_n)) \in I(R)$
> 3. 如果公式 $\varphi = \neg \psi$，那么 $(\mathfrak{M},v) \models \varphi$ 当且仅当 $(\mathfrak{M},v)\models \psi$ 不成立
> 4. 如果公式 $\varphi = \psi \to \theta$，那么 $(\mathfrak{M},v) \models \varphi$ 当且仅当 $(\mathfrak{M},v) \models \psi$ 不成立或者 $(\mathfrak{M},v) \models \theta$
> 5. 如果公式 $\varphi = \forall x \psi$，那么 $(\mathfrak{M},v) \models \varphi$ 当且仅当对于任意 $m\in M$，都有 $(\mathfrak{M},v[x/m]) \models \psi$，其中 $v[x/m]$ 是一个新的变量赋值函数，定义为： 
> $$
> v[x/m](y) := \begin{cases}
> m &  y = x \\
> v(y) & y \neq x
> \end{cases}
> $$
> 设 $\Gamma$ 是 $\mathcal{L}_1$ 的一个公式集，如果任意 $\varphi \in \Gamma$，都有 $(\mathfrak{M},v) \models \varphi$，那么称 $\mathfrak{M},v$ 满足 $\Gamma$，记为 $(\mathfrak{M},v) \models \Gamma$。

<!-- not_satisfaction_relation_l_1 -->
> [!Definition]
> **不满足关系 Not Satisfaction Relation**：设 $\varphi$ 是 $\mathcal{L}_1$ 的一个公式，$\mathfrak{M} = (M,I)$ 是 $\mathcal{L}_1$ 的一个结构，$v$ 是 $\mathcal{L}_1$ 的一个变量赋值。如果 $(\mathfrak{M}, v) \models \varphi$ 不成立，那么称 $\mathfrak{M}, v$ 不满足公式 $\varphi$，记为 $(\mathfrak{M},v) \not\models \varphi$。

> [!Theorem]
> 设 $\varphi,\psi$ 是 $\mathcal{L}_1$ 的公式，$\tau_1,\tau_2$ 是 $\mathcal{L}_1$ 的项，$\mathfrak{M} = (M,I)$ 是 $\mathcal{L}_1$ 的一个结构，$v$ 是 $\mathcal{L}_1$ 的一个变量赋值。则有：
> 1. $(\mathfrak{M},v) \models \exists x \psi$ 当且仅当存在某个 $m \in M$，使得 $(\mathfrak{M},v[x/m]) \models \psi$。
> 2. $(\mathfrak{M},v) \models \varphi \wedge \psi$ 当且仅当 $(\mathfrak{M},v) \models \varphi$ 且 $(\mathfrak{M},v) \models \psi$。
> 3. $(\mathfrak{M},v) \models \varphi \vee \psi$ 当且仅当 $(\mathfrak{M},v) \models \varphi$ 或者 $(\mathfrak{M},v) \models \psi$。
> 4. $(\mathfrak{M},v) \models \varphi \leftrightarrow \psi$ 当且仅当 $(\mathfrak{M},v) \models \varphi$ 与 $(\mathfrak{M},v) \models \psi$ 同时成立或者同时不成立。
> 5. $(\mathfrak{M},v) \models \tau_1 \not\simeq \tau_2$ 当且仅当 $\bar{v}(\tau_1) \neq \bar{v}(\tau_2)$。

> **注**：一阶语言的语义由结构、赋值和满足关系共同决定，结构解释非逻辑符号，赋值解释自由变元，满足关系递归地规定公式什么时候为真。

<!-- semantic_consequence_l_1 -->
> [!Definition]
> **语义后承 Semantic Consequence**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的一个公式集，$\varphi$ 是 $\mathcal{L}_1$ 的一个公式，如果对于任意结构 $\mathfrak{M}$ 和赋值 $v$，当 $(\mathfrak{M},v) \models \Gamma$ 时都有 $(\mathfrak{M},v) \models \varphi$，那么称 $\varphi$ 是 $\Gamma$ 的一个语义后承，记为
> $$
> \Gamma \models \varphi
> $$

> **注**：一阶语言的语义后承类似于命题逻辑中的语义后承，任何满足 $\Gamma$ 的结构与赋值也满足 $\varphi$。在语法层面，$\Gamma\models \varphi$ 对应 $\Gamma\vdash \varphi$ 也即 $\Gamma$ “必然推出” $\varphi$。

> [!Theorem]
> 设 $\Gamma$ 是 $\mathcal{L}_1$ 的一个公式集，$\varphi,\psi$ 是 $\mathcal{L}_1$ 的公式，那么：
> $$
> \Gamma\cup \{\varphi\} \models \psi\quad \text{当且仅当}\quad \Gamma \models \varphi \to \psi
> $$