# Littlewood-Paley 平方函数

## 平方函数与 $L^p$ 估计

<!-- lp_square_function_definition -->
> [!Definition]
> **Littlewood-Paley 平方函数 Littlewood-Paley Square Function**：对温和分布 $f$，定义非齐次平方函数
> $$
> Sf(x)=\left(|\Delta_{-1}f(x)|^2+\sum_{j=0}^{+\infty}|\Delta_jf(x)|^2\right)^{1/2}.
> $$
> 它以平方和汇集各二进频带的局部振幅。

<!-- lp_l2_square_function_equivalence -->
> [!Theorem]
> **$L^2$ 平方函数等价性 $L^2$ Square-Function Equivalence**：对 $f\in L^2(\mathbb{R}^n)$，
> $$
> \|Sf\|_2\asymp\|f\|_2.
> $$
>
> **证明思路**：由 Plancherel 定理，$\|\Delta_jf\|_2^2$ 是 $|\widehat f|^2$ 乘以 $|\varphi(2^{-j}\xi)|^2$ 的积分。频带有限重叠给出上界；单位分解及 Cauchy-Schwarz 不等式给出下界。

<!-- lp_littlewood_paley_inequality -->
> [!Theorem]
> **Littlewood-Paley 不等式 Littlewood-Paley Inequality**：若 $1<p<+\infty$，则
> $$
> \|Sf\|_p\asymp\|f\|_p.
> $$
> 因而 $L^p$ 范数可由各二进频带的平方和等价地度量。
>
> **证明思路**：随机化频带并应用 Khintchine 不等式，将平方函数范数转换为带 Rademacher 符号的乘子范数。相应随机乘子的 Mikhlin 常数一致有界，故由乘子定理得到一个方向；用再生分解与对偶性得到另一个方向。

<!-- lp_khintchine_randomization -->
> [!Theorem]
> **Khintchine 随机化方法 Khintchine Randomization Method**：令 $(\varepsilon_j)$ 是独立的 Rademacher 随机变量。对任意复数列 $(a_j)$ 及 $0<p<+\infty$，
> $$
> \left(\mathbb{E}\left|\sum_j\varepsilon_ja_j\right|^p\right)^{1/p}
> \asymp_p\left(\sum_j|a_j|^2\right)^{1/2}.
> $$
> 应用于 $a_j=\Delta_jf(x)$ 并对 $x$ 积分，可将 $\|Sf\|_p$ 与随机和 $\sum_j\varepsilon_j\Delta_jf$ 的平均 $L^p$ 范数联系起来。
>
> **证明思路**：由随机和的高阶矩估计和插值证明。有限频带情形成立后，以单调或极限论证推广到可数列。

<!-- lp_weighted_square_function_note -->
> [!Corollary]
> **加权平方函数估计 Weighted Square-Function Estimate**：若 $1<p<+\infty$ 且 $w\in A_p$，则
> $$
> \|Sf\|_{L^p(w)}\asymp\|f\|_{L^p(w)}.
> $$
> 该结论是向量值 Calderón-Zygmund 理论与 $A_p$ 加权估计的一个应用。

> **来源**：Elias M. Stein, *Singular Integrals and Differentiability Properties of Functions*, Chapter IV；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 6。
