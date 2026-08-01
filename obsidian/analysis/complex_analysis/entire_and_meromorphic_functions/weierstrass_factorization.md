# Weierstrass 因子分解定理

## Weierstrass 初等因子

<!-- weierstrass_primary_factor_definition -->
> [!Definition]
> **Weierstrass 初等因子 Weierstrass Primary Factor**：对整数 $p\ge0$，定义
> $$
> E_p(w)=(1-w)\exp\left(w+\frac{w^2}{2}+\cdots+\frac{w^p}{p}\right),
> $$
> 其中 $E_0(w)=1-w$。当 $w\to0$ 时，
> $$
> \log E_p(w)=O(w^{p+1}),
> $$
> 因而初等因子可用于控制无穷乘积的收敛性。

<!-- weierstrass_primary_factor_bound -->
> [!Lemma]
> **初等因子的估计 Estimate for Primary Factors**：对每个 $p\ge0$，存在常数 $C_p>0$，使得当 $|w|\le1/2$ 时，
> $$
> |1-E_p(w)|\le C_p|w|^{p+1}.
> $$
>
> **证明思路**：对 $\log E_p(w)$ 在 $w=0$ 处展开，前 $p$ 次项被指数因子抵消，再在小圆盘上估计余项。

<!-- weierstrass_factorization_theorem -->
> [!Theorem]
> **Weierstrass 因子分解定理 Weierstrass Factorization Theorem**：设 $(a_n)$ 是一列趋于无穷的非零复数，允许按重数重复。则存在非负整数列 $(p_n)$，使得
> $$
> \prod_{n=1}^{\infty}E_{p_n}\left(\frac{z}{a_n}\right)
> $$
> 在紧集上一致收敛，并定义一个整函数，其零点恰为 $(a_n)$，重数相同；此外在 $z=0$ 处无零点。
>
> **证明思路**：选取 $p_n$ 使得 $\sum_n|a_n|^{-(p_n+1)}$ 收敛，再应用初等因子的估计和函数项无穷乘积理论。

<!-- weierstrass_factorization_zero_set -->
> [!Theorem]
> **给定零点的整函数构造 Entire Function with Prescribed Zeros**：任意离散零点集 $\{a_n\}\subseteq\mathbb{C}\setminus\{0\}$，连同每个零点的有限重数，都可以作为某个整函数的全部非零零点；零点 $0$ 的重数可由有限次乘以 $z^m$ 加入。
>
> **证明思路**：直接应用 Weierstrass 因子分解定理；任意两个具有同一零点除重数的构造，其商是无零点整函数，但不必相同。

<!-- weierstrass_factorization_nonuniqueness -->
> [!Corollary]
> **因子分解的非唯一性 Nonuniqueness of Factorizations**：若 $F$ 是由 Weierstrass 乘积构造的整函数，$g$ 是任意整函数，则
> $$
> e^{g(z)}F(z)
> $$
> 与 $F$ 具有完全相同的零点及重数。
>
> **证明思路**：指数函数处处非零，因此乘法不会改变零点；这也是进一步规范化因子分解的必要原因。

> **注**：Weierstrass 初等因子和因子分解定理参见 John B. Conway, *Functions of One Complex Variable I*, Chapter 5，以及 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 8。
