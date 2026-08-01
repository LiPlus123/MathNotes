# 代数与 $\sigma$ 代数

## 集合代数与 $\sigma$ 代数

<!-- set_algebra_detailed_definition -->
> [!Definition]
> **集合代数 Algebra of Sets**：设 $X$ 为集合，$\mathcal{A}\subseteq\mathcal{P}(X)$。若 $\mathcal{A}$ 包含 $X$，且对补集与有限并封闭，即
> $$
> X\in\mathcal{A},\qquad A\in\mathcal{A}\Rightarrow A^c\in\mathcal{A},\qquad A,B\in\mathcal{A}\Rightarrow A\cup B\in\mathcal{A},
> $$
> 则称 $\mathcal{A}$ 为 $X$ 上的集合代数。等价地，它包含 $X$ 且对集合差和有限并封闭。

<!-- sigma_algebra_detailed_definition -->
> [!Definition]
> **$\sigma$ 代数 $\sigma$-Algebra**：设 $X$ 为集合，$\mathcal{F}\subseteq\mathcal{P}(X)$。若 $X\in\mathcal{F}$，且对补集和可数并封闭，即
> $$
> A\in\mathcal{F}\Rightarrow A^c\in\mathcal{F},
> \qquad
> \{A_n\}_{n\geq1}\subseteq\mathcal{F}\Rightarrow\bigcup_{n=1}^{\infty}A_n\in\mathcal{F},
> $$
> 则称 $\mathcal{F}$ 为 $X$ 上的 $\sigma$ 代数；$\mathcal{F}$ 的元素称为 $\mathcal{F}$-可测集。

<!-- sigma_algebra_closure_properties -->
> [!Proposition]
> **$\sigma$ 代数的封闭性质 Closure Properties of a $\sigma$-Algebra**：若 $\mathcal{F}$ 是 $X$ 上的 $\sigma$ 代数，则 $\varnothing\in\mathcal{F}$，且对可数交、有限并、有限交和集合差均封闭。
>
> **证明思路**：由 $X^c=\varnothing$ 得空集；可数交由 De Morgan 律写成可数并的补，其他运算是这些运算的特例或组合。

<!-- generated_sigma_algebra_definition -->
> [!Definition]
> **生成的 $\sigma$ 代数 Generated $\sigma$-Algebra**：设 $\mathcal{E}\subseteq\mathcal{P}(X)$。包含 $\mathcal{E}$ 的所有 $\sigma$ 代数之交仍为 $\sigma$ 代数，称为由 $\mathcal{E}$ 生成的 $\sigma$ 代数，记为
> $$
> \sigma(\mathcal{E})=\bigcap\{\mathcal{F}:\mathcal{F}\text{ 是 }X\text{ 上的 }\sigma\text{ 代数且 }\mathcal{E}\subseteq\mathcal{F}\}.
> $$
> 它是包含 $\mathcal{E}$ 的最小 $\sigma$ 代数。

## Borel $\sigma$ 代数与乘积 $\sigma$ 代数

<!-- borel_sigma_algebra_definition -->
> [!Definition]
> **Borel $\sigma$ 代数 Borel $\sigma$-Algebra**：设 $(X,\mathcal{T})$ 为拓扑空间。由所有开集生成的 $\sigma$ 代数
> $$
> \mathcal{B}(X)=\sigma(\mathcal{T})
> $$
> 称为 $X$ 上的 Borel $\sigma$ 代数；其元素称为 Borel 集。特别地，$\mathbb{R}$ 上的 Borel $\sigma$ 代数由开区间族生成：
> $$
> \mathcal{B}(\mathbb{R})=\sigma\bigl(\{(a,b):a,b\in\mathbb{R},\ a<b\}\bigr).
> $$

<!-- borel_sigma_algebra_generating_classes -->
> [!Proposition]
> **实数上 Borel $\sigma$ 代数的生成类 Generating Classes for the Borel $\sigma$-Algebra on $\mathbb{R}$**：有
> $$
> \mathcal{B}(\mathbb{R})
> =\sigma\bigl(\{(a,b):a<b\}\bigr)
> =\sigma\bigl(\{(-\infty,a):a\in\mathbb{R}\}\bigr)
> =\sigma\bigl(\{(a,+\infty):a\in\mathbb{R}\}\bigr).
> $$
>
> **证明思路**：开半直线是开集；任意开区间可由两条开半直线相交得到。反过来，每个开集是可数个端点为有理数的开区间之并，故属于由开区间生成的 $\sigma$ 代数。

<!-- product_sigma_algebra_definition -->
> [!Definition]
> **乘积 $\sigma$ 代数 Product $\sigma$-Algebra**：设 $(X,\mathcal{A})$ 与 $(Y,\mathcal{B})$ 是可测空间。定义在 $X\times Y$ 上由所有可测矩形生成的 $\sigma$ 代数
> $$
> \mathcal{A}\otimes\mathcal{B}
> =\sigma\bigl(\{A\times B:A\in\mathcal{A},\ B\in\mathcal{B}\}\bigr),
> $$
> 称为 $\mathcal{A}$ 与 $\mathcal{B}$ 的乘积 $\sigma$ 代数。

<!-- product_borel_sigma_algebra_theorem -->
> [!Theorem]
> **可分度量空间的乘积 Borel $\sigma$ 代数 Product Borel $\sigma$-Algebra of Separable Metric Spaces**：若 $X,Y$ 是可分度量空间，则在乘积拓扑下
> $$
> \mathcal{B}(X\times Y)=\mathcal{B}(X)\otimes\mathcal{B}(Y).
> $$
>
> **证明思路**：开矩形属于乘积拓扑，故右侧包含于左侧。可分性保证乘积拓扑有可数基，任意开集可表示成可数个基开矩形之并，遂有反向包含。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 1.1；Donald L. Cohn, *Measure Theory*, 2nd ed., Sections 1.1--1.2。
