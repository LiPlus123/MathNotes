---
title: 项与公式的形成规则
tags:
  - logic
  - first_order_logic
  - syntax
---
# 项与公式的形成规则

<!-- term_l_1 -->
> [!Definition]
> **项 Term**：$\mathcal{L}_1$ 的项有如下递归定义：
> 1. 每个个体变元符号都是 $\mathcal{L}_1$ 的项
> 2. 每个个体常项符号都是 $\mathcal{L}_1$ 的项
> 3. 设 $f$ 是 $n$ 元函数符号，$\tau_1,\cdots,\tau_n$ 是项，那么 $f(\tau_1,\cdots,\tau_n)$ 也是项
> 
> 只有根据以上规则有限次使用得到的字符串才是 $\mathcal{L}_1$ 的项，除此之外没有别的项。

> **注**：个体变元和个体常项是项，类比于传统逻辑学中的“词项”。$f(\tau_1,\cdots,\tau_n)$ 输入 $n$ 个项，输出 $1$ 个项，函数符号用于构造更复杂的项。

> [!Example]+
> 以下是 $\mathcal{L}_1$ 的一些项：
> - $x_0$
> - $c_0$
> - $f(x_0,c_0)$
> - $g(x_0,c_0,f(x_0,c_0))$

<!-- atomic_formula_l_1 -->
> [!Definition]
> **原子公式 Atomic Formula**：$\mathcal{L}_1$ 的原子公式有两类：
> 1. 设 $R$ 是 $n$ 元关系符号，$\tau_1,\cdots,\tau_n$ 是项，那么 $R(\tau_1,\cdots,\tau_n)$ 是 $\mathcal{L}_1$ 的原子公式
> 2. 设 $\tau_1$ 和 $\tau_2$ 是项，那么 $\tau_1 \simeq \tau_2$ 是 $\mathcal{L}_1$ 的原子公式

<!-- formula_l_1 -->
> [!Definition]
> **公式 Formula**：$\mathcal{L}_1$ 的公式有如下递归定义：
> 1. 每个原子公式都是 $\mathcal{L}_1$ 的公式
> 2. 如果 $\varphi$ 是 $\mathcal{L}_1$ 的公式，那么 $\neg \varphi$ 也是 $\mathcal{L}_1$ 的公式
> 3. 如果 $\varphi$ 和 $\psi$ 是 $\mathcal{L}_1$ 的公式，那么 $(\varphi \to \psi)$ 也是 $\mathcal{L}_1$ 的公式
> 4. 如果 $\varphi$ 是 $\mathcal{L}_1$ 的公式，$x$ 是个体变元符号，那么 $\forall x \varphi$ 也是 $\mathcal{L}_1$ 的公式
> 
> 只有根据以上规则有限次使用得到的字符串才是 $\mathcal{L}_1$ 的公式，除此之外没有别的公式。

> **注**：原子公式是一阶语言的公式递归定义的“终点”，它是构成公式的基础，其地位类似于 $\mathcal{L}_0$ 的命题变元。$\mathcal{L}_1$ 和 $\mathcal{L}_0$ 的公式，类比于传统逻辑学中的“命题”。

> [!Example]+
> 以下是 $\mathcal{L}_1$ 的一些公式：
> - $R(x_0,c_0)$
> - $R(f(x_0,c_0),c_0)$
> - $f(x_0,c_0) \simeq g(x_1,c_1)$
> - $\neg (\forall x_0 R(x_0,c_0))$
> - $\forall x (R(x,c)\to S(y))$
> - $(\forall x_0 (\neg R_0(c_1,c_2))) \to (\neg (\forall x_1 (\forall x_2 R_1(x_1,x_2))))$

> [!Example]+
> 以下不是 $\mathcal{L}_1$ 的公式：
> - $f(x)$
> - $x_1 \to c_1$
> - $R(x_0,c_0$
> - $R(f(x_0,c_0),c_0$
> - $\simeq g(x_1,c_1), f(x_0,c_0)$
> - $\forall \neg x_0 R(x_0,c_0)$
> - $\forall \to R_0(c_1,c_2)$