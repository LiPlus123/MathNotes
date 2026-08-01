# 二进极大函数

## 二进方体与二进极大函数

<!-- dyadic_cube_definition -->
> [!Definition]
> **二进方体 Dyadic Cube**：对 $j\in\mathbb{Z}$ 与 $k\in\mathbb{Z}^n$，集合
> $$
> Q_{j,k}=2^{-j}(k+[0,1)^n)
> $$
> 称为 $\mathbb{R}^n$ 中的二进方体。全体二进方体记为 $\mathcal{D}$。

<!-- dyadic_maximal_function_definition -->
> [!Definition]
> **二进极大函数 Dyadic Maximal Function**：对 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$，定义
> $$
> M_{\mathcal{D}}f(x)=\sup_{\substack{Q\in\mathcal{D}\\x\in Q}}
> \frac{1}{|Q|}\int_Q|f(y)|\,dy.
> $$

<!-- dyadic_maximal_weak_type_one_one -->
> [!Theorem]
> **二进极大函数的弱 $(1,1)$ 型估计 Dyadic Weak $(1,1)$ Estimate**：对 $f\in L^1(\mathbb{R}^n)$ 及 $\lambda>0$，
> $$
> |\{x:M_{\mathcal{D}}f(x)>\lambda\}|
> \leq\frac{1}{\lambda}\|f\|_1.
> $$
>
> **证明思路**：取平均值超过 $\lambda$ 的极大二进方体。它们两两不交且覆盖超水平集，故其体积和严格小于 $\lambda^{-1}$ 倍的积分和。

## Calderon-Zygmund 分解

<!-- dyadic_calderon_zygmund_decomposition -->
> [!Theorem]
> **二进 Calderon-Zygmund 分解 Dyadic Calderon-Zygmund Decomposition**：设 $f\in L^1(\mathbb{R}^n)$ 且 $\lambda>0$。则存在两两不交的二进方体 $(Q_j)$，使
> $$
> \lambda<\frac{1}{|Q_j|}\int_{Q_j}|f|\,dx\leq2^n\lambda,
> $$
> 并且 $\Omega=\{M_{\mathcal{D}}f>\lambda\}=\bigcup_jQ_j$。令
> $$
> g=f\mathbf{1}_{\Omega^c}+\sum_j\left(\frac{1}{|Q_j|}\int_{Q_j}f\,dx\right)\mathbf{1}_{Q_j},
> \qquad b_j=\left(f-\frac{1}{|Q_j|}\int_{Q_j}f\,dx\right)\mathbf{1}_{Q_j},
> $$
> 则 $f=g+\sum_jb_j$，且 $\|g\|_\infty\leq2^n\lambda$、$\int b_j=0$、$\sum_j|Q_j|\leq\lambda^{-1}\|f\|_1$。
>
> **证明思路**：选取超水平集中关于包含关系极大的二进方体。其父方体平均不超过 $\lambda$，故得到上界；其余性质由分块定义直接验证。

<!-- dyadic_good_bad_set_decomposition -->
> [!Definition]
> **良点集与坏点集分解 Good-Bad Set Decomposition**：在上述分解中，$\Omega^c$ 称为良点集，$\Omega$ 称为坏点集。良部 $g$ 有界，坏部 $b=\sum_jb_j$ 由支撑于 $Q_j$ 且均值为零的局部振荡组成。

<!-- shifted_dyadic_grids_comparison -->
> [!Theorem]
> **二进格与球的比较 Comparison of Dyadic Grids and Balls**：存在有限个平移二进格 $\mathcal{D}^{(1)},\ldots,\mathcal{D}^{(N_n)}$，使每个 Euclidean 球 $B$ 都包含于某个 $Q\in\mathcal{D}^{(r)}$，并满足 $|Q|\leq C_n|B|$。因而
> $$
> Mf\leq C_n\max_{1\leq r\leq N_n}M_{\mathcal{D}^{(r)}}f.
> $$
>
> **证明思路**：采用有限个经过适当平移的二进格以避免球跨越格点边界；对每个尺度选择边长可比于球半径的方体。

> **来源**：Michael Christ, "A $T(b)$ Theorem with Remarks on Analytic Capacity and the Cauchy Integral", *Colloquium Mathematicum* 60/61 (1990)；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 5。
