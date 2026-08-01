# 二进分解

## 频率的二进局部化

<!-- lp_dyadic_partition_definition -->
> [!Definition]
> **非齐次二进单位分解 Inhomogeneous Dyadic Partition of Unity**：取 $\chi,\varphi\in C_c^\infty(\mathbb{R}^n)$，使 $\chi$ 支撑于原点邻域，$\varphi$ 支撑于环域，且
> $$
> \chi(\xi)+\sum_{j=0}^{+\infty}\varphi(2^{-j}\xi)=1
> \qquad(\xi\in\mathbb{R}^n).
> $$
> 可要求 $\operatorname{supp}\varphi\subseteq\{\xi:c_0\leq|\xi|\leq C_0\}$，其中 $0<c_0<C_0<+\infty$。

<!-- lp_projection_definition -->
> [!Definition]
> **Littlewood-Paley 投影 Littlewood-Paley Projection**：对 $f\in\mathcal{S}'(\mathbb{R}^n)$，定义
> $$
> \widehat{\Delta_{-1}f}(\xi)=\chi(\xi)\widehat f(\xi),
> \qquad
> \widehat{\Delta_jf}(\xi)=\varphi(2^{-j}\xi)\widehat f(\xi)\quad(j\geq0).
> $$
> 因而 $\Delta_{-1}$ 取低频部分，$\Delta_j$ 取频率大小约为 $2^j$ 的部分。

<!-- lp_resolution_of_identity -->
> [!Theorem]
> **非齐次单位分解 Resolution of the Identity**：对每个 $f\in\mathcal{S}'(\mathbb{R}^n)$，
> $$
> f=\Delta_{-1}f+\sum_{j=0}^{+\infty}\Delta_jf
> $$
> 在 $\mathcal{S}'(\mathbb{R}^n)$ 意义下成立。对 Schwartz 函数，该级数及其各阶导数在适当意义下收敛。
>
> **证明思路**：将二进单位分解乘以 $\widehat f$。局部有限的频率支撑保证对任意测试函数只有有限或快速衰减的频带贡献，故可在温和分布意义逐项求和。

<!-- lp_frequency_localization -->
> [!Proposition]
> **频率局部化 Frequency Localization**：存在与 $j$ 无关的常数 $c,C>0$，使 $j\geq0$ 时
> $$
> \operatorname{supp}\widehat{\Delta_jf}
> \subseteq\{\xi:c2^j\leq|\xi|\leq C2^j\}.
> $$
> 此外，若 $|j-k|$ 充分大，则 $\Delta_j\Delta_k=0$。因此不同尺度的频带只有有限重叠。
>
> **证明思路**：直接由 $\varphi(2^{-j}\xi)$ 的环域支撑得到。两环域在尺度相差足够大时没有交集，故相应乘子的乘积为零。

<!-- lp_homogeneous_decomposition_note -->
> [!Definition]
> **齐次二进分解 Homogeneous Dyadic Decomposition**：若仅取环域函数 $\varphi$ 使
> $$
> \sum_{j\in\mathbb{Z}}\varphi(2^{-j}\xi)=1
> \qquad(\xi\ne0),
> $$
> 则定义齐次投影 $\dot\Delta_j$。齐次分解通常在模多项式的温和分布空间中解释，因为零频附近存在技术问题。

> **来源**：Hans Triebel, *Theory of Function Spaces*, Chapter 2；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 6。
