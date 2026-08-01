# 双权问题与应用

## 双权极大函数与测试条件

<!-- two_weight_maximal_problem -->
> [!Definition]
> **双权极大函数问题 Two-Weight Maximal-Function Problem**：给定权函数 $u,v$ 及 $1<p<+\infty$，双权极大函数问题是刻画何时存在常数 $C$ 使
> $$
> \|Mf\|_{L^p(u)}\leq C\|f\|_{L^p(v)}
> $$
> 对所有适当函数 $f$ 成立。令 $\sigma=v^{-1/(p-1)}$，该问题等价于研究 $M:L^p(\sigma)\to L^p(u)$ 的有界性。

<!-- sawyer_testing_condition -->
> [!Theorem]
> **Sawyer 测试定理 Sawyer Testing Theorem**：设 $1<p<+\infty$，权函数 $u,\sigma$ 局部可积。则
> $$
> \|M(f\sigma)\|_{L^p(u)}\leq C\|f\|_{L^p(\sigma)}
> $$
> 对所有 $f$ 成立，当且仅当存在 $C'<+\infty$，使每个立方体 $Q$ 满足
> $$
> \int_Q\bigl(M(\sigma\mathbf{1}_Q)(x)\bigr)^pu(x)\,dx
> \leq C'\sigma(Q).
> $$
> 这称为 Sawyer 测试条件。
>
> **证明思路**：必要性取 $f=\mathbf{1}_Q$。充分性将 $Mf$ 的超水平集按二进极大方体分解；测试条件控制每个局部块，嵌入型求和处理各尺度贡献。

<!-- two_weight_hilbert_background -->
> [!Definition]
> **双权 Hilbert 变换问题 Two-Weight Hilbert Transform Problem**：在 $\mathbb{R}$ 上，研究何时
> $$
> \|H(f\sigma)\|_{L^2(u)}\leq C\|f\|_{L^2(\sigma)}.
> $$
> 与极大算子不同，简单的双权 $A_2$ 型平均条件只是必要条件，并不足以保证有界性；还需适当的测试条件以及能量控制。该问题推动了两权奇异积分理论的发展。

<!-- bloom_bmo_definition -->
> [!Definition]
> **Bloom BMO 空间 Bloom BMO Space**：若 $\mu,\lambda\in A_p$，定义
> $$
> \nu=\left(\frac{\mu}{\lambda}\right)^{1/p}.
> $$
> Bloom 型 BMO 半范数为
> $$
> \|b\|_{\operatorname{BMO}_\nu}
> =\sup_Q\frac{1}{\nu(Q)}\int_Q|b(x)-\langle b\rangle_Q|\,dx.
> $$
> 它刻画两个不同 $A_p$ 权之间 Calderón-Zygmund 交换子的自然符号空间。

<!-- bloom_commutator_theorem -->
> [!Theorem]
> **Bloom 交换子定理 Bloom Commutator Theorem**：设 $T$ 为非退化 Calderón-Zygmund 算子，$1<p<+\infty$，且 $\mu,\lambda\in A_p$。在标准假设下，交换子
> $$
> [b,T]f=bTf-T(bf)
> $$
> 从 $L^p(\mu)$ 到 $L^p(\lambda)$ 的有界性与 $b\in\operatorname{BMO}_\nu$ 相对应，其中 $\nu=(\mu/\lambda)^{1/p}$。
>
> **证明思路**：充分性由稀疏支配和加权 John--Nirenberg 型不等式导出；必要性从局部测试函数出发，以 $[b,T]$ 检测立方体上的平均振荡。

<!-- degenerate_elliptic_application -->
> [!Example]+
> **退化椭圆方程中的权 Degenerate Elliptic Equations**：对 $w\in A_2$，散度型算子
> $$
> Lu=-\operatorname{div}(wA\nabla u)
> $$
> 的自然能量空间是加权 Sobolev 空间。$A_2$ 条件保证测度 $w(x)\,dx$ 具有足够的加倍性与 Poincaré 型性质，从而使加权能量估计和边值问题理论得以建立。

<!-- weighted_sobolev_application -->
> [!Theorem]
> **加权 Sobolev 不等式的模型形式 Model Weighted Sobolev Inequality**：在适当的 $A_p$ 或双权假设下，存在 $q>p$ 与常数 $C$，使紧支撑光滑函数满足
> $$
> \|f\|_{L^q(u)}\leq C\|\nabla f\|_{L^p(v)}.
> $$
> 这类不等式的精确指数和权条件由分数积分的双权理论决定，并应用于退化 PDE 的正则性。

> **来源**：Eric T. Sawyer, "A Characterization of a Two-Weight Norm Inequality for Maximal Operators", *Studia Mathematica* 75 (1982)；Michael T. Lacey, Eric T. Sawyer, and Ignacio Uriarte-Tuero, "A Characterization of Two Weight Norm Inequalities for Hilbert Transform", *Annals of Mathematics* 175 (2012)；S. Bloom, "A Commutator Theorem and Weighted BMO", *Transactions of the American Mathematical Society* 292 (1985)。
