# 多项式的定义 Polynomial Definition

## 数域

<!-- number_field_def -->
> [!Definition]
> **数域 Number Field**：设 $K$ 是复数集 $\mathbb{C}$ 的一个子集，若 $K$ 满足：
> 1. $0, 1 \in K$；
> 2. 对任意 $a, b \in K$，有 $a + b,\, a - b,\, ab \in K$；
> 3. 对任意 $a \in K,\, b \in K \setminus \{0\}$，有 $a / b \in K$，
>
> 则称 $K$ 为一个**数域**（number field）。

> **注**：常见的数域包括有理数域 $\mathbb{Q}$、实数域 $\mathbb{R}$、复数域 $\mathbb{C}$，以及它们之间的各种代数扩张。可以证明，$\mathbb{Q}$ 是最小的数域，即任意数域都包含 $\mathbb{Q}$。

## 多项式

<!-- polynomial_def -->
> [!Definition]
> **一元多项式 Univariate Polynomial**：设 $K$ 是一个数域，$x$ 是一个未定元（indeterminate）。形如
> $$f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 = \sum_{i=0}^{n} a_i x^i$$
> 的形式表达式称为数域 $K$ 上（关于 $x$ 的）**一元多项式**（univariate polynomial），其中 $n \in \mathbb{N}$，各**系数**（coefficient）$a_i \in K$。$a_i x^i$ 称为 $f(x)$ 的 **$i$ 次项**（term of degree $i$）。

> **注**：$x$ 是形式符号，不代表特定数值。本章中"多项式"均指一元多项式，简称**多项式**（polynomial）。

## 多项式的次数

<!-- polynomial_degree_def -->
> [!Definition]
> **次数、首项与常数项 Degree, Leading Term, Constant Term**：设 $f(x) = \sum_{i=0}^{n} a_i x^i$ 是数域 $K$ 上的多项式。
> - 若 $a_n \neq 0$（而更高次项系数均为零），则称 $n$ 为 $f(x)$ 的**次数**（degree），记为 $\deg f = n$；$a_n$ 称为 $f(x)$ 的**首项系数**（leading coefficient），$a_n x^n$ 称为**首项**（leading term），$a_0$ 称为**常数项**（constant term）。
> - 若 $f(x)$ 的所有系数均为零，则称 $f(x)$ 为**零多项式**（zero polynomial），记为 $f(x) = 0$；零多项式的次数不定义（或约定为 $-\infty$）。
> - 次数为 $n$ 的多项式称为 **$n$ 次多项式**（polynomial of degree $n$）；次数为 $0$ 的非零多项式（即非零常数）称为**零次多项式**。

<!-- monic_polynomial_def -->
> [!Definition]
> **首一多项式 Monic Polynomial**：若多项式 $f(x)$ 的首项系数为 $1$，则称 $f(x)$ 为**首一多项式**（monic polynomial）。

## 多项式的相等

<!-- polynomial_equality_def -->
> [!Definition]
> **多项式相等 Polynomial Equality**：称两个多项式 $f(x) = \sum_{i \geq 0} a_i x^i$ 与 $g(x) = \sum_{i \geq 0} b_i x^i$ **相等**，记为 $f(x) = g(x)$，当且仅当对所有 $i \geq 0$ 均有 $a_i = b_i$（即对应次项的系数全部相同）。

> **注**：多项式相等是**形式等式**，由系数逐项决定，与作为函数的值域无关。数域 $K$ 上的多项式 $f(x)$ 确定一个多项式函数 $K \to K,\, a \mapsto f(a)$，但两个不同的多项式可以对应相同的多项式函数（对有限域成立；对无限域，多项式相等当且仅当对应函数相等）。
