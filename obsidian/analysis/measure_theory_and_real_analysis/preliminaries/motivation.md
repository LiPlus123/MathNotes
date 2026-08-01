# 从 Riemann 积分到 Lebesgue 积分

## Riemann 积分的局限

<!-- riemann_integral_partition -->
> [!Definition]
> **Riemann 和 Riemann Sum**：设 $f:[a,b]\to\mathbb{R}$ 有界，$P$ 是区间 $[a,b]$ 的一个分割
> $$
> P: a=x_0<x_1<\cdots<x_n=b,
> $$
> 并在每个子区间 $[x_{i-1},x_i]$ 中选取一点 $\xi_i$。相应的 Riemann 和定义为
> $$
> \sum_{i=1}^{n} f(\xi_i)(x_i-x_{i-1}).
> $$
> 若当分割的网长趋于 $0$ 时，此和对任意选点方式都趋于同一有限极限 $I$，则称 $f$ 在 $[a,b]$ 上 **Riemann 可积 Riemann Integrable**，并记
> $$
> I=\int_a^b f(x)\,dx.
> $$

<!-- riemann_integral_discontinuity_criterion -->
> [!Theorem]
> **Lebesgue 的 Riemann 可积判别法 Lebesgue's Criterion for Riemann Integrability**：设 $f:[a,b]\to\mathbb{R}$ 有界。则 $f$ 在 $[a,b]$ 上 Riemann 可积，当且仅当其不连续点集在 $[a,b]$ 上的 Lebesgue 测度为零。

>
> **证明思路**：以 $f$ 的局部振幅刻画上和与下和之差。若不连续点集零测，则可用总长度任意小的开区间覆盖高振幅处；反向由可积性构造使高振幅集合具有任意小长度的有限区间覆盖。

<!-- dirichlet_function_riemann_nonintegrable -->
> [!Example]+
> **Dirichlet 函数 Dirichlet Function**：令
> $$
> \mathbf{1}_{\mathbb{Q}}(x)=
> \begin{cases}
> 1, & x\in\mathbb{Q},\\
> 0, & x\notin\mathbb{Q}.
> \end{cases}
> $$
> 由于 $\mathbb{Q}$ 与其补集在每个非退化区间中都稠密，该函数在 $[0,1]$ 的每一点不连续。在任何分割下，它的下和为 $0$、上和为 $1$，因而不 Riemann 可积。这说明 Riemann 积分不能处理某些自然出现的有界函数。

## Lebesgue 积分的动机

<!-- lebesgue_integration_geometric_idea -->
> [!Definition]
> **Lebesgue 积分的几何观点 Geometric Idea of the Lebesgue Integral**：Riemann 积分通过分割定义域的区间并累加“窄而高”的竖条来近似面积；Lebesgue 积分则按函数值分层，衡量各层原像集合的大小，再累加“宽而低”的水平层。对非负简单函数
> $$
> s=\sum_{i=1}^{n} a_i\mathbf{1}_{E_i},
> $$
> 其积分将定义为 $\sum_{i=1}^{n}a_i\mu(E_i)$，其中 $E_i$ 为可测集，$\mu(E_i)$ 为其测度。
>
> **注**：此处仅说明构造思想；测度、可测集和非负简单函数的严格定义将在后续小节给出。

<!-- lebesgue_integral_extension_principle -->
> [!Theorem]
> **Lebesgue 积分的扩展原则 Extension Principle for the Lebesgue Integral**：在有界区间上，若 $f$ Riemann 可积，则 $f$ Lebesgue 可积，且两种积分相等。
>
> **证明思路**：用 Riemann 上、下阶梯函数夹逼 $f$。当分割充分细时，两者积分之差任意小；Lebesgue 积分的单调性和夹逼性质遂给出相同的极限。

<!-- lebesgue_measure_intuition -->
> [!Definition]
> **测度的直观意义 Intuitive Meaning of Measure**：测度是对集合“大小”的可加性量化。在 $\mathbb{R}$ 上，它应把区间 $[a,b]$ 的大小赋为 $b-a$，允许可数个两两不交集合的大小相加，并将单点及可数集视为零大小。这样的大小概念使积分能够忽略零测集合上的函数取值变化。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Chapter 1；Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 1。
