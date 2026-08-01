# 多线性乘子与半积

## 光滑符号与频率交互

<!-- multilinear_fourier_multiplier_definition -->
> [!Definition]
> **多线性 Fourier 乘子 Multilinear Fourier Multiplier**：对符号 $m(\xi_1,\ldots,\xi_m)$，定义
> $$
> T_m(f_1,\ldots,f_m)(x)
> =\int_{(\mathbb{R}^n)^m}m(\vec\xi)
> \prod_{i=1}^m\widehat f_i(\xi_i)
> e^{2\pi i x\cdot(\xi_1+\cdots+\xi_m)}\,d\vec\xi.
> $$
> 该定义先在 Schwartz 函数上理解，再寻求向 Lebesgue 或 Hardy 空间的有界延拓。

<!-- coifman_meyer_multiplier_theorem -->
> [!Theorem]
> **Coifman-Meyer 乘子定理 Coifman-Meyer Multiplier Theorem**：设 $m\in C^N((\mathbb{R}^n)^m\setminus\{0\})$，并对足够多的多重指标 $\alpha$ 满足
> $$
> |\partial^\alpha m(\vec\xi)|
> \leq C_\alpha\left(|\xi_1|+\cdots+|\xi_m|\right)^{-|\alpha|}.
> $$
> 若 $1<p_i<+\infty$、$1/p=\sum_i1/p_i$ 且 $p>1/m$，则
> $$
> \|T_m(f_1,\ldots,f_m)\|_p
> \lesssim\prod_{i=1}^m\|f_i\|_{p_i}.
> $$
>
> **证明思路**：以二进尺度分解符号，并在每个环域上将其展开为可和的 Fourier 级数；所得模型算子由极大函数和平方函数控制，再对尺度求和。

<!-- multilinear_paraproduct_definition -->
> [!Definition]
> **多线性半积 Multilinear Paraproduct**：给定频率投影 $\Delta_j$ 与低频截断 $S_j$，典型的 $m$-线性半积取形如
> $$
> \Pi(f_1,\ldots,f_m)
> =\sum_{j\geq-1}\left(\prod_{i=1}^{m-1}S_{j-1}f_i\right)\Delta_jf_m.
> $$
> 它描述多个低频输入与一个相近高频输入的相互作用；对高频位置求和可生成一般的多线性半积模型。

<!-- multilinear_paraproduct_estimate -->
> [!Theorem]
> **多线性半积估计 Multilinear Paraproduct Estimate**：若 $1<p_i<+\infty$、$1/p=\sum_i1/p_i$，则典型多线性半积满足
> $$
> \|\Pi(f_1,\ldots,f_m)\|_p
> \lesssim\prod_{i=1}^m\|f_i\|_{p_i}.
> $$
> 在 BMO 系数的端点版本中，适当归一化的半积可作为 $L^p$ 上有界算子；精确结论依赖于系数放置位置和对应的取消条件。
>
> **证明思路**：低频因子由极大函数控制，高频因子由向量值平方函数控制，最后应用 Hölder 不等式。BMO 端点以 Carleson 测度或 Haar 系数的 Carleson 嵌入处理。

<!-- multilinear_square_function -->
> [!Theorem]
> **多线性 Littlewood-Paley 平方函数估计 Multilinear Littlewood-Paley Square-Function Estimate**：定义同步频带平方函数
> $$
> \mathcal{S}(f_1,\ldots,f_m)
> =\left(\sum_{j\geq-1}\prod_{i=1}^m|\Delta_jf_i|^2\right)^{1/2}.
> $$
> 若 $1<p_i<+\infty$、$1/p=\sum_i1/p_i$，则
> $$
> \|\mathcal{S}(f_1,\ldots,f_m)\|_p
> \lesssim\prod_{i=1}^m\|f_i\|_{p_i}.
> $$
>
> **证明思路**：逐点用 $\ell^2$ 序列的乘积估计控制同步和，再对各输入应用 Littlewood-Paley 不等式与 Hölder 不等式。

<!-- multilinear_pseudodifferential_operator -->
> [!Definition]
> **多线性拟微分算子 Multilinear Pseudodifferential Operator**：对依赖空间变量的符号 $a(x,\xi_1,\ldots,\xi_m)$，定义
> $$
> T_a(\vec f)(x)
> =\int a(x,\vec\xi)\prod_{i=1}^m\widehat f_i(\xi_i)
> e^{2\pi i x\cdot(\xi_1+\cdots+\xi_m)}\,d\vec\xi.
> $$
> 对 $x$ 和频率变量施加适当的符号类估计后，Littlewood-Paley 分解可将其约化为有限类多线性半积。

<!-- product_and_flag_bmo_note -->
> [!Definition]
> **乘积 BMO 与 Flag BMO Product BMO and Flag BMO**：乘积 BMO 以多参数矩形上的平均振荡或 Carleson 条件刻画；flag BMO 则适配部分嵌套的变量尺度。它们常作为多参数半积和退化多线性算子的端点替代空间，具体定义依赖于所用的多参数几何。

> **来源**：Ronald Coifman and Yves Meyer, *Au delà des opérateurs pseudo-différentiels*；Camil Muscalu and Wilhelm Schlag, *Classical and Multilinear Harmonic Analysis*, Vols. I--II。
