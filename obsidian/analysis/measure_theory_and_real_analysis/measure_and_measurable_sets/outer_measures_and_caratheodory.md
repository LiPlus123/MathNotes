# 外测度与 Carathéodory 扩张

## 外测度与 Carathéodory 可测性

<!-- outer_measure_definition -->
> [!Definition]
> **外测度 Outer Measure**：设 $X$ 是集合。映射
> $$
> \mu^*:\mathcal{P}(X)\to[0,+\infty]
> $$
> 称为 $X$ 上的外测度，若满足：
> 1. $\mu^*(\varnothing)=0$；
> 2. $A\subseteq B$ 蕴含 $\mu^*(A)\leq\mu^*(B)$；
> 3. 对任意子集列 $\{A_n\}_{n\geq1}\subseteq\mathcal{P}(X)$，
> $$
> \mu^*\left(\bigcup_{n=1}^{\infty}A_n\right)\leq\sum_{n=1}^{\infty}\mu^*(A_n).
> $$

<!-- caratheodory_measurable_set_definition -->
> [!Definition]
> **Carathéodory 可测集 Carathéodory Measurable Set**：设 $\mu^*$ 是 $X$ 上的外测度。若集合 $E\subseteq X$ 对每个 $A\subseteq X$ 均满足
> $$
> \mu^*(A)=\mu^*(A\cap E)+\mu^*(A\cap E^c),
> $$
> 则称 $E$ 为关于 $\mu^*$ 的 Carathéodory 可测集。

<!-- caratheodory_measurable_sets_form_sigma_algebra -->
> [!Theorem]
> **Carathéodory 可测集定理 Carathéodory Measurability Theorem**：设 $\mu^*$ 是 $X$ 上的外测度，$\mathcal{M}^*$ 为所有 Carathéodory 可测集构成的集族。则 $\mathcal{M}^*$ 是 $X$ 上的 $\sigma$ 代数，且 $\mu^*$ 在 $\mathcal{M}^*$ 上的限制
> $$
> \mu=\mu^*|_{\mathcal{M}^*}
> $$
> 是完备测度。
>
> **证明思路**：用可测性等式验证补集封闭；对有限个两两不交可测集反复分割任意集合，再由外测度的可数次可加性取极限，得到可数并封闭及限制的可数可加性。外测度为零集合的任意子集自动满足分割等式，故完备。

## 从预测度到测度

<!-- premeasure_definition -->
> [!Definition]
> **预测度 Premeasure**：设 $\mathcal{A}$ 是 $X$ 上的集合代数。若映射 $\mu_0:\mathcal{A}\to[0,+\infty]$ 满足 $\mu_0(\varnothing)=0$，并且每当两两不交的 $\{A_n\}_{n\geq1}\subseteq\mathcal{A}$ 满足 $\bigcup_{n=1}^{\infty}A_n\in\mathcal{A}$ 时都有
> $$
> \mu_0\left(\bigcup_{n=1}^{\infty}A_n\right)=\sum_{n=1}^{\infty}\mu_0(A_n),
> $$
> 则称 $\mu_0$ 为 $\mathcal{A}$ 上的预测度。

<!-- outer_measure_from_premeasure -->
> [!Definition]
> **由预测度诱导的外测度 Outer Measure Induced by a Premeasure**：对预测度 $\mu_0$，定义
> $$
> \mu_0^*(E)=\inf\left\{\sum_{n=1}^{\infty}\mu_0(A_n):E\subseteq\bigcup_{n=1}^{\infty}A_n,\ A_n\in\mathcal{A}\right\}
> $$
> 对每个 $E\subseteq X$ 成立。则 $\mu_0^*$ 是外测度。

<!-- caratheodory_extension_theorem -->
> [!Theorem]
> **Carathéodory 扩张定理 Carathéodory Extension Theorem**：设 $\mu_0$ 是集合代数 $\mathcal{A}$ 上的预测度。则存在定义在 $\sigma(\mathcal{A})$ 上的测度 $\mu$，使
> $$
> \mu|_{\mathcal{A}}=\mu_0.
> $$
> 若 $\mu_0$ 是 $\sigma$ 有限的，即 $X$ 可写为 $\mathcal{A}$ 中有限 $\mu_0$ 测度集合的可数并，则该扩张在 $\sigma(\mathcal{A})$ 上唯一。
>
> **证明思路**：先由覆盖公式构造外测度 $\mu_0^*$，证明 $\mathcal{A}$ 中的集合满足 Carathéodory 条件；再限制 $\mu_0^*$ 到其可测集族。唯一性由 $\pi$-$\lambda$ 定理和 $\sigma$ 有限分割将问题化为有限测度情形。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 1.10；Donald L. Cohn, *Measure Theory*, 2nd ed., Chapter 1。
