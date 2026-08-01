# 其他背景上的 BMO

## 几何与算子推广

<!-- harmonic_bmo_homogeneous_type_definition -->
> [!Definition]
> **齐次型空间上的 BMO BMO on a Space of Homogeneous Type**：设 $(X,d,\mu)$ 为齐次型空间。局部可积函数 $f$ 属于 $\operatorname{BMO}(X)$，若
> $$
> \sup_B\frac1{\mu(B)}\int_B|f-f_B|\,d\mu<+\infty,
> \qquad
> f_B=\frac1{\mu(B)}\int_Bf\,d\mu,
> $$
> 其中上确界取遍所有球 $B\subseteq X$。加倍性质替代 Euclidean 立方体几何，仍可建立 John--Nirenberg 型不等式。

<!-- harmonic_parabolic_bmo_definition -->
> [!Definition]
> **抛物 BMO Parabolic BMO**：在时空 $\mathbb{R}^n\times\mathbb{R}$ 中，使用抛物立方体
> $$
> Q_r(x,t)=B(x,r)\times(t-r^2,t+r^2)
> $$
> 的平均振荡定义抛物 BMO。时间尺度 $r^2$ 与热方程的伸缩相容，故该空间适用于抛物 PDE 的端点正则性。

<!-- harmonic_operator_bmo_definition -->
> [!Definition]
> **算子 BMO Operator BMO**：对满足适当热核估计的非负算子 $L$，可用半群平均替代常数平均，例如定义
> $$
> \|f\|_{\operatorname{BMO}_L}
> =\sup_B\frac1{|B|}\int_B|f(x)-e^{-r_B^2L}f(x)|\,dx,
> $$
> 其中 $r_B$ 是球 $B$ 的半径。它适应于 $L$ 的几何和尺度。

<!-- harmonic_matrix_bmo_definition -->
> [!Definition]
> **矩阵值 BMO Matrix-Valued BMO**：若 $W(x)$ 取值于正定矩阵，或 $F(x)$ 取值于矩阵代数，可将标量绝对值替为矩阵范数，或采用涉及 $W_Q$ 的加权矩阵平均来定义矩阵 BMO。它出现于矩阵权、算子值奇异积分及系统型 PDE。

<!-- harmonic_carleson_measure_characterization -->
> [!Theorem]
> **Carleson 测度刻画 Carleson-Measure Characterization**：对适当核 $\psi$（具有零积分），$f\in\operatorname{BMO}(\mathbb{R}^n)$ 当且仅当测度
> $$
> d\mu_f(x,t)=|\psi_t*f(x)|^2\,\frac{dx\,dt}{t}
> $$
> 是上半空间中的 Carleson 测度，即
> $$
> \sup_Q\frac{\mu_f(Q\times(0,\ell(Q)))}{|Q|}<+\infty.
> $$
> Carleson 范数与 BMO 半范数等价。
>
> **证明思路**：以 Calderón 再生公式将 $f$ 的局部振荡与锥形尺度系数联系。原子 $H^1$-BMO 对偶控制 Carleson 嵌入；反向用测试函数重构 BMO 平均振荡。

<!-- harmonic_boundary_value_problem_connection -->
> [!Theorem]
> **与边界值问题的联系 Connection to Boundary Value Problems**：椭圆或抛物方程解的梯度平方常产生 Carleson 测度。其 Carleson 范数可刻画边界数据或系数的 BMO 正则性，并为 Lipschitz 域上的 Dirichlet、Neumann 与正则性问题提供可量化的 solvability 条件。
>
> **证明思路**：利用层位势或半群表示将内部梯度转写为边界卷积的尺度导数，再应用 Carleson 测度刻画和非切向极大函数估计。

> **来源**：Ronald R. Coifman and Guido Weiss, *Analyse Harmonique Non-Commutative sur Certains Espaces Homogènes*, Lecture Notes in Mathematics 242；Steve Hofmann, Carlos Kenig, Svitlana Mayboroda, and Jill Pipher, "Square Function/Non-Tangential Maximal Function Estimates and the Dirichlet Problem for Non-Symmetric Elliptic Operators", *Journal of the American Mathematical Society* 28 (2015)。
