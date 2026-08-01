# 向量值与算子值奇异积分

## Banach 空间值框架

<!-- singular_banach_valued_singular_integral -->
> [!Definition]
> **Banach 空间值奇异积分 Banach-Valued Singular Integral**：设 $X$ 为 Banach 空间，$K(x,y)\in\mathcal{L}(X)$（$x\ne y$）满足以算子范数表述的标准核估计。对 $X$ 值测试函数 $f$，形式上定义
> $$
> Tf(x)=\operatorname{p.v.}\int_{\mathbb{R}^n}K(x,y)f(y)\,dy,
> $$
> 其中积分取 Bochner 积分。若 $K(x,y)=k(x,y)I_X$，则称为标量核诱导的 $X$ 值奇异积分。

<!-- singular_hilbert_valued_cz_theorem -->
> [!Theorem]
> **Hilbert 空间值 Calderón-Zygmund 定理 Hilbert-Valued Calderón-Zygmund Theorem**：设 $\mathcal{H}$ 为 Hilbert 空间，且 $T$ 是标量 Calderón-Zygmund 算子。则对 $1<p<+\infty$，其逐点延拓
> $$
> (T\otimes I_{\mathcal{H}})f(x)=T(f(\cdot))(x)
> $$
> 满足
> $$
> \|T\otimes I_{\mathcal{H}}\|_{L^p(\mathbb{R}^n;\mathcal{H})\to L^p(\mathbb{R}^n;\mathcal{H})}<+\infty.
> $$
>
> **证明思路**：$p=2$ 时利用 Hilbert 空间的正交展开和标量 $L^2$ 估计；一般 $p$ 可用向量值 Calderón-Zygmund 分解或随机化方法。Hilbert 结构提供平方和控制。

<!-- singular_umd_definition -->
> [!Definition]
> **UMD 空间 UMD Space**：Banach 空间 $X$ 称为 UMD（无条件鞅差）空间，若对某个（等价地每个）$1<p<+\infty$，存在常数 $\beta_{p,X}$，使任意有限 $X$ 值鞅差列 $(d_k)$ 与任意符号 $\varepsilon_k\in\{-1,1\}$ 均有
> $$
> \left\|\sum_k\varepsilon_kd_k\right\|_{L^p(\Omega;X)}
> \leq\beta_{p,X}\left\|\sum_kd_k\right\|_{L^p(\Omega;X)}.
> $$

<!-- singular_burkholder_hilbert_characterization -->
> [!Theorem]
> **Hilbert 变换的 UMD 刻画 Hilbert Transform Characterization of UMD**：Banach 空间 $X$ 是 UMD 空间，当且仅当 Hilbert 变换延拓为
> $$
> H\otimes I_X:L^p(\mathbb{R};X)\longrightarrow L^p(\mathbb{R};X)
> $$
> 上的有界算子，其中 $1<p<+\infty$ 中任取一个 $p$ 即可。
>
> **证明思路**：一方向将鞅变换嵌入 Hilbert 变换的随机化模型；反方向借助适当的转移原理由鞅差的频率分解控制 Hilbert 变换。该定理说明 UMD 正是向量值奇异积分理论的核心几何条件。

<!-- singular_umd_examples -->
> [!Example]+
> **UMD 空间的例子 Examples of UMD Spaces**：每个 Hilbert 空间以及 $L^q(\Omega)$（$1<q<+\infty$）都是 UMD 空间；$L^1(\Omega)$、$L^\infty(\Omega)$ 一般不是 UMD 空间。因而 Banach 空间值 Calderón-Zygmund 有界性不能仅由 Banach 空间公理推出。

> **来源**：J. Bourgain, "Some remarks on Banach spaces in which martingale difference sequences are unconditional", *Arkiv för Matematik* 21 (1983)；Tuomas Hytönen, Jan van Neerven, Mark Veraar, and Lutz Weis, *Analysis in Banach Spaces*, Vol. I, Chapters 4--5。
