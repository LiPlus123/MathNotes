# 极大光滑化与局部光滑化

## 色散演化的平均增益

<!-- pde_kato_smoothing_theorem -->
> [!Theorem]
> **Kato 局部光滑化 Kato Local Smoothing**：对 $u(t)=e^{it\Delta}u_0$，任意紧集 $K\subset\mathbb{R}^n$ 和 $T>0$，有
> $$
> \||\nabla|^{1/2}u\|_{L^2([0,T]\times K)}
> \leq C_{K,T}\|u_0\|_{L^2(\mathbb{R}^n)}.
> $$
> 该估计表示解在有限时空区域内平均获得半阶导数，并不意味着每个固定时刻均有同样增益。
>
> **证明思路**：以正交换子或 Fourier 限制型论证处理 Schrödinger 相位；局部空间权截断使频率方向的振荡转化为正的局部能量项。

<!-- pde_maximal_estimate_concept -->
> [!Concept]
> **极大函数估计 Maximal-Function Estimate**：色散方程中的极大估计控制 $\sup_t|e^{it\Delta}f(x)|$ 或空间局部化版本。它与几乎处处收敛、非线性迭代中的点态控制密切相关，所需初始 Sobolev 正则性通常高于 $L^2$ 守恒所给出的尺度。

<!-- pde_kato_ponce_inequality -->
> [!Theorem]
> **Kato--Ponce 分数 Leibniz 不等式 Kato--Ponce Inequality**：设 $s>0$、$1<r<\infty$，并且
> $$
> \frac1r=\frac1{p_1}+\frac1{q_1}
> =\frac1{p_2}+\frac1{q_2},
> $$
> 其中相关指数在适用范围内，则
> $$
> \||\nabla|^s(fg)\|_{L^r}
> \leq C\left(
> \||\nabla|^sf\|_{L^{p_1}}\|g\|_{L^{q_1}}
> +\|f\|_{L^{p_2}}\||\nabla|^sg\|_{L^{q_2}}
> \right).
> $$
>
> **证明思路**：使用 Littlewood-Paley 分解将乘积分为低--高、高--低和高--高相互作用；分别用半积估计、极大函数和平方函数控制。

<!-- pde_local_smoothing_fourier_integral_concept -->
> [!Concept]
> **Fourier 积分算子的局部光滑化 Local Smoothing for Fourier Integral Operators**：波方程和更一般的 Fourier 积分算子的局部光滑化依赖相位曲面的曲率。它联系限制问题、Bochner-Riesz 问题与几何测度论，并存在维数和指数敏感的最佳范围。

> **来源**：Tosio Kato and K. Yajima, "Some Examples of Smooth Operators and the Associated Smoothing Effect"；Loukas Grafakos and Seungly Oh, "The Kato-Ponce Inequality"。
