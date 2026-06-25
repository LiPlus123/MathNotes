# 复数域上的因式分解 Factorization Over $\mathbb{C}$

## 不可约多项式的刻画

<!-- complex_irreducible_characterization_theorem -->
> [!Theorem]
> **复数域上不可约多项式刻画 Characterization of Irreducibles in $\mathbb{C}[x]$**：$\mathbb{C}[x]$ 中的不可约多项式恰为一次多项式。

> **证明思路**：由代数学基本定理，任意次数至少为 $2$ 的复系数多项式有复根，从而可分解出线性因子，故不可能不可约；一次多项式不可约由次数论证得到。

## 线性因子分解

<!-- complex_linear_factorization_theorem -->
> [!Theorem]
> **复系数多项式线性分解定理 Linear Factorization over $\mathbb{C}$**：设 $f(x)\in\mathbb{C}[x]$，$\deg f=n\ge 1$，则存在 $a\in\mathbb{C}\setminus\{0\}$ 与 $\alpha_1,\ldots,\alpha_n\in\mathbb{C}$，使得
> $$f(x)=a\prod_{i=1}^{n}(x-\alpha_i).$$
> 若按重数计数，$\alpha_1,\ldots,\alpha_n$ 唯一确定到排列。

> **证明思路**：先由代数学基本定理取一根 $\alpha_1$，由因式定理写作 $f(x)=(x-\alpha_1)f_1(x)$，对 $f_1$ 递归重复，直到降为常数因子。唯一性来自 $\mathbb{C}[x]$ 的唯一分解性。