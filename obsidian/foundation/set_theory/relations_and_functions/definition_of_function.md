---
title: 函数的定义
tags:
  - set_theory
  - foundation
  - function
---

# 函数的定义

函数是特殊的二元关系，它要求每个输入至多对应一个输出。集合论把函数解释为满足单值性的有序对集合，这使函数运算也能完全在集合语言中表达。

<!-- function_definition -->
> [!Definition]
> **函数 Function**：设 $f \subseteq A \times B$ 为二元关系。若对每个 $a \in A$，存在唯一的 $b \in B$ 使得 $(a,b) \in f$，则称 $f$ 是从 $A$ 到 $B$ 的一个**函数**，记作
> $$
> f: A \to B.
> $$
> 对应的唯一元素 $b$ 记作 $f(a)$。

<!-- domain_and_range_definition -->
> [!Definition]
> **定义域、陪域、像集 Domain, Codomain and Image**：设 $f: A \to B$ 是函数。称 $A$ 为 $f$ 的**定义域**，$B$ 为 $f$ 的**陪域**，并定义
> $$
> \mathrm{Im}(f) := \{f(a) \mid a \in A\}
> $$
> 为 $f$ 的**像集**。

<!-- image_and_preimage_definition -->
> [!Definition]
> **像与原像 Image and Preimage**：设 $f: A \to B$。
> 1. 对任意 $X \subseteq A$，定义其**像**为
> $$
> f(X) := \{f(x) \mid x \in X\};
> $$
> 2. 对任意 $Y \subseteq B$，定义其**原像**为
> $$
> f^{-1}(Y) := \{x \in A \mid f(x) \in Y\}.
> $$

<!-- injective_surjective_bijective_definition -->
> [!Definition]
> **单射、满射与双射 Injective, Surjective and Bijective**：设 $f: A \to B$。
> 1. 若对任意 $a_1,a_2 \in A$，$f(a_1)=f(a_2)$ 蕴含 $a_1=a_2$，则称 $f$ 为**单射**；
> 2. 若对任意 $b \in B$，存在 $a \in A$ 使 $f(a)=b$，则称 $f$ 为**满射**；
> 3. 若 $f$ 既是单射又是满射，则称 $f$ 为**双射**。

<!-- inverse_function_definition -->
> [!Definition]
> **逆函数 Inverse Function**：若双射 $f: A \to B$ 满足对每个 $b \in B$，存在唯一 $a \in A$ 使 $f(a)=b$，则定义函数
> $$
> f^{-1}: B \to A
> $$
> 使得 $f^{-1}(b)=a$。该函数称为 $f$ 的**逆函数**。

<!-- composition_of_functions_definition -->
> [!Definition]
> **函数的复合 Composition of Functions**：设 $f: A \to B$ 与 $g: B \to C$ 是函数。定义
> $$
> g \circ f: A \to C,
> $$
> 其中
> $$
> (g \circ f)(a) := g(f(a)).
> $$

<!-- function_basic_properties -->
> [!Theorem]
> **函数运算的基本性质 Basic Properties of Functions**：设 $f: A \to B$，$g: B \to C$，$h: C \to D$。
> 1. $h \circ (g \circ f) = (h \circ g) \circ f$；
> 2. 若 $f$ 双射，则 $f^{-1} \circ f = \mathrm{id}_A$ 且 $f \circ f^{-1} = \mathrm{id}_B$；
> 3. 复合两个单射仍为单射，复合两个满射仍为满射，复合两个双射仍为双射。
> 
> **证明思路**：第一条逐点计算即可。第二条由逆函数定义直接得到。第三条分别展开单射与满射定义验证。