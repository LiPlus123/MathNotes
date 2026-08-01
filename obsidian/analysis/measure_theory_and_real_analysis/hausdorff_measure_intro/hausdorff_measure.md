# Hausdorff 测度

## Hausdorff 外测度

<!-- diameter_of_set_definition -->
> [!Definition]
> **集合的直径 Diameter of a Set**：设 $(X,d)$ 为度量空间，$E\subseteq X$。$E$ 的直径定义为
> $$
> \operatorname{diam}E=\sup\{d(x,y):x,y\in E\}.
> $$
> 约定 $\operatorname{diam}\varnothing=0$。

<!-- hausdorff_content_definition -->
> [!Definition]
> **$s$ 维 Hausdorff 内容 $s$-Dimensional Hausdorff Content**：设 $s\geq0$，$E\subseteq X$。$E$ 的 $s$ 维 Hausdorff 内容定义为
> $$
> \mathcal{H}^s_\infty(E)
> =\inf\left\{\sum_{i=1}^{\infty}(\operatorname{diam}U_i)^s:
> E\subseteq\bigcup_{i=1}^{\infty}U_i\right\},
> $$
> 其中下确界取遍 $X$ 中所有可数集合覆盖 $\{U_i\}_{i\geq1}$。本节对 $s=0$ 约定每个非空覆盖集的贡献为 $1$，并忽略空集覆盖项。

<!-- hausdorff_outer_measure_definition -->
> [!Definition]
> **Hausdorff 外测度 Hausdorff Outer Measure**：设 $s\geq0$、$\delta>0$。定义
> $$
> \mathcal{H}^s_\delta(E)
> =\inf\left\{\sum_{i=1}^{\infty}(\operatorname{diam}U_i)^s:
> E\subseteq\bigcup_{i=1}^{\infty}U_i,\ \operatorname{diam}U_i<\delta\right\}.
> $$
> $s$ 维 Hausdorff 测度定义为
> $$
> \mathcal{H}^s(E)=\lim_{\delta\downarrow0}\mathcal{H}^s_\delta(E)
> =\sup_{\delta>0}\mathcal{H}^s_\delta(E).
> $$
> 本节采用未归一化的直径定义；其他文献可能在右侧乘以一个只依赖于 $s$ 的正常数。

<!-- hausdorff_measure_is_borel_regular -->
> [!Theorem]
> **Hausdorff 测度的可测性与正则性 Measurability and Regularity of Hausdorff Measure**：对每个 $s\geq0$，$\mathcal{H}^s$ 是度量空间 $X$ 上的 Borel 正则测度：所有 Borel 集均为 Carathéodory 可测集，且对任意 $E\subseteq X$，
> $$
> \mathcal{H}^s(E)=\inf\{\mathcal{H}^s(U):E\subseteq U,\ U\text{ 为开集}\}.
> $$
>
> **证明思路**：先验证每个尺度下的覆盖函数 $\mathcal{H}^s_\delta$ 是度量外测度，即相距为正的集合满足可加性；Carathéodory 定理给出 Borel 集可测性。用覆盖集合的开邻域略微增大直径，得到开集外逼近。

<!-- hausdorff_measure_under_lipschitz_maps -->
> [!Proposition]
> **Lipschitz 映射下的 Hausdorff 测度 Hausdorff Measure under Lipschitz Maps**：若 $f:(X,d_X)\to(Y,d_Y)$ 为 $L$-Lipschitz 映射，则对每个 $E\subseteq X$ 与 $s\geq0$，
> $$
> \mathcal{H}^s(f(E))\leq L^s\mathcal{H}^s(E).
> $$
>
> **证明思路**：对任意 $\delta$-覆盖 $\{U_i\}$，集合 $\{f(U_i)\}$ 覆盖 $f(E)$，且 $\operatorname{diam}f(U_i)\leq L\operatorname{diam}U_i$。比较覆盖和并取下确界与极限即可。

<!-- hausdorff_measure_and_lebesgue_measure -->
> [!Theorem]
> **Hausdorff 测度与 Lebesgue 测度 Hausdorff Measure and Lebesgue Measure**：在 $\mathbb{R}^n$ 中，按本节未归一化的定义，存在常数 $c_n>0$，使对每个 Lebesgue 可测集 $E$，
> $$
> \mathcal{H}^n(E)=c_nm(E).
> $$
> 因此 $n$ 维 Hausdorff 测度与 $n$ 维 Lebesgue 测度只差归一化常数。
>
> **证明思路**：通过球或立方体的覆盖比较证明两测度在 Borel 集上相差常数；再利用两者的正则性与完备化性质推广到 Lebesgue 可测集。

## Hausdorff 维数

<!-- hausdorff_dimension_definition -->
> [!Definition]
> **Hausdorff 维数 Hausdorff Dimension**：设 $E\subseteq X$。$E$ 的 Hausdorff 维数定义为
> $$
> \dim_H E
> =\inf\{s\geq0:\mathcal{H}^s(E)=0\}
> =\sup\{s\geq0:\mathcal{H}^s(E)=+\infty\}.
> $$
> 两个集合约定相等的原因是 Hausdorff 测度随维数参数的临界跳变性质。

<!-- hausdorff_measure_dimension_transition -->
> [!Theorem]
> **Hausdorff 测度的维数临界跳变 Dimension Transition of Hausdorff Measure**：若 $\mathcal{H}^s(E)<+\infty$，则对每个 $t>s$，
> $$
> \mathcal{H}^t(E)=0.
> $$
> 若 $\mathcal{H}^s(E)>0$，则对每个 $0\leq t<s$，
> $$
> \mathcal{H}^t(E)=+\infty.
> $$
>
> **证明思路**：在直径小于 $\delta$ 的覆盖中，分别利用
> $$
> (\operatorname{diam}U_i)^t
> \leq\delta^{t-s}(\operatorname{diam}U_i)^s
> $$
> 及其反向版本比较覆盖和；令 $\delta\downarrow0$ 即得。

<!-- hausdorff_dimension_basic_properties -->
> [!Proposition]
> **Hausdorff 维数的基本性质 Basic Properties of Hausdorff Dimension**：对度量空间中的集合 $E,F$，有
> $$
> E\subseteq F\Longrightarrow\dim_HE\leq\dim_HF,
> $$
> $$
> \dim_H\left(\bigcup_{k=1}^{\infty}E_k\right)=\sup_{k\geq1}\dim_HE_k.
> $$
> 若 $f$ 是 Lipschitz 映射，则
> $$
> \dim_Hf(E)\leq\dim_HE.
> $$
> 特别地，双 Lipschitz 映射保持 Hausdorff 维数。
>
> **证明思路**：前两项分别来自 Hausdorff 测度的单调性和可数次可加性。Lipschitz 映射结论由 Hausdorff 测度的 Lipschitz 估计得到；对双 Lipschitz 映射同时应用 $f$ 与 $f^{-1}$。

<!-- hausdorff_dimension_examples -->
> [!Example]+
> **Hausdorff 维数的例子 Examples of Hausdorff Dimension**：
> 1. 可数集的 Hausdorff 维数为 $0$；
> 2. 非退化区间 $[a,b]\subseteq\mathbb{R}$ 的 Hausdorff 维数为 $1$；
> 3. $\mathbb{R}^n$ 中任意非空开集的 Hausdorff 维数为 $n$；
> 4. Cantor 集的 Hausdorff 维数为 $\log2/\log3$，其计算见下一小节。

> **注**：本小节参见 Kenneth Falconer, *Fractal Geometry: Mathematical Foundations and Applications*, 3rd ed., Chapters 2--3；Herbert Federer, *Geometric Measure Theory*, Section 2.10。
