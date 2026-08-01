## 孪生素数与有界间隔

<!-- analytic_number_theory_twin_prime_conjecture -->
> [!Definition]
> **孪生素数猜想 Twin Prime Conjecture**：存在无穷多对素数 $p,p+2$。该猜想至今未被证明。

<!-- analytic_number_theory_admissible_tuple_definition -->
> [!Definition]
> **可容许元组 Admissible Tuple**：有限整数集 $\mathcal H=\{h_1,\ldots,h_k\}$ 称为可容许的，若对每个素数 $p$，其在模 $p$ 意义下不覆盖全部剩余类。等价地，对每个 $p$，存在整数 $n$ 使
>
> $$p\nmid\prod_{i=1}^{k}(n+h_i).$$

> 这是线性型 $n+h_i$ 能够同时为素数的必要局部条件。

<!-- analytic_number_theory_zhang_maynard_tao_bounded_gaps_theorem -->
> [!Theorem]
> **Zhang-Maynard-Tao 素数有界间隔定理 Zhang-Maynard-Tao Theorem on Bounded Prime Gaps**：存在绝对常数 $H$，使得无穷多个相邻素数对 $p_n,p_{n+1}$ 满足
>
> $$p_{n+1}-p_n\leq H.$$
>
> 已知可取 $H=246$。等价地，
>
> $$\liminf_{n\to\infty}(p_{n+1}-p_n)\leq246.$$
>
> **证明思路**：Zhang 首先结合筛法与素数分布的平均结果得到有限 $H$；Maynard 与 Tao 引入多维 Selberg 筛权重，证明任意足够长的可容许元组在无穷多个平移中至少含两个素数。Polymath 项目进一步优化了常数。

<!-- analytic_number_theory_bounded_gaps_vs_twin_prime_note -->
> [!Theorem]
> **有界间隔与孪生素数猜想的区别 Bounded Gaps versus Twin Primes**：有界间隔定理并不推出孪生素数猜想：它只保证某个有限偶数间隔在无穷多个素数对中出现，而不保证间隔 $2$ 出现无穷多次。
>
> **证明思路**：由抽屉原理，有界间隔定理确实蕴含至少一个不超过 $H$ 的偶数间隔出现无穷多次；但这一论证不指定该间隔为 $2$。