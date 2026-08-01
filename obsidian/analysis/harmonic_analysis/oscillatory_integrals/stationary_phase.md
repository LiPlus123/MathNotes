# 稳定相位方法

## 非退化临界点附近的渐近行为

<!-- oscillatory_stationary_point_definition -->
> [!Definition]
> **临界点与非退化性 Critical Point and Nondegeneracy**：设 $\phi\in C^\infty(U;\mathbb{R})$，其中 $U\subseteq\mathbb{R}^n$ 为开集。若
> $$
> \nabla\phi(x_0)=0,
> $$
> 则称 $x_0$ 为 $\phi$ 的临界点；若 Hessian 矩阵 $\phi''(x_0)$ 可逆，则称其为非退化临界点。记 $\operatorname{sgn}\phi''(x_0)$ 为该实对称矩阵正特征值数减去负特征值数。

<!-- oscillatory_nonstationary_phase_lemma -->
> [!Lemma]
> **非稳定相位引理 Nonstationary Phase Lemma**：若 $a\in C_c^\infty(U)$ 且在 $\operatorname{supp}a$ 上有 $|\nabla\phi|\geq c>0$，则对每个 $N\geq0$，
> $$
> \left|\int e^{i\lambda\phi(x)}a(x)\,dx\right|
> \leq C_N\lambda^{-N}
> \qquad(\lambda\geq1).
> $$
>
> **证明思路**：反复使用算子
> $$
> L=\frac{\nabla\phi\cdot\nabla}{i\lambda|\nabla\phi|^2},
> \qquad Le^{i\lambda\phi}=e^{i\lambda\phi},
> $$
> 并将 $L$ 的伴随移到振幅上。紧支撑和梯度下界保证每次分部积分都产生一个 $\lambda^{-1}$ 因子。

<!-- oscillatory_one_dimensional_stationary_phase -->
> [!Theorem]
> **一维稳定相位引理 One-Dimensional Stationary Phase Lemma**：设 $a\in C_c^\infty(\mathbb{R})$，并设 $\phi$ 在 $\operatorname{supp}a$ 中只有一个非退化临界点 $x_0$。则当 $\lambda\to+\infty$ 时，
> $$
> \int e^{i\lambda\phi(x)}a(x)\,dx
> =e^{i\lambda\phi(x_0)+i\pi\operatorname{sgn}(\phi''(x_0))/4}
> \left(\frac{2\pi}{\lambda|\phi''(x_0)|}\right)^{1/2}
> \bigl(a(x_0)+O(\lambda^{-1})\bigr).
> $$
>
> **证明思路**：在临界点邻域使用 Morse 引理将相位化为带符号的二次型；对二次 Gauss 积分作缩放计算。临界点外的部分由非稳定相位引理快速衰减。

<!-- oscillatory_multidimensional_stationary_phase -->
> [!Theorem]
> **多维稳定相位定理 Multidimensional Stationary Phase Theorem**：设 $a\in C_c^\infty(U)$，且 $\phi$ 在 $\operatorname{supp}a$ 中只有一个非退化临界点 $x_0$。令 $H=\phi''(x_0)$，则
> $$
> \int_{\mathbb{R}^n}e^{i\lambda\phi(x)}a(x)\,dx
> =e^{i\lambda\phi(x_0)+i\pi\operatorname{sgn}(H)/4}
> \left(\frac{2\pi}{\lambda}\right)^{n/2}
> \frac{a(x_0)}{|\det H|^{1/2}}
> +O\left(\lambda^{-n/2-1}\right).
> $$
>
> **证明思路**：以分割单位隔离临界点。Morse 引理将局部相位正规化为二次型；将振幅作 Taylor 展开并逐项积分，余项由分部积分或缩放估计控制。

<!-- oscillatory_stationary_phase_expansion -->
> [!Theorem]
> **稳定相位渐近展开 Stationary Phase Asymptotic Expansion**：在上述假设下，对任意整数 $N\geq1$，存在仅由 $\phi$ 与临界点处振幅的有限阶导数决定的系数 $c_0,\ldots,c_{N-1}$，其中
> $$
> c_0=\frac{a(x_0)}{|\det\phi''(x_0)|^{1/2}},
> $$
> 使得
> $$
> \int e^{i\lambda\phi(x)}a(x)\,dx
> =e^{i\lambda\phi(x_0)+i\pi\operatorname{sgn}(H)/4}
> \left(\frac{2\pi}{\lambda}\right)^{n/2}
> \left(\sum_{k=0}^{N-1}c_k\lambda^{-k}+O(\lambda^{-N})\right).
> $$
>
> **证明思路**：将正规化坐标下的振幅反复分解为其原点 Taylor 多项式和可被二次相位导数整除的余项；后者通过分部积分降低阶数。

> **来源**：Elias M. Stein, *Harmonic Analysis: Real-Variable Methods, Orthogonality, and Oscillatory Integrals*, Chapter VIII；Lars Hörmander, *The Analysis of Linear Partial Differential Operators I*, Chapter VII。
