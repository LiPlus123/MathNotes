# 多分辨率分析

## 嵌套近似空间

<!-- multiresolution_analysis_definition -->
> [!Definition]
> **多分辨率分析 Multiresolution Analysis**：$L^2(\mathbb{R})$ 的一列闭子空间 $(V_j)_{j\in\mathbb{Z}}$ 称为多分辨率分析，若满足：
>
> 1. $V_j\subseteq V_{j+1}$；
> 2. $f\in V_j$ 当且仅当 $f(2\cdot)\in V_{j+1}$；
> 3. $\bigcap_jV_j=\{0\}$，且 $\overline{\bigcup_jV_j}=L^2(\mathbb{R})$；
> 4. 存在尺度函数 $\phi\in V_0$，使 $(\phi(\cdot-k))_{k\in\mathbb{Z}}$ 为 $V_0$ 的正交规范基。

<!-- scale_function_basis_theorem -->
> [!Theorem]
> **尺度函数基 Scale-Function Bases**：若 $(V_j)$ 是多分辨率分析，且 $\phi$ 为其尺度函数，则
> $$
> \phi_{j,k}(x)=2^{j/2}\phi(2^jx-k),\qquad k\in\mathbb{Z},
> $$
> 构成 $V_j$ 的正交规范基。
>
> **证明思路**：由伸缩公理将 $V_0$ 的平移正交基搬运至 $V_j$；$L^2$ 归一化系数来自变量替换。

## 细节空间与双尺度方程

<!-- detail_space_definition -->
> [!Definition]
> **细节空间 Detail Space**：定义
> $$
> W_j=V_{j+1}\ominus V_j.
> $$
> 则 $V_{j+1}=V_j\oplus W_j$；$W_j$ 表示从尺度 $j$ 到尺度 $j+1$ 新增的细节。

<!-- multiresolution_direct_sum_decomposition -->
> [!Theorem]
> **多尺度正交分解 Multiscale Orthogonal Decomposition**：对任意 $J\in\mathbb{Z}$，
> $$
> L^2(\mathbb{R})=V_J\oplus\widehat{\bigoplus}_{j\geq J}W_j.
> $$
>
> **证明思路**：反复使用 $V_{j+1}=V_j\oplus W_j$，再由 $\bigcup_jV_j$ 在 $L^2$ 中稠密取极限。

<!-- two_scale_equation_definition -->
> [!Definition]
> **双尺度方程 Two-Scale Equation**：由于 $\phi\in V_1$，存在平方可和序列 $(h_k)_{k\in\mathbb{Z}}$，使
> $$
> \phi(x)=\sqrt{2}\sum_{k\in\mathbb{Z}}h_k\phi(2x-k).
> $$
> 序列 $(h_k)$ 称为低通滤波器或细化掩模。

<!-- wavelet_two_scale_equation -->
> [!Theorem]
> **小波的双尺度方程 Wavelet Two-Scale Equation**：若 $\psi\in W_0$ 的整数平移构成 $W_0$ 的正交规范基，则存在高通滤波器 $(g_k)$ 使
> $$
> \psi(x)=\sqrt{2}\sum_{k\in\mathbb{Z}}g_k\phi(2x-k).
> $$
> 在正交情形可取 $g_k=(-1)^k\overline{h_{1-k}}$。
>
> **证明思路**：$\psi\in V_1$ 可按 $V_1$ 的尺度函数基展开；正交补条件给出滤波器的正交镜像关系。

<!-- quadrature_mirror_filter_condition -->
> [!Theorem]
> **正交镜像滤波器条件 Quadrature Mirror Filter Condition**：令
> $$
> H(\xi)=\frac{1}{\sqrt{2}}\sum_{k\in\mathbb{Z}}h_ke^{-2\pi i k\xi}.
> $$
> 尺度函数整数平移的正交性等价于
> $$
> |H(\xi)|^2+|H(\xi+\tfrac12)|^2=1
> $$
> 几乎处处成立。
>
> **证明思路**：将整数平移正交性写成自相关系数条件，对离散序列取 Fourier 级数；偶、奇抽取恰给出该二通道能量分解。

> **来源**：Ingrid Daubechies, *Ten Lectures on Wavelets*, Chapters 5--6；Stéphane Mallat, *A Wavelet Tour of Signal Processing*, 3rd ed., Chapters 7--8。
