# 二进 BMO 与乘积 BMO

## 二进 BMO 及 Haar 刻画

<!-- harmonic_dyadic_bmo_definition -->
> [!Definition]
> **二进 BMO Dyadic BMO**：对固定二进格 $\mathcal{D}$，定义
> $$
> \|f\|_{\operatorname{BMO}_{\mathcal{D}}}
> =\sup_{Q\in\mathcal{D}}\frac1{|Q|}\int_Q|f(x)-\langle f\rangle_Q|\,dx.
> $$
> 有限半范数的函数模常数所成的空间称为 $\operatorname{BMO}_{\mathcal{D}}$。

<!-- harmonic_dyadic_bmo_haar_characterization -->
> [!Theorem]
> **Haar 系数刻画 Haar-Coefficient Characterization**：令 $h_Q^\varepsilon$ 表示 $Q\in\mathcal{D}$ 上非平凡的归一化 Haar 函数。则
> $$
> \|f\|_{\operatorname{BMO}_{\mathcal{D}}}
> \asymp
> \sup_{Q_0\in\mathcal{D}}
> \left(\frac1{|Q_0|}\sum_{\substack{Q\subseteq Q_0\\\varepsilon\ne0}}
> |\langle f,h_Q^\varepsilon\rangle|^2\right)^{1/2}.
> $$
> 因而二进 BMO 等价于 Haar 系数满足 Carleson 测度条件。
>
> **证明思路**：在 $Q_0$ 上展开 $f-\langle f\rangle_{Q_0}$ 的 Haar 级数。正交性将 $L^2$ 平均振荡转为系数平方和；John--Nirenberg 不等式将 $L^2$ 与 $L^1$ 平均振荡联系起来。

<!-- harmonic_bmo_finite_dyadic_grids -->
> [!Theorem]
> **多个二进格的比较 Comparison of Finite Dyadic Grids**：存在有限个平移二进格 $\mathcal{D}^{(1)},\ldots,\mathcal{D}^{(N_n)}$，使
> $$
> \operatorname{BMO}(\mathbb{R}^n)
> =\bigcap_{r=1}^{N_n}\operatorname{BMO}_{\mathcal{D}^{(r)}}(\mathbb{R}^n)
> $$
> 且 BMO 半范数与有限个二进 BMO 半范数的最大值等价。
>
> **证明思路**：使用有限平移二进格，使每个普通立方体包含于某个二进立方体且体积可比。以较大二进立方体的平均振荡控制原立方体，并取所有格的最大值。

## 乘积 BMO 概览

<!-- harmonic_product_bmo_definition -->
> [!Definition]
> **乘积 BMO Product BMO**：在乘积空间 $\mathbb{R}^{n_1}\times\mathbb{R}^{n_2}$ 上，Chang-Fefferman 乘积 BMO 由矩形二参数 Haar 系数的 Carleson 条件定义。形式上，对开集 $\Omega$，其系数满足
> $$
> \sum_{R\subseteq\Omega}|\langle f,h_R\rangle|^2
> \leq C|\Omega|,
> $$
> 其中 $R$ 遍历二参数二进矩形，$h_R$ 是相应 Haar 函数。

<!-- harmonic_product_bmo_significance -->
> [!Theorem]
> **Chang-Fefferman 乘积 BMO 概览 Chang-Fefferman Product BMO Overview**：乘积 BMO 是乘积 Hardy 空间的对偶，严格强于仅对每个变量分别施加一参数 BMO 条件的空间。其多参数 Carleson 条件反映矩形的嵌套与重叠，不能化约为单参数立方体振荡。
>
> **证明思路**：双参数原子分解与矩形 Haar 展开给出 Hardy-BMO 配对。反例表明分别变量的振荡控制不能支配任意开集上的矩形 Carleson 系数和。

> **来源**：Sun-Yung A. Chang and Robert Fefferman, "A Continuous Version of Duality of $H^1$ with BMO on the Bidisc", *Annals of Mathematics* 112 (1980)；Jill Pipher, "Journé's Covering Lemma and Its Extension to Higher Dimensions", *Duke Mathematical Journal* 53 (1986)。
