---
title: 结构与赋值
tags:
  - logic
  - first_order_logic
  - semantic
---

# 结构

<!-- structure_l_1 -->
> [!Definition]
> **结构 Structure**：设 $M$ 是一个非空集合，称为“论域 Domain”，$I$ 是定义在 $\mathrm{sig}(\mathcal{L}_1)$ 上的一个函数，称为“解释 Interpretation”。满足：
> 1. 对于 $\mathcal{L}_1$ 中，每个个体常量符号 $c$，有 $I(c)\in M$
> 2. 对于 $\mathcal{L}_1$ 中，每个 $n$ 元函数符号 $f$，有 $I(f)$ 是 $M$ 上的一个 $n$ 元函数，即 $I(f):M^n \to M$
> 3. 对于 $\mathcal{L}_1$ 中，每个 $n$ 元关系符号 $R$，有 $I(R)$ 是 $M$ 上的一个 $n$ 元关系，即 $I(R) \subseteq M^n$
>
> 则称二元组 $\mathfrak{M} = (M,I)$ 是 $\mathcal{L}_1$ 的一个结构。

> **注**：集合 $M$ 通常是某个具体的数学对象的集合，结构 $\mathfrak{M}$ 把一阶语言中的非逻辑符号解释成某个具体数学对象域上的元素、函数和关系。

<!-- variable_assignment_l_1 -->
> [!Definition]
> **变量赋值 Variable Assignment**：设 $\mathcal{L}_1$ 的一阶变元符号集合为 $\mathcal{V}$，$M$ 是 $\mathcal{L}_1$ 的一个论域，称函数 $v:\mathcal{V}\to M$ 是 $\mathcal{L}_1$ 的一个变量赋值。

> **注**：$\mathcal{L}_1$ 的公式中除了非逻辑符号外，还有个体变元符号。变量赋值给每个个体变元指定论域中的一个对象。

<!-- term_assignment_l_1 -->
> [!Definition]
> **项的赋值 Term Assignment**：设 $\mathcal{L}_1$ 的项的集合为 $\mathcal{T}$，$\mathfrak{M} = (M,I)$ 是 $\mathcal{L}_1$ 的一个结构，$v$ 是 $\mathcal{L}_1$ 的一个变量赋值。定义项的赋值函数 $\bar{v}:\mathcal{T}\to M$，满足：
> 1. $\bar{v}(x) = v(x)$，其中 $x$ 是个体变元符号
> 2. $\bar{v}(c) = I(c)$，其中 $c$ 是个体常项符号
> 3. $\bar{v}(f(\tau_1,\cdots,\tau_n)) = I(f)(\bar{v}(\tau_1),\cdots,\bar{v}(\tau_n))$，其中 $f$ 是 $n$ 元函数符号，$\tau_1,\cdots,\tau_n$ 是项