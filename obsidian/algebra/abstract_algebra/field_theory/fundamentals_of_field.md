# 域的基本概念

## 域的定义

<!-- field_def -->
> [!Definition]
> **域 Field**：设 $(F, +, \cdot)$ 为交换含幺环，且 $1 \neq 0$。若对每个 $a \in F$ 且 $a \neq 0$，都存在 $a^{-1} \in F$ 使得
> $$
> a \cdot a^{-1} = a^{-1} \cdot a = 1
> $$
> 则称 $F$ 为一个**域**。

<!-- field_subfield_def -->
> [!Definition]
> **子域 Subfield**：设 $F, E$ 为域，若 $F \subseteq E$ 且 $F$ 在 $E$ 的加法与乘法下仍构成域，则称 $F$ 是 $E$ 的**子域**，记为 $F \leq E$。

## 域的基本性质

<!-- field_nonzero_multiplicative_group -->
> [!Theorem]
> **非零元乘法群**：设 $F$ 为域，则 $F^\times = F \setminus \{0\}$ 在乘法下构成阿贝尔群。
>
> **证明思路**：乘法结合律与交换律来自环结构；单位元为 $1$；每个非零元在域中按定义有逆元。

<!-- field_no_zero_divisors -->
> [!Theorem]
> **域无零因子**：设 $F$ 为域，若 $ab = 0$，则 $a = 0$ 或 $b = 0$。
>
> **证明思路**：若 $a \neq 0$，左乘 $a^{-1}$ 得 $b = 0$。

<!-- field_cancellation_law -->
> [!Corollary]
> **消去律**：设 $F$ 为域，$a \neq 0$，则 $ab = ac \Rightarrow b = c$。
>
> **证明思路**：由 $ab = ac$ 得 $a(b-c)=0$，结合无零因子可得 $b-c=0$。

<!-- field_characteristic_def -->
> [!Definition]
> **域的特征 Characteristic of a Field**：设 $F$ 为域。若存在最小正整数 $n$ 使得
> $$
> \underbrace{1 + 1 + \cdots + 1}_{n\text{ 次}} = 0,
> $$
> 则称 $\mathrm{char}(F)=n$；若不存在这样的 $n$，称 $\mathrm{char}(F)=0$。

<!-- field_characteristic_prime -->
> [!Theorem]
> **域特征为 $0$ 或素数**：若 $F$ 为域，则 $\mathrm{char}(F)=0$ 或 $\mathrm{char}(F)=p$（$p$ 为素数）。
>
> **证明思路**：若 $\mathrm{char}(F)=n>0$ 且 $n=ab$（$1<a,b<n$），则 $(a\cdot 1)(b\cdot 1)=n\cdot 1=0$，与域无零因子矛盾。

<!-- field_prime_subfield_theorem -->
> [!Theorem]
> **素域存在且唯一**：每个域 $F$ 含有唯一最小子域，称为 $F$ 的**素域**。当 $\mathrm{char}(F)=0$ 时该素域同构于 $\mathbb{Q}$；当 $\mathrm{char}(F)=p$ 时同构于 $\mathbb{F}_p$。
>
> **证明思路**：由单位元 $1$ 生成的最小子环在域内封闭取逆后得到最小子域，其结构由特征决定。

## 例子

<!-- field_example_Q_R_C -->
> [!Example]+
> **经典数域**：$\mathbb{Q}, \mathbb{R}, \mathbb{C}$ 都是特征为 $0$ 的域，且
> $$
> \mathbb{Q} \leq \mathbb{R} \leq \mathbb{C}.
> $$

<!-- field_example_finite_prime_field -->
> [!Example]+
> **素域 $\mathbb{F}_p$**：对任意素数 $p$，$\mathbb{F}_p = \mathbb{Z}/p\mathbb{Z}$ 是特征为 $p$ 的有限域。
