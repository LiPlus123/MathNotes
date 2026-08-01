# 非交换 Fourier 分析初步

## Heisenberg 群、算子值变换与球分析

<!-- abstract_heisenberg_group_definition -->
> [!Definition]
> **Heisenberg 群 Heisenberg Group**：$n$ 维 Heisenberg 群定义为流形 $\mathbb{H}^n=\mathbb{R}^n\times\mathbb{R}^n\times\mathbb{R}$，群 law 为
> $$
> (x,y,t)(x',y',t')
> =\left(x+x',y+y',t+t'+\frac12(x\cdot y'-y\cdot x')\right).
> $$
> 它是连通、单连通、幂零且非交换的 Lie 群，中心由 $(0,0,t)$ 构成。

<!-- abstract_group_fourier_transform_definition -->
> [!Definition]
> **非交换群 Fourier 变换 Noncommutative Group Fourier Transform**：对局部紧幺模群 $G$ 的可积函数 $f$ 和不可约酉表示 $\pi$，形式上定义
> $$
> \widehat f(\pi)=\int_Gf(g)\pi(g)^*\,dg.
> $$
> 与 Abel 情形的标量 Fourier 系数不同，$\widehat f(\pi)$ 一般是表示空间上的算子。

<!-- abstract_heisenberg_schrodinger_representation -->
> [!Example]+
> **Heisenberg 群的 Schrödinger 表示 Schrodinger Representations**：对 $\lambda\in\mathbb{R}\setminus\{0\}$，$\mathbb{H}^n$ 在 $L^2(\mathbb{R}^n)$ 上有不可约表示
> $$
> (\pi_\lambda(x,y,t)\phi)(u)
> =e^{i\lambda(t+y\cdot u+\frac12x\cdot y)}\phi(u+x).
> $$
> 中心变量的参数 $\lambda$ 区分无限维不可约表示，体现非交换 Fourier 变换的算子值本质。

<!-- abstract_semisimple_harmonic_analysis_note -->
> [!Definition]
> **半单 Lie 群上的调和分析 Harmonic Analysis on Semisimple Lie Groups**：对半单 Lie 群，非交换 Fourier 分析涉及不可约酉对偶、主级数表示、离散级数及其 Plancherel 测度。与幂零群不同，表示理论和谱分解受到 Cartan 分解、根系与抛物子群几何的控制。

<!-- abstract_gelfand_pair_definition -->
> [!Definition]
> **Gelfand 对 Gelfand Pair**：设 $K$ 是局部紧群 $G$ 的紧子群。若双 $K$-不变可积函数的卷积代数 $L^1(K\backslash G/K)$ 交换，则称 $(G,K)$ 为 Gelfand 对。此时 $K$-球函数可将相应的双陪集卷积对角化。

<!-- abstract_spherical_function_definition -->
> [!Definition]
> **球函数 Spherical Function**：对 Gelfand 对 $(G,K)$，连续函数 $\varphi:G\to\mathbb{C}$ 称为球函数，若它是非零双 $K$-不变函数并满足卷积特征关系
> $$
> f*\varphi=\lambda_\varphi(f)\varphi
> \qquad\bigl(f\in L^1(K\backslash G/K)\bigr).
> $$
> 归一化条件通常取 $\varphi(e)=1$。

> **来源**：Sundaram Thangavelu, *Harmonic Analysis on the Heisenberg Group*；Sigurdur Helgason, *Groups and Geometric Analysis*。
