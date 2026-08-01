# 球面调和函数

令 $\mathbb{S}^{n-1}=\{x\in\mathbb{R}^n:|x|=1\}$，以面积测度 $d\sigma$ 积分。

## 球面谱理论

<!-- laplace_beltrami_operator_definition -->
> [!Definition]
> **Laplace-Beltrami 算子 Laplace-Beltrami Operator**：对 $F\in C^2(\mathbb{R}^n\setminus\{0\})$ 写 $x=r\omega$，则定义球面 Laplace-Beltrami 算子 $\Delta_{\mathbb{S}^{n-1}}$ 使
> $$
> \Delta F=\partial_r^2F+\frac{n-1}{r}\partial_rF+\frac{1}{r^2}\Delta_{\mathbb{S}^{n-1}}F.
> $$

<!-- spherical_harmonic_definition -->
> [!Definition]
> **球面调和函数 Spherical Harmonic**：次数 $\ell\in\mathbb{N}$ 的球面调和函数是某个 $
> \mathbb{R}^n$ 上齐次次数为 $\ell$ 的调和多项式限制到 $\mathbb{S}^{n-1}$ 所得函数。全体此类函数构成的有限维空间记为 $\mathcal{H}_\ell$。

<!-- spherical_harmonic_eigenvalue_theorem -->
> [!Theorem]
> **球面调和函数的特征值 Spherical Harmonic Eigenvalues**：对每个 $Y\in\mathcal{H}_\ell$，
> $$
> -\Delta_{\mathbb{S}^{n-1}}Y=\ell(\ell+n-2)Y.
> $$
> 不同次数的球面调和空间在 $L^2(\mathbb{S}^{n-1})$ 中正交。
>
> **证明思路**：将齐次多项式写为 $r^\ell Y(\omega)$ 并代入极坐标下的 Laplacian 分解；自伴椭圆算子的不同特征值对应的特征函数正交。

<!-- spherical_harmonic_l2_decomposition -->
> [!Theorem]
> **球面调和展开 Spherical Harmonic Expansion**：有正交直和分解
> $$
> L^2(\mathbb{S}^{n-1})=\widehat{\bigoplus}_{\ell=0}^{\infty}\mathcal{H}_\ell.
> $$
> 若 $(Y_{\ell,j})_{j=1}^{d_\ell}$ 是 $\mathcal{H}_\ell$ 的一组正交规范基，则对 $f\in L^2(\mathbb{S}^{n-1})$，
> $$
> f=\sum_{\ell=0}^{\infty}\sum_{j=1}^{d_\ell}\langle f,Y_{\ell,j}\rangle_{L^2}Y_{\ell,j}
> $$
> 于 $L^2$ 中收敛。
>
> **证明思路**：球面多项式在连续函数中稠密，调和分解将每个多项式拆为不同次数的齐次调和部分；完成化后得到结论。

## 加法公式与 Funk-Hecke 定理

<!-- spherical_harmonic_addition_formula -->
> [!Theorem]
> **加法公式 Addition Formula**：令 $\lambda=(n-2)/2$，并令 $(Y_{\ell,j})_{j=1}^{d_\ell}$ 为 $\mathcal{H}_\ell$ 的面积测度正交规范基。对 $n\geq3$，
> $$
> \sum_{j=1}^{d_\ell}Y_{\ell,j}(\omega)\overline{Y_{\ell,j}(\eta)}
> =\frac{d_\ell}{|\mathbb{S}^{n-1}|}\frac{C_\ell^\lambda(\omega\cdot\eta)}{C_\ell^\lambda(1)}.
> $$
> 右端只依赖于 $\omega\cdot\eta$，称为次数 $\ell$ 的带状（zonal）球面调和函数。
>
> **证明思路**：左端是到 $\mathcal{H}_\ell$ 的正交投影核，旋转不变性迫使其仅依赖内积；在 $\omega=\eta$ 处取迹确定常数。

<!-- funk_hecke_theorem -->
> [!Theorem]
> **Funk-Hecke 定理 Funk-Hecke Theorem**：设 $n\geq3$，$F\in L^1([-1,1],(1-t^2)^{(n-3)/2}dt)$，且 $Y\in\mathcal{H}_\ell$。则
> $$
> \int_{\mathbb{S}^{n-1}}F(\omega\cdot\eta)Y(\eta)\,d\sigma(\eta)
> =\lambda_\ell(F)Y(\omega),
> $$
> 其中
> $$
> \lambda_\ell(F)=\frac{|\mathbb{S}^{n-2}|}{C_\ell^\lambda(1)}
> \int_{-1}^{1}F(t)C_\ell^\lambda(t)(1-t^2)^{(n-3)/2}\,dt.
> $$
>
> **证明思路**：该积分算子与所有旋转交换，故在不可约表示 $\mathcal{H}_\ell$ 上为标量；以加法公式和极坐标积分计算该标量。

## 乘子与 Sobolev 空间

<!-- spherical_fourier_multiplier_definition -->
> [!Definition]
> **球面 Fourier 乘子 Spherical Fourier Multiplier**：给定数列 $(m_\ell)_{\ell\geq0}$，定义
> $$
> Tf=\sum_{\ell=0}^{\infty}m_\ell\Pi_\ell f,
> $$
> 其中 $\Pi_\ell$ 是到 $\mathcal{H}_\ell$ 的正交投影。若 $(m_\ell)$ 有界，则 $T$ 在 $L^2(\mathbb{S}^{n-1})$ 上有界，且 $\|T\|_{2\to2}=\sup_\ell|m_\ell|$。

<!-- spherical_sobolev_space_definition -->
> [!Definition]
> **球面 Sobolev 空间 Sobolev Space on the Sphere**：对 $s\in\mathbb{R}$，定义
> $$
> \|f\|_{H^s(\mathbb{S}^{n-1})}^2
> =\sum_{\ell=0}^{\infty}(1+\ell(\ell+n-2))^s\|\Pi_\ell f\|_2^2.
> $$
> 有限范数的分布构成 $H^s(\mathbb{S}^{n-1})$；此定义等价于算子 $(I-\Delta_{\mathbb{S}^{n-1}})^{s/2}$ 的谱定义。

> **来源**：Elias M. Stein and Guido Weiss, *Introduction to Fourier Analysis on Euclidean Spaces*, Chapter IV；Claus Müller, *Spherical Harmonics*, Chapters 1--2。
