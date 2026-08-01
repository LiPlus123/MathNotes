# Riemann 积分的定义

<!-- real_analysis_riemann_partition_definition -->
> [!Definition]
> **闭区间的分划 Partition of a Closed Interval**：设 $a<b$。闭区间 $[a,b]$ 的一个分划是有限点列
> $$
> P:\ a=x_0<x_1<\cdots<x_n=b.
> $$
> 记子区间 $I_i=[x_{i-1},x_i]$、长度 $\Delta x_i=x_i-x_{i-1}$，并定义分划的网长为
> $$
> \|P\|=\max_{1\leq i\leq n}\Delta x_i.
> $$

<!-- real_analysis_riemann_sum_definition -->
> [!Definition]
> **Riemann 和 Riemann Sum**：设 $f:[a,b]\to\mathbb{R}$，$P$ 为一个分划。对每个 $i$ 选取标记点 $\xi_i\in I_i$，则和
> $$
> S(f;P,\xi)=\sum_{i=1}^n f(\xi_i)\Delta x_i
> $$
> 称为 $f$ 关于带标记分割 $(P,\xi)$ 的 Riemann 和。

<!-- real_analysis_riemann_integral_limit_definition -->
> [!Definition]
> **Riemann 积分的极限定义 Limit Definition of the Riemann Integral**：函数 $f:[a,b]\to\mathbb{R}$ 称为 Riemann 可积，若存在 $I\in\mathbb{R}$，使对任意 $\varepsilon>0$，存在 $\delta>0$，对每个满足 $\|P\|<\delta$ 的带标记分割 $(P,\xi)$ 都有
> $$
> \left|S(f;P,\xi)-I\right|<\varepsilon.
> $$
> 此唯一的 $I$ 记为
> $$
> \int_a^b f(x)\,\mathrm{d}x.
> $$

<!-- real_analysis_darboux_upper_lower_sums_definition -->
> [!Definition]
> **Darboux 上和与下和 Darboux Upper and Lower Sums**：设 $f:[a,b]\to\mathbb{R}$ 有界，$P$ 为分划。令
> $$
> M_i=\sup_{x\in I_i}f(x),
> \qquad
> m_i=\inf_{x\in I_i}f(x).
> $$
> 定义上和与下和为
> $$
> U(f,P)=\sum_{i=1}^nM_i\Delta x_i,
> \qquad
> L(f,P)=\sum_{i=1}^nm_i\Delta x_i.
> $$
> 上积分与下积分分别定义为
> $$
> \overline{\int_a^b}f=\inf_PU(f,P),
> \qquad
> \underline{\int_a^b}f=\sup_PL(f,P).
> $$

<!-- real_analysis_darboux_integrability_criterion -->
> [!Theorem]
> **Darboux 判据 Darboux Criterion**：有界函数 $f:[a,b]\to\mathbb{R}$ Riemann 可积，当且仅当对任意 $\varepsilon>0$，存在分划 $P$ 使得
> $$
> U(f,P)-L(f,P)<\varepsilon.
> $$
> 等价地，$f$ Riemann 可积当且仅当其上积分与下积分相等。
>
> **证明思路**：任一 Riemann 和夹在相应下和与上和之间。若上下和可任意接近，则所有足够细的带标记和集中于一个小区间；反之，积分极限的定义可给出上下和之差任意小的分划。

<!-- real_analysis_riemann_integrability_equivalent_definitions -->
> [!Theorem]
> **Riemann 可积的等价定义 Equivalent Definitions of Riemann Integrability**：对有界函数 $f:[a,b]\to\mathbb{R}$，以下条件等价：
> 1. $f$ 按 Riemann 和的网长极限定义可积；
> 2. $f$ 满足 Darboux 判据；
> 3. 上积分与下积分相等。
>
> **证明思路**：以每个 Riemann 和位于下和与上和之间为桥梁，并通过分割的公共细化比较不同分割的上、下和。

<!-- real_analysis_riemann_integral_example -->
> [!Example]+
> **Riemann 积分的例子 Example of a Riemann Integral**：对 $f(x)=x$ 及等距分割 $x_i=i/n$，取 $\xi_i=x_i$，有
> $$
> \sum_{i=1}^n\frac{i}{n}\cdot\frac1n
> =\frac{n+1}{2n}\longrightarrow\frac12.
> $$
> 因此
> $$
> \int_0^1x\,\mathrm{d}x=\frac12.
> $$

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 7；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 6。