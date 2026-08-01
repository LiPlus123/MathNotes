# Lebesgue 测度

## Lebesgue 外测度与可测集

<!-- lebesgue_outer_measure_definition -->
> [!Definition]
> **Lebesgue 外测度 Lebesgue Outer Measure**：对任意 $E\subseteq\mathbb{R}$，定义
> $$
> m^*(E)=\inf\left\{\sum_{n=1}^{\infty}|I_n|:E\subseteq\bigcup_{n=1}^{\infty}I_n,\ I_n\text{ 为开区间}\right\},
> $$
> 其中 $|I_n|$ 表示区间 $I_n$ 的长度。$m^*$ 是 $\mathbb{R}$ 上的外测度。

<!-- lebesgue_measurable_set_definition -->
> [!Definition]
> **Lebesgue 可测集 Lebesgue Measurable Set**：若 $E\subseteq\mathbb{R}$ 对每个 $A\subseteq\mathbb{R}$ 满足
> $$
> m^*(A)=m^*(A\cap E)+m^*(A\cap E^c),
> $$
> 则称 $E$ 为 Lebesgue 可测集。所有 Lebesgue 可测集构成的 $\sigma$ 代数记为 $\mathcal{L}$；$m^*$ 在 $\mathcal{L}$ 上的限制记为 $m$，称为 Lebesgue 测度。

<!-- lebesgue_measure_interval_and_invariance -->
> [!Theorem]
> **Lebesgue 测度的区间长度与平移不变性 Interval Length and Translation Invariance**：对任意 $a\leq b$，
> $$
> m([a,b])=m((a,b))=b-a.
> $$
> 此外，对任意 $E\in\mathcal{L}$ 与 $t\in\mathbb{R}$，有 $E+t\in\mathcal{L}$ 且
> $$
> m(E+t)=m(E),
> $$
> 其中 $E+t=\{x+t:x\in E\}$。
>
> **证明思路**：开区间覆盖的长度在平移下不变，故 $m^*(E+t)=m^*(E)$；再将 Carathéodory 条件平移即可。区间长度由覆盖的上界与有限区间覆盖长度的下界共同确定。

<!-- borel_and_lebesgue_measurable_sets -->
> [!Theorem]
> **Borel 集与 Lebesgue 可测集 Borel and Lebesgue Measurable Sets**：有
> $$
> \mathcal{B}(\mathbb{R})\subseteq\mathcal{L}.
> $$
> 更精确地，每个 Lebesgue 可测集 $E$ 都可表示为
> $$
> E=B\cup N,
> $$
> 其中 $B\in\mathcal{B}(\mathbb{R})$，$N$ 是某个 Borel 零测集的子集。因此 $\mathcal{L}$ 是 Borel 测度 $m|_{\mathcal{B}(\mathbb{R})}$ 的完备化。
>
> **证明思路**：先证明开集满足 Carathéodory 条件，因而所有 Borel 集可测。再以开集近似 Lebesgue 可测集，构造与之仅相差零测集的 $G_\delta$ 集或 Borel 集。

<!-- lebesgue_measure_regular_approximation -->
> [!Proposition]
> **Lebesgue 测度的正则逼近 Regular Approximation for Lebesgue Measure**：若 $E\in\mathcal{L}$ 且 $m(E)<+\infty$，则对每个 $\varepsilon>0$，存在闭集 $F$ 与开集 $G$，使
> $$
> F\subseteq E\subseteq G,
> \qquad
> m(G\setminus F)<\varepsilon.
> $$
>
> **证明思路**：由外正则性先选取包含 $E$ 且测度增量小的开集 $G$；再对有限测度集合 $E$ 的补集应用外正则性，得到所需闭集 $F$。

<!-- vitali_nonmeasurable_set_theorem -->
> [!Theorem]
> **Vitali 不可测集 Vitali Nonmeasurable Set**：存在 $[0,1]$ 的子集 $V$，它不是 Lebesgue 可测集。
>
> **证明思路**：按 $x\sim y\Leftrightarrow x-y\in\mathbb{Q}$ 将 $[0,1]$ 分为等价类，并从每类选取一个代表元构成 $V$。有理数平移 $V+q$（$q\in\mathbb{Q}\cap[-1,1]$）两两不交，它们的并包含 $[0,1]$ 且包含于 $[-1,2]$。若 $V$ 可测，平移不变性与可数可加性会使该并的测度同时不可能为 $0$ 或有限正数，导出矛盾。

> **注**：Vitali 集的构造使用选择公理。本小节参见 Elias M. Stein and Rami Shakarchi, *Real Analysis*, Chapter 1；Gerald B. Folland, *Real Analysis*, 2nd ed., Sections 1.1--1.2。
