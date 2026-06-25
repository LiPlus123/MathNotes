# 环的基本概念

## 环的定义

<!-- ring_def -->
> [!Definition]
> **环 Ring**：设 $R$ 为非空集合，$+: R \times R \to R$（加法）和 $\cdot: R \times R \to R$（乘法）为两个二元运算。若满足：
> 1. $(R, +)$ 是阿贝尔群（加法单位元记为 $0$，$a$ 的加法逆元记为 $-a$）；
> 2. $\cdot$ 满足**结合律**：$(a \cdot b) \cdot c = a \cdot (b \cdot c)$；
> 3. $\cdot$ 对 $+$ 满足**分配律**：$a \cdot (b + c) = a \cdot b + a \cdot c$，$(b + c) \cdot a = b \cdot a + c \cdot a$；
>
> 则称 $(R, +, \cdot)$ 为一个**环**。

<!-- commutative_ring_def -->
> [!Definition]
> **交换环 Commutative Ring**：若环 $(R, +, \cdot)$ 的乘法还满足**交换律**，即对所有 $a, b \in R$ 有 $a \cdot b = b \cdot a$，则称 $(R, +, \cdot)$ 为**交换环**。

<!-- ring_with_unity_def -->
> [!Definition]
> **含幺环 Ring with Unity**：若环 $(R, +, \cdot)$ 中存在乘法**单位元**（幺元）$1 \in R$，使得对所有 $a \in R$ 有 $1 \cdot a = a \cdot 1 = a$，则称 $(R, +, \cdot)$ 为**含幺环**（或**幺环**）。

> **注**：本笔记中，除特别声明外，环均指含幺环。乘法单位元有时记为 $1_R$ 以与其他环的单位元区分。

<!-- zero_divisor_def -->
> [!Definition]
> **零因子 Zero Divisor**：在环 $(R, +, \cdot)$ 中，若存在非零元素 $a, b \in R$ 使得 $a \cdot b = 0$，则称 $a$ 为**左零因子**，$b$ 为**右零因子**，统称为**零因子**。

<!-- domain_def -->
> [!Definition]
> **整环 Integral Domain**：若交换含幺环 $R$ 中 $1 \neq 0$ 且没有零因子，则称 $R$ 为**整环**。

<!-- division_ring_def -->
> [!Definition]
> **除环 Division Ring**：若含幺环 $R$ 中 $1 \neq 0$，且每个非零元素都有乘法逆元（即 $R^\times = R \setminus \{0\}$），则称 $R$ 为**除环**（或**体**）。若除环还是交换环，则称为**域 Field**。

## 环的基本性质

<!-- ring_zero_mult -->
> [!Theorem]
> **零元的乘法性质**：在环 $R$ 中，对所有 $a \in R$，有 $a \cdot 0 = 0 \cdot a = 0$。
>
> **证明思路**：由 $a \cdot 0 = a \cdot (0 + 0) = a \cdot 0 + a \cdot 0$，在两侧加 $-(a \cdot 0)$ 即得 $a \cdot 0 = 0$；类似得 $0 \cdot a = 0$。

<!-- ring_neg_mult -->
> [!Theorem]
> **负元的乘法性质**：在环 $R$ 中，对所有 $a, b \in R$，有
> $$
> (-a) \cdot b = a \cdot (-b) = -(a \cdot b), \quad (-a)(-b) = ab
> $$
>
> **证明思路**：由 $ab + (-a)b = (a + (-a))b = 0 \cdot b = 0$ 知 $(-a)b = -(ab)$；类似得 $a(-b) = -(ab)$；从而 $(-a)(-b) = -(a(-b)) = -( -(ab)) = ab$。

<!-- ring_unity_unique -->
> [!Theorem]
> **单位元唯一性**：含幺环 $R$ 中，乘法单位元唯一。
>
> **证明思路**：设 $e, e'$ 均为单位元，则 $e = e \cdot e' = e'$。

<!-- domain_cancellation -->
> [!Theorem]
> **整环的消去律 Cancellation Law**：在整环 $R$ 中，若 $a \neq 0$ 且 $ab = ac$，则 $b = c$。
>
> **证明思路**：由 $ab = ac$ 得 $a(b - c) = 0$，因 $a \neq 0$ 且 $R$ 无零因子，故 $b - c = 0$，即 $b = c$。

## 环的例子

<!-- ring_example_integers -->
> [!Example]+
> **整数环**：$(\mathbb{Z}, +, \cdot)$ 是交换整环，单位元为 $1$。其可逆元（单位）仅为 $\pm 1$。

<!-- ring_example_Zn -->
> [!Example]+
> **剩余类环**：$\mathbb{Z}/n\mathbb{Z}$（$n \geq 2$）关于模 $n$ 加法和乘法构成交换含幺环。当 $n$ 为素数时，$\mathbb{Z}/n\mathbb{Z}$ 是域；当 $n$ 为合数时，$\mathbb{Z}/n\mathbb{Z}$ 有零因子。

<!-- ring_example_matrix -->
> [!Example]+
> **矩阵环**：$n \times n$ 矩阵集合 $M_n(R)$（$R$ 为含幺环）关于矩阵加法和乘法构成含幺环，单位元为单位矩阵 $I_n$。当 $n \geq 2$ 且 $R$ 非零时，$M_n(R)$ 是非交换环且有零因子。

<!-- ring_example_direct_product -->
> [!Example]+
> **直积环**：若 $R, S$ 为环，则笛卡尔积 $R \times S$ 关于逐分量加法和乘法构成环，称为 $R$ 与 $S$ 的**直积**。$R \times S$ 有零因子（如 $(1, 0) \cdot (0, 1) = (0, 0)$），故即使 $R, S$ 均为整环，$R \times S$ 也不是整环。
