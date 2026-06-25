# 幂运算与循环群

## 群元素的整数次幂

<!-- integer_power_def -->
> [!Definition]
> **整数次幂 Integer Powers**：设 $G$ 为群，$a \in G$，$n \in \mathbb{Z}$，定义 $a$ 的**整数次幂**为
> $$
> a^n = \begin{cases} \underbrace{a \cdot a \cdots a}_{n \text{ 个}} & n > 0 \\ e & n = 0 \\ \underbrace{a^{-1} \cdot a^{-1} \cdots a^{-1}}_{|n| \text{ 个}} & n < 0 \end{cases}
> $$

<!-- integer_power_laws -->
> [!Theorem]
> **幂运算法则 Laws of Integer Powers**：设 $G$ 为群，$a \in G$，$m, n \in \mathbb{Z}$，则：
> 1. $a^m \cdot a^n = a^{m+n}$；
> 2. $(a^m)^n = a^{mn}$；
> 3. 若 $G$ 为阿贝尔群，则 $(a \cdot b)^n = a^n \cdot b^n$。
>
> **证明思路**：对 $m, n$ 的正负分情况讨论，利用结合律验证。

## 循环群

<!-- cyclic_group_def -->
> [!Definition]
> **循环群 Cyclic Group**：若群 $G$ 存在元素 $a \in G$ 使得 $G = \langle a \rangle = \{a^n \mid n \in \mathbb{Z}\}$，则称 $G$ 为**循环群**，$a$ 称为 $G$ 的**生成元**。

<!-- cyclic_group_classification -->
> [!Theorem]
> **循环群的分类 Classification of Cyclic Groups**：
> 1. 若 $G = \langle a \rangle$ 且 $\mathrm{ord}(a) = \infty$，则 $G \cong (\mathbb{Z}, +)$；
> 2. 若 $G = \langle a \rangle$ 且 $\mathrm{ord}(a) = n < \infty$，则 $|G| = n$ 且 $G \cong (\mathbb{Z}/n\mathbb{Z}, +)$。
>
> **证明思路**：定义 $\varphi: \mathbb{Z} \to G$，$k \mapsto a^k$，验证这是满射同态；若 $\mathrm{ord}(a) = \infty$，则 $\varphi$ 为单射；若 $\mathrm{ord}(a) = n$，则 $\ker\varphi = n\mathbb{Z}$，故商群 $\mathbb{Z}/n\mathbb{Z} \cong G$。

<!-- cyclic_group_abelian -->
> [!Theorem]
> **循环群是阿贝尔群 Cyclic Groups are Abelian**：任意循环群都是阿贝尔群。
>
> **证明思路**：$a^m \cdot a^n = a^{m+n} = a^n \cdot a^m$。

<!-- cyclic_group_generator_count -->
> [!Theorem]
> **循环群生成元的个数 Number of Generators of Cyclic Group**：
> 1. $\mathbb{Z}$ 的生成元恰为 $\pm 1$；
> 2. $\mathbb{Z}/n\mathbb{Z}$ 的生成元恰为所有与 $n$ 互素的剩余类 $\bar{k}$（$\gcd(k, n) = 1$），共 $\varphi(n)$ 个。
>
> **证明思路**：$\bar{k}$ 为 $\mathbb{Z}/n\mathbb{Z}$ 的生成元当且仅当 $\langle \bar{k} \rangle = \mathbb{Z}/n\mathbb{Z}$，即 $k$ 模 $n$ 的阶为 $n$，等价于 $\gcd(k, n) = 1$。

## 循环群的子群

<!-- cyclic_subgroup_structure -->
> [!Theorem]
> **循环群的子群结构 Subgroup Structure of Cyclic Groups**：
> 1. 循环群的子群仍是循环群；
> 2. $\mathbb{Z}$ 的子群恰为 $n\mathbb{Z}$（$n \geq 0$）；
> 3. 有限循环群 $\mathbb{Z}/n\mathbb{Z}$ 的子群恰为 $\langle \overline{d} \rangle$（$d \mid n$），且对每个因子 $d \mid n$ 恰有一个阶为 $d$ 的子群。
>
> **证明思路**：设 $H \leq \mathbb{Z}$，若 $H \neq \{0\}$，取 $H$ 中最小正整数 $m$，则 $H = m\mathbb{Z}$；有限情形利用同构 $\mathbb{Z}/n\mathbb{Z}$ 归结。

## 例子

<!-- cyclic_group_example_Zn -->
> [!Example]+
> **模 $n$ 加法群 Additive Group mod n**：$\mathbb{Z}/n\mathbb{Z} = \{\bar{0}, \bar{1}, \ldots, \overline{n-1}\}$ 是阶为 $n$ 的循环群，以 $\bar{1}$ 为生成元。例如 $\mathbb{Z}/6\mathbb{Z}$ 的子群为 $\langle \bar{1} \rangle, \langle \bar{2} \rangle, \langle \bar{3} \rangle, \langle \bar{6} \rangle = \{\bar{0}\}$，对应阶分别为 $6, 3, 2, 1$。

<!-- cyclic_group_example_roots_of_unity -->
> [!Example]+
> **$n$ 次单位根群 Group of $n$-th Roots of Unity**：$\mu_n = \{e^{2\pi i k/n} \mid k = 0, 1, \ldots, n-1\}$ 在复数乘法下构成阶为 $n$ 的循环群，以 $e^{2\pi i/n}$ 为生成元，与 $\mathbb{Z}/n\mathbb{Z}$ 同构。
