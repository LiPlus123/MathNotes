# 正交与双正交小波

## 正交小波

<!-- haar_scaling_and_wavelet_definition -->
> [!Definition]
> **Haar 尺度函数与 Haar 小波 Haar Scaling Function and Haar Wavelet**：定义
> $$
> \phi(x)=\mathbf{1}_{[0,1)}(x),
> \qquad
> \psi(x)=\mathbf{1}_{[0,1/2)}(x)-\mathbf{1}_{[1/2,1)}(x).
> $$
> 则 $(\phi(\cdot-k))_{k\in\mathbb{Z}}$ 是 Haar 多分辨率分析的尺度函数基，而
> $$
> \psi_{j,k}(x)=2^{j/2}\psi(2^jx-k)
> $$
> 构成 $L^2(\mathbb{R})$ 的正交规范基。

<!-- haar_wavelet_properties_example -->
> [!Example]+
> **Haar 小波的紧支撑与消失矩 Haar Wavelet Compact Support and Vanishing Moment**：Haar 小波支撑于 $[0,1]$，并且
> $$
> \int_{\mathbb{R}}\psi(x)\,dx=0.
> $$
> 它具有一个消失矩，但不连续，故正则性为零。
>
> **证明思路**：由分段常数表达式直接计算积分和支撑；在 $x=1/2$ 处存在跳跃，故不连续。

<!-- daubechies_wavelet_existence -->
> [!Theorem]
> **Daubechies 紧支撑正交小波 Daubechies Compactly Supported Orthogonal Wavelets**：对每个 $N\geq1$，存在紧支撑正交尺度函数及其相应小波，使小波具有 $N$ 个消失矩：
> $$
> \int_{\mathbb{R}}x^m\psi(x)\,dx=0,
> \qquad 0\leq m<N.
> $$
> 当 $N>1$ 时，相应小波可具有正的 Hölder 正则性。
>
> **证明思路**：构造满足正交镜像条件且在低通符号 $H$ 的半频点具有 $N$ 重零点的有限滤波器；无限乘积给出尺度函数，正交补滤波器给出小波。

<!-- vanishing_moments_polynomial_annihilation -->
> [!Theorem]
> **消失矩与多项式消去 Vanishing Moments and Polynomial Annihilation**：若 $\psi$ 具有 $N$ 个消失矩，则对任意次数小于 $N$ 的多项式 $P$ 及任意 $a\ne0,b\in\mathbb{R}$，
> $$
> \langle P,\psi_{a,b}\rangle=0
> $$
> （在积分有意义的局部形式下）。
>
> **证明思路**：作变量替换 $x=au+b$，并将 $P(au+b)$ 展开为次数小于 $N$ 的 $u$ 的多项式；每一项由相应消失矩消失。

## 双正交小波与提升

<!-- biorthogonal_wavelet_definition -->
> [!Definition]
> **双正交小波 Biorthogonal Wavelets**：两组函数 $(\phi,\psi)$ 与 $(\widetilde\phi,\widetilde\psi)$ 称为双正交小波系，若它们生成相应尺度与细节空间，且
> $$
> \langle\phi(\cdot-k),\widetilde\phi(\cdot-\ell)\rangle=\delta_{k\ell},
> \qquad
> \langle\psi_{j,k},\widetilde\psi_{j',k'}\rangle=\delta_{jj'}\delta_{kk'}.
> $$
> 此时可利用分析小波 $\widetilde\psi$ 取得系数，并利用合成小波 $\psi$ 重构。

<!-- biorthogonal_wavelet_reconstruction -->
> [!Theorem]
> **双正交小波重构 Biorthogonal Wavelet Reconstruction**：在适当的 $L^2$ 收敛意义下，
> $$
> f=\sum_{k\in\mathbb{Z}}\langle f,\widetilde\phi_{J,k}\rangle\phi_{J,k}
> +\sum_{j\geq J}\sum_{k\in\mathbb{Z}}\langle f,\widetilde\psi_{j,k}\rangle\psi_{j,k}.
> $$
>
> **证明思路**：双正交关系保证分析与合成算子在有限尺度上互逆；令有限尺度逼近趋于 $f$ 即得结论。

<!-- lifting_scheme_definition -->
> [!Definition]
> **提升格式 Lifting Scheme**：对离散信号先将样本拆为偶、奇子列，再依次施行预测步骤和更新步骤，得到细节与近似系数的可逆变换，称为提升格式。每一步为三角可逆算子，故可通过逆序、取反操作精确重构。

> **来源**：Ingrid Daubechies, *Ten Lectures on Wavelets*, Chapters 6--8；Wim Sweldens, "The Lifting Scheme: A Construction of Second Generation Wavelets", *SIAM Journal on Mathematical Analysis* 29 (1998)。
