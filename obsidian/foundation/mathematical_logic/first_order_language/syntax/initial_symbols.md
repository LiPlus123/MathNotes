---
title: 初始符号
tags:
  - logic
  - first_order_logic
  - syntax
---

# 初始符号

<!-- initial_symbol_l_1 -->
> [!Definition]
> **一阶语言的初始符号 Initial Symbol**：一阶谓词逻辑语言记为 $\mathcal{L}_1$，其初始符号包括逻辑符号和非逻辑符号：
> - 逻辑符号：
>   - 个体变元符号：$x,y,z$ 和 $x_0,x_1,x_2,\cdots$
>   - 初始连接词符号：$\neg$ 和 $\to$
>   - 量词符号：$\forall$
>   - 语法逗号：$,$
>   - 括号：$($ 和 $)$
>   - 等词符号：$\simeq$
> - 非逻辑符号：
>   - 个体常项符号：$c$ 和 $c_0,c_1,c_2,\cdots$
>   - 函数符号：$f,g,h$ 和 $f_0,f_1,f_2,\cdots$
>   - 关系符号：$R,S$ 和 $R_0,R_1,R_2,\cdots$

> **注**：在一阶逻辑的初始符号中：
> 1. 关系符号也称为“谓词符号”，在语义层面，它表示“项”之间的关系和属性。函数符号输入 $n$ 个项，输出 $1$ 个项。一阶语言的非逻辑符号都有“元数”的概念，其中个体常项比较特殊，它的元数为 $0$。
> 2. 等词符号 $\simeq$ 可以看成是一个特殊的二元关系符号，在语义层面，它表示两个项指称的对象相同。在有的教材并不单列等词符号，这里单列出来，是为了强调它在一阶逻辑中的重要性和特殊性，并于 $=$ 和 $\Leftrightarrow$ 区分开来。
> 3. $\forall$ 全称为“全称量词符号 Universal Quantifier”，另外还有“存在量词符号”——$\exists$，但 $\exists$ 不属于初始符号，后续会给出定义。一阶逻辑全称“一阶谓词逻辑”，是量词只允许作用在个体变元上的逻辑。如果量词允许作用在“谓词符号”上，允许量化“性质”，那么称为二阶谓词逻辑，记为 $\mathcal{L}_2$。更进一步，如果允许量化“性质的性质”，则称为三阶谓词逻辑……
> 4. 逻辑符号中，$\neg$ 和 $\to$ 同命题逻辑的初始连接词，命题逻辑中没有量词的概念，因此记为 $\mathcal{L}_0$。其他逻辑连接词符号 $\wedge$、$\vee$、$\leftrightarrow$ 也可以通过 $\neg$ 和 $\to$ 定义出来，因此不属于初始符号。

<!-- signature_l_0 -->
> [!Definition]
> **一阶语言的签名 Signature**：设 $\mathcal{L}_1$ 中，全体函数符号的集合记为 $\mathcal{F}$，全体个体常项符号的集合记为 $\mathcal{C}$，全体关系符号的集合记为 $\mathcal{R}$，那么该一阶语言的签名记为 $\mathrm{sig}(\mathcal{L}_1)$，定义为：
> $$
> \mathrm{sig}(\mathcal{L}_1) = \mathcal{F}\cup\mathcal{C}\cup\mathcal{R}
> $$
> 特别地，
> 1. 如果 $\mathcal{C},\mathcal{F}=\varnothing$，那么称 $\mathrm{sig}(\mathcal{L}_1)$ 为“关系签名”，称 $\mathcal{L}_1$ 为“关系语言”
> 2. 如果 $\mathcal{R}=\varnothing$，那么称 $\mathrm{sig}(\mathcal{L}_1)$ 为“代数签名”，称 $\mathcal{L}_1$ 为“代数语言”

> **注**：签名是一阶语言的所有非逻辑符号的集合，在具体的一阶语言系统中，会有不同的签名。

> [!Example]+
> 3. 一阶群语言的签名为 $\mathrm{sig}(\mathcal{L}_1) = \{\circ,e\}$，其中 $\circ$ 是二元函数符号，$e$ 是个体常项符号、一阶群语言是一种代数语言
> 4. 一阶序语言的签名为 $\mathrm{sig}(\mathcal{L}_1) = \{\leq\}$，其中 $\leq$ 是二元关系符号，一阶序语言是一种关系语言
> 5. 一阶算术语言的签名为 $\mathrm{sig}(\mathcal{L}_1) = \{0,S,+,\cdot,<\}$，其中 $0$ 是个体常项符号，$S$ 是一元函数符号，$+$ 和 $\cdot$ 是二元函数符号，$<$ 是二元关系符号

<!-- arity_function -->
> [!Definition]
> **元数函数 Arity Function**：设 $\mathcal{L}_1$ 是一阶语言，$\mathrm{sig}(\mathcal{L}_1)$ 是 $\mathcal{L}_1$ 的签名，那么 $\mathrm{sig}(\mathcal{L}_1)$ 上的元数函数 $\pi:\mathrm{sig}(\mathcal{L}_1) \to \mathbb{N}$ 定义如下：
> $$
> \pi(s) = \begin{cases}
>   0 & \text{如果 } s \text{ 是个体常项符号} \\
>   n & \text{如果 } s \text{ 是 } n \text{ 元函数符号} \\
>   n & \text{如果 } s \text{ 是 } n \text{ 元关系符号}
> \end{cases}
> $$

> **注**：一阶语言的非逻辑符号有“元数”的概念，关系符号的元数在语义层面，表示有“多少个项”之间的关系和属性。函数符号输入 $n$ 个项，输出 $1$ 个项，它可以看成特殊的 $n+1$ 元关系符号。个体常项符号也可以看成特殊函数符号，它输入 $0$ 个项，输出 $1$ 个项。