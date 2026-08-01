# 连续小波变换

以下在 $\mathbb{R}$ 上采用 Fourier 变换 $\widehat f(\xi)=\int_{\mathbb{R}}f(x)e^{-2\pi i x\xi}\,dx$。高维连续小波还需考虑方向变量或更一般的伸缩群。

## 平移、伸缩与容许小波

<!-- wavelet_translation_dilation_representation -->
> [!Definition]
> **平移和伸缩表示 Translation-Dilation Representation**：对 $a\in\mathbb{R}\setminus\{0\}$、$b\in\mathbb{R}$ 及 $\psi\in L^2(\mathbb{R})$，定义
> $$
> \psi_{a,b}(x)=|a|^{-1/2}\psi\left(\frac{x-b}{a}\right).
> $$
> 则映射 $\psi\mapsto\psi_{a,b}$ 保持 $L^2$ 范数；它由平移与各向同性伸缩组成。

<!-- admissible_wavelet_definition -->
> [!Definition]
> **容许小波 Admissible Wavelet**：非零函数 $\psi\in L^2(\mathbb{R})$ 称为容许小波，若其容许常数
> $$
> C_\psi=\int_{\mathbb{R}}\frac{|\widehat\psi(\xi)|^2}{|\xi|}\,d\xi
> $$
> 有限。特别地，容许性蕴含 $\widehat\psi(0)=0$；若 $\psi\in L^1$，则 $\int_{\mathbb{R}^n}\psi(x)\,dx=0$。

## 连续小波变换与重构

<!-- continuous_wavelet_transform_definition -->
> [!Definition]
> **连续小波变换 Continuous Wavelet Transform**：对容许小波 $\psi$ 与 $f\in L^2(\mathbb{R})$，定义
> $$
> W_\psi f(a,b)=\langle f,\psi_{a,b}\rangle_{L^2}
> =\int_{\mathbb{R}}f(x)\overline{\psi_{a,b}(x)}\,dx.
> $$
> 参数 $b$ 表示位置，$|a|$ 表示分析尺度。

<!-- continuous_wavelet_plancherel_identity -->
> [!Theorem]
> **连续小波变换的等距恒等式 Plancherel Identity for the Continuous Wavelet Transform**：若 $\psi$ 容许，则对每个 $f\in L^2(\mathbb{R})$，
> $$
> \int_{\mathbb{R}\setminus\{0\}}\int_{\mathbb{R}}
> |W_\psi f(a,b)|^2\,db\,\frac{da}{a^2}
> =C_\psi\|f\|_2^2.
> $$
>
> **证明思路**：固定 $a$，将 $b\mapsto W_\psi f(a,b)$ 识别为 $f$ 与适当反射共轭小波的卷积，并对 $b$ 应用 Plancherel 定理；再交换尺度与频率积分，径向变量替换产生容许常数。

<!-- continuous_wavelet_reconstruction_formula -->
> [!Theorem]
> **连续小波重构公式 Continuous Wavelet Reconstruction Formula**：若 $\psi$ 容许，则任意 $f\in L^2(\mathbb{R})$ 满足
> $$
> f=\frac{1}{C_\psi}
> \int_{\mathbb{R}\setminus\{0\}}\int_{\mathbb{R}}
> W_\psi f(a,b)\psi_{a,b}\,db\,\frac{da}{a^2},
> $$
> 其中积分在弱 $L^2$ 意义下收敛。
>
> **证明思路**：将右端与任意 $g\in L^2$ 配对，应用连续小波变换的极化恒等式，得到与 $f$ 的内积相同；由 Riesz 表示定理得出重构结论。

## 局部化

<!-- wavelet_time_scale_localization -->
> [!Definition]
> **时频局部化与尺度局部化 Time-Frequency and Scale Localization**：若母小波 $\psi$ 同时在位置域和频率域集中，则 $\psi_{a,b}$ 集中于位置 $b$ 附近、空间尺度约为 $|a|$，其 Fourier 变换集中于频率尺度约为 $|a|^{-1}$。因此，连续小波变换以不同的分辨率考察函数的局部振荡。

<!-- wavelet_zero_mean_edge_detection_example -->
> [!Example]+
> **零均值小波与奇异性检测 Zero-Mean Wavelets and Singularity Detection**：令 $\phi\in\mathcal{S}(\mathbb{R})$ 且 $\int\phi=1$，取 $\psi=\phi'$。则 $\int\psi=0$，并且
> $$
> W_\psi f(a,b)=-a^{1/2}\partial_b(f*\widetilde\phi_a)(b)
> $$
> （$a>0$，符号取决于反射约定）。因此，小尺度下的大系数标记了 $f$ 的快速变化或奇异位置。
>
> **证明思路**：将 $\psi=\phi'$ 代入小波系数的卷积表示，并将导数移至平滑卷积的空间变量即可。

> **来源**：Yves Meyer, *Wavelets and Operators*, Chapters I--II；Ingrid Daubechies, *Ten Lectures on Wavelets*, Chapters 1--2；Stéphane Mallat, *A Wavelet Tour of Signal Processing*, 3rd ed., Chapter 4。
