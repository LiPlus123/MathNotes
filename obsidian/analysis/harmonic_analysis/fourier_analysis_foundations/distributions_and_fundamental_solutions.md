# 分布与基本解

## 分布的 Fourier 变换

<!-- distribution_fourier_transform_definition_harmonic -->
> [!Definition]
> **温和分布的 Fourier 变换 Fourier Transform of Tempered Distributions**：对 $T\in\mathcal{S}'(\mathbb{R}^n)$，定义
> $$
> \langle\widehat T,\varphi\rangle=\langle T,\widehat\varphi\rangle,
> \qquad \varphi\in\mathcal{S}(\mathbb{R}^n).
> $$
> 该变换为 $\mathcal{S}'(\mathbb{R}^n)$ 的连续线性自同构。

<!-- dirac_delta_distribution_definition_harmonic -->
> [!Definition]
> **Dirac delta 分布 Dirac Delta Distribution**：对 $a\in\mathbb{R}^n$，Dirac 分布 $\delta_a$ 由
> $$
> \langle\delta_a,\varphi\rangle=\varphi(a)
> $$
> 定义。特别地，$\widehat{\delta_0}=1$，并且 $\widehat{1}=\delta_0$。

<!-- distribution_differentiation_fourier_rule -->
> [!Theorem]
> **分布微分的 Fourier 公式 Fourier Rule for Distributional Derivatives**：对任意 $T\in\mathcal{S}'(\mathbb{R}^n)$ 及多重指标 $\alpha$，
> $$
> \widehat{\partial^\alpha T}(\xi)=(2\pi i\xi)^\alpha\widehat T(\xi).
> $$
>
> **证明思路**：以分布微分的对偶定义将 $\partial^\alpha$ 移至测试函数，再用 Schwartz 函数的微分公式，注意两次分部积分产生的符号相消。

## 常系数算子与基本解

<!-- constant_coefficient_operator_symbol_definition -->
> [!Definition]
> **常系数微分算子的符号 Symbol of a Constant-Coefficient Differential Operator**：对
> $$
> P(D)=\sum_{|\alpha|\leq m}a_\alpha\partial^\alpha,
> $$
> 定义其 Fourier 符号为
> $$
> p(\xi)=\sum_{|\alpha|\leq m}a_\alpha(2\pi i\xi)^\alpha.
> $$
> 则对 $T\in\mathcal{S}'(\mathbb{R}^n)$，有 $\widehat{P(D)T}=p\widehat T$。

<!-- fundamental_solution_definition -->
> [!Definition]
> **基本解 Fundamental Solution**：若分布 $E$ 满足
> $$
> P(D)E=\delta_0,
> $$
> 则称 $E$ 为算子 $P(D)$ 的一个基本解。形式上，在 $p$ 的零点之外有 $\widehat E=1/p$。

<!-- laplacian_fundamental_solution -->
> [!Theorem]
> **Laplace 算子的基本解 Fundamental Solution of the Laplacian**：对 $n\geq3$，函数
> $$
> \Phi_n(x)=\frac{1}{(n-2)|\mathbb{S}^{n-1}|}|x|^{2-n}
> $$
> 定义局部可积函数，并在分布意义下满足 $-\Delta\Phi_n=\delta_0$。在 $n=2$ 时可取 $\Phi_2(x)=(2\pi)^{-1}\log(1/|x|)$，在 $n=1$ 时可取 $\Phi_1(x)=-|x|/2$。
>
> **证明思路**：在 $\mathbb{R}^n\setminus\{0\}$ 上直接计算径向 Laplacian 为零；对挖去原点的小球积分分部，球面通量的极限给出 $1$。

<!-- constant_coefficient_pde_frequency_solution -->
> [!Theorem]
> **常系数 PDE 的频率侧求解 Frequency-Side Solution of Constant-Coefficient PDEs**：若 $P(D)u=f$ 于温和分布意义成立，则
> $$
> p(\xi)\widehat u(\xi)=\widehat f(\xi).
> $$
> 因而在可定义 $1/p$ 的情形，$u=E*f$，其中 $E$ 为 $P(D)$ 的基本解。
>
> **证明思路**：对方程取 Fourier 变换，将微分变为乘法；再以 $\widehat E=1/p$ 抵消符号，最后用卷积定理反变换。符号零点处的齐次解对应解的非唯一性。

> **来源**：Lars Hörmander, *The Analysis of Linear Partial Differential Operators I*, Chapters 1 and 7；Elias M. Stein and Rami Shakarchi, *Functional Analysis*, Chapter 5。
