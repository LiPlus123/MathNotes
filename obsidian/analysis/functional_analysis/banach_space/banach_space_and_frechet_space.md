# 巴拿赫空间与弗雷歇空间

<!-- functional_analysis_norm_induced_metric -->
> [!Definition]
> **范数诱导的度量 Norm-Induced Metric**：设 $(X,\|\cdot\|)$ 是赋范线性空间。定义
> $$
> d(x,y)=\|x-y\|
> \qquad(x,y\in X).
> $$
> 则 $d$ 是 $X$ 上的平移不变度量，称为范数诱导的度量。

<!-- functional_analysis_b_star_space_definition -->
> [!Definition]
> **赋范数线性空间 $B^*$-Space**：带有范数的实或复线性空间称为**赋范数线性空间 $B^*$-Space**。其线性运算关于范数诱导的度量连续。

<!-- functional_analysis_banach_space_definition -->
> [!Definition]
> **巴拿赫空间 Banach Space**：完备的赋范数线性空间称为**巴拿赫空间 Banach Space**，也简称为 **$B$ 空间**。

<!-- functional_analysis_banach_space_frechet -->
> [!Proposition]
> **Banach 空间是 Fréchet 空间 Banach Spaces are Fréchet Spaces**：每个 Banach 空间都是 Fréchet 空间。
>
> **证明思路**：以唯一的半范数 $p_1(x)=\|x\|$ 生成拓扑；它分离点，且其诱导度量正是范数诱导度量。局部凸性来自范数球的凸性，完备性来自 Banach 空间的定义。

<!-- functional_analysis_banach_subspace_closed_criterion -->
> [!Theorem]
> **Banach 子空间的闭性判别 Closedness Criterion for Banach Subspaces**：设 $X$ 是 Banach 空间，$Y\subseteq X$ 是线性子空间并赋予限制度量。则 $Y$ 是 Banach 空间，当且仅当 $Y$ 在 $X$ 中闭。
>
> **证明思路**：这是完备度量空间中“子空间完备当且仅当闭”的结论应用于范数诱导度量。