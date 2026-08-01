---
title: 真值函数与赋值函数
tags:
  - logic
  - propositional_logic
  - semantic
---

# 真值函数与赋值函数

在[[mathematical_logic/propositional_logic/syntax/formation_rules|公式的形成规则]]一节中，定义了命题逻辑语言 $\mathcal{L}_0$ 的合法字符串 —— “公式”。逻辑学中，命题是能判断真假的陈述句，每个公式都是一类命题的形式化，公式本身没有意义，本节通过真值函数和赋值函数，为每个公式赋予“真”与“假”的语义。

## 真值函数

在数理逻辑中，用 $\top$ 表示“真 True”，用 $\bot$ 表示“假 False”。在很多地方，比如计算机科学中，真用自然数 $1$ 表示，假用自然数 $0$ 表示，真值与假值统称为“布尔值 Boolean”。

<!-- truth_function -->
> [!Definition]
> **真值函数 Truth Function**：设 $\{\bot,\top\}^n$ 为布尔值的 $n$ 元组集，函数 $f:\{\bot,\top\}^n \to \{\bot,\top\}$ 称为 $n$ 元真值函数，简称真值函数。

<!-- one_ary_truth_function -->
> [!Definition]
> **一元真值函数 1-ary Truth Function**：函数 $f:\{\bot,\top\} \to \{\bot,\top\}$ 称为一元真值函数。一元真值函数分为四种：
> 1. $f_1(\bot) = \top$，$f_1(\top) = \top$
> 2. $f_2(\bot) = \bot$，$f_2(\top) = \bot$
> 3. $f_3(\bot) = \bot$，$f_3(\top) = \top$
> 4. $f_4(\bot) = \top$，$f_4(\top) = \bot$

<!-- neg_truth_func -->
> [!Definition]
> **反同真值函数 Negation Truth Function**：将一元真值函数 $f_4$ 定义为 $f_{\neg}$
> $$
> f_{\neg}(b) := f_4(b) = \begin{cases}
> \bot & \text{if } b = \top \\
> \top & \text{if } b = \bot
> \end{cases}
> $$
> 称为反同真值函数。

> **注**：否定连接词在自然语言中，对应 “并非……” 的形式。反同真值函数用一个单独的真值表表示为：
> 
> | $b$ | $f_{\neg}$ |
> | --- | --- |
> | $\top$ | $\bot$ |
> | $\bot$ | $\top$ |

<!-- two_ary_truth_function -->
> [!Definition]
> **二元真值函数 2-ary Truth Function**：函数 $f:\{\bot,\top\}^2 \to \{\bot,\top\}$ 称为二元真值函数。二元真值函数分为 $2^4 = 16$ 种，编号为 $f_1,f_2,\cdots,f_{16}$。

设 $b_1,b_2 \in \{\bot,\top\}$ 为真值变量，二元真值函数表示为 $f_k(b_1,b_2),\ k=1,\cdots,16$，这 16 种二元真值函数的函数值可以用如下表格表示：

| $b_1, b_2$ | $f_1$ | $f_2$ | $f_3$ | $f_4$ | $f_5$ | $f_6$ | $f_7$ | $f_8$ | $f_9$ | $f_{10}$ | $f_{11}$ | $f_{12}$ | $f_{13}$ | $f_{14}$ | $f_{15}$ | $f_{16}$ |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| $\top,\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | 
| $\top,\bot$ | $\top$ | $\top$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | $\top$ | $\top$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\bot$ | $\bot$ | 
| $\bot,\top$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\top$ | $\top$ | $\bot$ | $\bot$ | $\top$ | $\top$ | $\bot$ | $\bot$ | 
| $\bot,\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | $\top$ | $\bot$ | 
 
 <!-- imp_truth_func -->
> [!Definition]
> **蕴含真值函数 Implication Truth Function**：定义二元真值函数 $f_{5}$ 为：
> $$
> f_{\to}(b_1, b_2) := f_{5}(b_1, b_2) = \begin{cases}
> \bot & \text{if } b_1 = \top \text{ and } b_2 = \bot \\
> \top & \text{otherwise}
> \end{cases}
> $$

> **注**：蕴含连接词在自然语言中，对应 “如果...那么...” 的形式。蕴含真值函数用一个单独的真值表表示为：
> 
> | $b_1$ | $b_2$ | $f_{\to}$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\top$ |
> | $\bot$ | $\bot$ | $\top$ |

<!-- conj_truth_func -->
> [!Definition]
> **合取真值函数 Conjunction Truth Function**：定义二元真值函数 $f_8$ 为：
> $$
> f_{\wedge}(b_1, b_2) := f_{8}(b_1, b_2) = \begin{cases}
> \top & \text{if } b_1 = \top \text{ and } b_2 = \top \\
> \bot & \text{otherwise}
> \end{cases}
> $$

> **注**：合取连接词在自然语言中，对应 “...和...” 的形式。合取真值函数用一个单独的真值表表示为：
>
> | $b_1$ | $b_2$ | $f_{\wedge}$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\bot$ |
> | $\bot$ | $\bot$ | $\bot$ |

<!--disj_truth_func -->
> [!Definition]
> **析取真值函数 Disjunction Truth Function**：定义二元真值函数 $f_2$ 为：
> $$
> f_{\vee}(b_1, b_2) := f_{2}(b_1, b_2) = \begin{cases}
> \top & \text{if } b_1 = \top \text{ or } b_2 = \top \\
> \bot & \text{otherwise}
> \end{cases}
> $$

> **注**：析取连接词在自然语言中，对应 “...或者...” 的形式。析取真值函数用一个单独的真值表表示为：
>
> | $b_1$ | $b_2$ | $f_{\vee}$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\top$ |
> | $\bot$ | $\top$ | $\top$ |
> | $\bot$ | $\bot$ | $\bot$ |

<!-- bicond_truth_func -->
> [!Definition]
> 双条件真值函数 Biconditional Truth Function：定义二元真值函数 $f_{7}$ 为：
> $$
> f_{\leftrightarrow}(b_1, b_2) := f_{7}(b_1, b_2) = \begin{cases}
> \top & \text{if } b_1 = b_2 \\
> \bot & \text{otherwise}
> \end{cases}
> $$

> **注**：双条件连接词在自然语言中，对应 “当且仅当...” 的形式。双条件真值函数用一个单独的真值表表示为：
>
> | $b_1$ | $b_2$ | $f_{\leftrightarrow}$ |
> | --- | --- | --- |
> | $\top$ | $\top$ | $\top$ |
> | $\top$ | $\bot$ | $\bot$ |
> | $\bot$ | $\top$ | $\bot$ |
> | $\bot$ | $\bot$ | $\top$ |

## 赋值函数
<!-- assignment_l_0 -->
> [!Definition]
> **赋值函数 Assignment Function**：是从命题变元集到集合 $\{\bot,\top\}$ 的函数，记为 $v$。

> **注**：赋值函数为每个命题变元指定唯一真值，比如记命题“太阳从西边出来”为 $p$，那么 $v(p) = \bot$

<!-- formula_assignment_l_0 -->
> [!Definition]
> **公式赋值函数 Formula Assignment Function**：是从 $\mathcal{L}_0$ 公式集到集合 $\{\bot,\top\}$ 的函数，记为 $\bar{v}$。公式赋值函数 $\bar{v}$ 满足：
> 1. 对任意命题变元 $p$，$\bar{v}(p) = v(p)$
> 2. 设 $\varphi$ 是公式，那么 $\bar{v}(\neg \varphi) = f_{\neg}(\bar{v}(\varphi))$
> 3. 设 $\varphi,\psi$ 是公式，那么 $\bar{v}(\varphi \to \psi) = f_{\to}(\bar{v}(\varphi),\bar{v}(\psi))$

<!-- formula_assignment_exsistence_uniqueness -->
> [!Theorem]
> **公式赋值函数的存在唯一性**：设 $v$ 是公式 $\varphi$ 中命题变元集的一个赋值，那么存在唯一一个公式赋值函数 $\bar{v}$ 满足上述条件。称 $\bar{v}$ 是由 $v$ 诱导的公式赋值函数。

<!-- conj_formula_assignment -->
> [!Theorem]
> **合取公式的赋值**：设 $\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式，那么：
> $$
> \bar{v}(\varphi \wedge \psi) = f_{\wedge}(\bar{v}(\varphi),\bar{v}(\psi))
> $$

<!-- disj_formula_assignment -->
> [!Theorem]
> **析取公式的赋值**：设 $\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式，那么：
> $$
> \bar{v}(\varphi \vee \psi) = f_{\vee}(\bar{v}(\varphi),\bar{v}(\psi))
> $$

<!-- bicond_formula_assignment -->
> [!Theorem]
> **双条件公式的赋值**：设 $\varphi,\psi$ 是 $\mathcal{L}_0$ 的公式，那么：
> $$
> \bar{v}(\varphi \leftrightarrow \psi) = f_{\leftrightarrow}(\bar{v}(\varphi),\bar{v}(\psi))
> $$

> **注**：根据[[other_connectives|合取、析取和双条件的定义]]与合取、析取和双条件的真值函数的真值表，可以证明上述定理。