# Fourier 限制猜想

## 曲面上的 Fourier 变换

<!-- restriction_operator_definition -->
> [!Definition]
> **Fourier 限制算子 Fourier Restriction Operator**：设 $S\subset\mathbb{R}^n$ 是带有曲面测度 $d\sigma$ 的光滑紧超曲面。对 Schwartz 函数 $f$，定义
> $$
> R_Sf=\widehat f\big|_S.
> $$
> 虽然 $\widehat f$ 对一般 $f\in L^p(\mathbb{R}^n)$ 未必可逐点定义，但限制问题研究何时 $R_S$ 可连续延拓至 $L^q(S,d\sigma)$。

<!-- restriction_curvature_condition -->
> [!Definition]
> **非零 Gauss 曲率 Nonvanishing Gaussian Curvature**：若 $S$ 的 Gauss 映射的微分处处满秩，则称 $S$ 具有非零 Gauss 曲率。单位球面 $\mathbb{S}^{n-1}$ 与抛物面
> $$
> \mathbb{P}^{n-1}=\{(\xi,|\xi|^2):\xi\in\mathbb{R}^{n-1}\}
> $$
> 是限制理论的基本模型；曲率导致 Fourier 变换在法向方向产生振荡消去。

<!-- stein_tomas_theorem -->
> [!Theorem]
> **Stein--Tomas 限制定理 Stein--Tomas Restriction Theorem**：设 $S\subset\mathbb{R}^n$ 是光滑紧超曲面，且 Gauss 曲率处处非零。则对
> $$
> 1\leq p\leq\frac{2(n+1)}{n+3},
> $$
> 有
> $$
> \|\widehat f\big|_S\|_{L^2(S,d\sigma)}
> \leq C\|f\|_{L^p(\mathbb{R}^n)}.
> $$
> 该定理特别适用于 $\mathbb{S}^{n-1}$；抛物面的对应结论以其自然抛物缩放表述。
>
> **证明思路**：通过对偶性转化为扩张算子的 $L^2(S)\to L^{p'}(\mathbb{R}^n)$ 估计。曲面测度 Fourier 变换的稳定相位衰减，配合 $TT^*$ 方法与 Hardy-Littlewood-Sobolev 型估计给出结论。

<!-- restriction_l2_conjecture -->
> [!Theorem]
> **$L^2$ 限制猜想 $L^2$ Restriction Conjecture**：对具有非零 Gauss 曲率的紧超曲面 $S\subset\mathbb{R}^n$，预期当
> $$
> 1\leq p<\frac{2n}{n+1}
> $$
> 时，限制估计
> $$
> \|\widehat f\big|_S\|_{L^2(S)}\lesssim\|f\|_{L^p(\mathbb{R}^n)}
> $$
> 成立。由 Knapp 型集中例子可知指数 $p\leq2n/(n+1)$ 是必要条件；一般端点仍属深刻问题。
>
> **证明思路**：必要性取 Fourier 支撑在 $S$ 的一小帽附近的函数，其物理空间质量集中于相应的长薄管。充分性需要控制不同帽所产生波包的重叠，是限制理论的核心困难。

<!-- restriction_paraboloid_scaling -->
> [!Proposition]
> **抛物面的缩放必要条件 Paraboloid Scaling Condition**：对抛物面扩张算子，若
> $$
> \|\mathcal{E}g\|_{L^q(\mathbb{R}^n)}\lesssim\|g\|_{L^2(\mathbb{R}^{n-1})},
> $$
> 则抛物缩放 $(x',x_n)\mapsto(r x',r^2x_n)$ 强制
> $$
> q=\frac{2(n+1)}{n-1}
> $$
> 在尺度不变的 $L^2$ 情形成立。该指数正是 Schrödinger Strichartz 估计的临界时空指数。
>
> **证明思路**：令 $g_r(\xi)=g(\xi/r)$，比较 $\|g_r\|_2$ 和 $\|\mathcal{E}g_r\|_q$ 在抛物缩放下的幂次。

<!-- restriction_knapp_example -->
> [!Example]+
> **Knapp 帽例 Knapp Cap Example**：取球面上一块角半径约为 $\delta$ 的帽，并令扩张数据集中于该帽。其扩张在长约 $\delta^{-2}$、横截尺度约 $\delta^{-1}$ 的管中近乎相干叠加。比较管内振幅与管体积，得到限制和扩张估计的必要指数条件。
>
> **证明思路**：在与帽中心法向平行的管中，相位变化保持有界，故积分缺少明显抵消；直接估计该区域上的 $L^q$ 质量即可。

> **来源**：Elias M. Stein, *Harmonic Analysis: Real-Variable Methods, Orthogonality, and Oscillatory Integrals*, Chapter VIII；Thomas Wolff, *Lectures on Harmonic Analysis*。
