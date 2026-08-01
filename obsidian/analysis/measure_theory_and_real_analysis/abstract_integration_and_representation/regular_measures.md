# 正则测度

## 内正则性与外正则性

<!-- inner_regular_measure_definition -->
> [!Definition]
> **内正则测度 Inner Regular Measure**：设 $X$ 为拓扑空间，$\mu$ 是 $\mathcal{B}(X)$ 上的 Borel 测度。若对每个 Borel 集 $E\subseteq X$，有
> $$
> \mu(E)=\sup\{\mu(K):K\subseteq E,\ K\text{ 为紧集}\},
> $$
> 则称 $\mu$ 为内正则的。

<!-- outer_regular_measure_definition -->
> [!Definition]
> **外正则测度 Outer Regular Measure**：设 $X$ 为拓扑空间，$\mu$ 是 $\mathcal{B}(X)$ 上的 Borel 测度。若对每个 Borel 集 $E\subseteq X$，有
> $$
> \mu(E)=\inf\{\mu(U):E\subseteq U,\ U\text{ 为开集}\},
> $$
> 则称 $\mu$ 为外正则的。

<!-- regular_borel_measure_definition -->
> [!Definition]
> **正则 Borel 测度 Regular Borel Measure**：若 Borel 测度 $\mu$ 同时内正则和外正则，则称其为正则 Borel 测度。若还满足每个紧集的测度有限，则称其为局部有限的正则 Borel 测度；在本章中，这样的测度称为 Radon 测度。

<!-- regular_approximation_theorem -->
> [!Theorem]
> **正则逼近 Regular Approximation**：设 $\mu$ 是局部紧 Hausdorff 空间 $X$ 上的 Radon 测度。若 $E\in\mathcal{B}(X)$ 且 $\mu(E)<+\infty$，则对每个 $\varepsilon>0$，存在紧集 $K$ 和开集 $U$，使得
> $$
> K\subseteq E\subseteq U,
> \qquad
> \mu(U\setminus K)<\varepsilon.
> $$
>
> **证明思路**：由内正则性选择 $K\subseteq E$ 使 $\mu(E\setminus K)<\varepsilon/2$，由外正则性选择 $U\supseteq E$ 使 $\mu(U\setminus E)<\varepsilon/2$；利用不交分解并相加即可。

<!-- radon_measure_regularization_theorem -->
> [!Theorem]
> **局部紧第二可数空间上的 Radon 正则性 Radon Regularity on Locally Compact Second-Countable Spaces**：设 $X$ 是局部紧第二可数 Hausdorff 空间。每个局部有限 Borel 测度都是 Radon 测度。
>
> **证明思路**：第二可数性提供可数基，局部紧性允许以紧集从内逼近基开集。先对开集构造紧集递增逼近，再利用局部有限性和测度连续性推广到 Borel 集；由可数基构造开集外逼近。

<!-- lebesgue_measure_regularity_example -->
> [!Example]+
> **Lebesgue 测度的正则性 Regularity of Lebesgue Measure**：$\mathbb{R}^n$ 上的 Lebesgue 测度 $m$ 是 Radon 测度。特别地，对每个 Lebesgue 可测集 $E$ 且 $m(E)<+\infty$，有
> $$
> m(E)=\sup_{K\subseteq E,\ K\text{ 紧}}m(K)
> =\inf_{E\subseteq U,\ U\text{ 开}}m(U).
> $$
> 这里可测集相对于 Lebesgue $\sigma$ 代数理解；它是 Borel 测度的完备化，正则逼近仍然成立。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 7.1；V. I. Bogachev, *Measure Theory*, Volume I, Chapter 7。
