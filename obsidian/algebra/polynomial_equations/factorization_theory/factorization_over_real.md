# 实数域上的因式分解 Factorization Over $\mathbb{R}$

## 不可约多项式的刻画

<!-- real_irreducible_characterization_theorem -->
> [!Theorem]
> **实数域上不可约多项式刻画 Characterization of Irreducibles in $\mathbb{R}[x]$**：$\mathbb{R}[x]$ 中不可约多项式恰为以下两类：
> - 一次多项式；
> - 判别式小于 $0$ 的二次多项式。

> **证明思路**：任意次数至少为 $3$ 的实系数多项式，若有实根则可约；若无实根，则其复根成共轭对出现，可提取一个实二次因子，仍可约。对二次多项式 $ax^2+bx+c$，当且仅当 $\Delta=b^2-4ac<0$ 时无实根，从而在 $\mathbb{R}[x]$ 中不可再分解为线性因子。

## 标准分解形式

<!-- real_polynomial_factorization_structure_theorem -->
> [!Theorem]
> **实系数多项式分解结构 Factorization Structure in $\mathbb{R}[x]$**：任意非零 $f(x)\in\mathbb{R}[x]$ 都可写成
> $$f(x)=a\prod_{i=1}^{r}(x-\alpha_i)^{m_i}\prod_{j=1}^{s}q_j(x)^{n_j},$$
> 其中 $a\in\mathbb{R}\setminus\{0\}$，$\alpha_i\in\mathbb{R}$，$q_j(x)$ 为在 $\mathbb{R}[x]$ 中不可约的二次多项式（等价于其判别式为负）。

> **证明思路**：先在 $\mathbb{C}[x]$ 中分解为线性因子，再将非实根按共轭对配对。设 $z=a+bi$（$a,b\in\mathbb{R},b\neq0$），则
> $$(x-z)(x-\bar z)=x^2-2ax+(a^2+b^2)\in\mathbb{R}[x],$$
> 从而得到实系数的一次与二次不可约因子分解。