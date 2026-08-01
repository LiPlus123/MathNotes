# 无穷乘积

## 复数无穷乘积

<!-- infinite_product_definition -->
> [!Definition]
> **无穷乘积 Infinite Product**：设 $(u_n)_{n\ge1}$ 是复数列。若部分乘积
> $$
> P_N=\prod_{n=1}^{N}u_n
> $$
> 收敛到有限极限 $P$，则称无穷乘积 $\prod_{n=1}^{\infty}u_n$ 收敛；若 $P\ne0$，称其收敛到非零值。若 $P_N$ 没有有限极限，则称乘积发散。

<!-- infinite_product_nonzero_necessary_condition -->
> [!Theorem]
> **无穷乘积收敛的必要条件 Necessary Condition for Product Convergence**：若
> $$
> \prod_{n=1}^{\infty}(1+a_n)
> $$
> 收敛到非零值，则 $a_n\to0$。
>
> **证明思路**：相邻部分乘积之比满足 $1+a_n=P_n/P_{n-1}$，而非零收敛部分积的比值趋于 $1$。

<!-- infinite_product_absolute_convergence -->
> [!Theorem]
> **无穷乘积的绝对收敛 Absolute Convergence of Infinite Products**：若
> $$
> \sum_{n=1}^{\infty}|a_n|<\infty,
> $$
> 则 $\prod_{n=1}^{\infty}(1+a_n)$ 收敛到非零值，除非某个因子 $1+a_n=0$。在排除零因子后，乘积的值与因子的排列无关。
>
> **证明思路**：当 $a_n$ 足够小时，$\log(1+a_n)$ 可定义且 $|\log(1+a_n)|\le C|a_n|$；于是对数级数绝对收敛，指数映射给出乘积收敛。

## 函数项无穷乘积

<!-- infinite_product_uniform_convergence -->
> [!Theorem]
> **函数项无穷乘积的一致收敛 Uniform Convergence of Functional Products**：设 $D$ 为区域，$f_n$ 在 $D$ 上全纯。若对每个紧集 $K\subseteq D$，
> $$
> \sum_{n=1}^{\infty}\sup_{z\in K}|f_n(z)|<\infty,
> $$
> 则 $\prod_{n=1}^{\infty}(1+f_n(z))$ 在 $K$ 上一致收敛；若各因子在 $K$ 上不为零，则极限为全纯且不为零。
>
> **证明思路**：在紧集上应用无穷乘积的对数判别，并利用 Weierstrass 一致收敛定理。

<!-- infinite_product_holomorphic_limit -->
> [!Corollary]
> **全纯函数无穷乘积的极限 Holomorphic Limit of an Infinite Product**：若上述乘积在每个紧子集上一致收敛，并且没有因子在局部恒为零，则其极限在 $D$ 上全纯。
>
> **证明思路**：部分积全纯，内闭一致极限保持全纯性。

> **注**：无穷乘积的收敛性与函数项乘积参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
