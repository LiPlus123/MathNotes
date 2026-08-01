# 第二型曲线积分

<!-- real_analysis_second_kind_line_integral_definition -->
> [!Definition]
> **第二型曲线积分 Line Integral of the Second Kind**：设 $\gamma:[a,b]\to\mathbb{R}^n$ 为定向分段 $C^1$ 曲线，$F$ 为沿曲线连续的向量场。定义 $F$ 沿 $\gamma$ 的第二型曲线积分为
> $$
> \int_\gamma F\cdot\mathrm{d}r
> =\int_a^bF(\gamma(t))\cdot\gamma'(t)\,\mathrm{d}t.
> $$
> 在 $\mathbb{R}^2$ 中，若 $F=(P,Q)$，则记作
> $$
> \int_\gamma P\,\mathrm{d}x+Q\,\mathrm{d}y.
> $$

<!-- real_analysis_second_kind_line_integral_reparameterization -->
> [!Theorem]
> **第二型曲线积分的重参数化 Reparameterization of Second-Kind Line Integrals**：设 $\phi:[c,d]\to[a,b]$ 为保定向的双射、分段 $C^1$ 且严格递增，则
> $$
> \int_{\gamma\circ\phi}F\cdot\mathrm{d}r
> =\int_\gamma F\cdot\mathrm{d}r.
> $$
> 若采用反向参数化，则积分变号。
>
> **证明思路**：用链式法则写出 $(\gamma\circ\phi)'(u)=\gamma'(\phi(u))\phi'(u)$，然后使用换元公式；反向时换元上下限交换。

<!-- real_analysis_second_kind_line_integral_orientation_dependence -->
> [!Theorem]
> **第二型曲线积分的定向依赖性 Orientation Dependence of Second-Kind Line Integrals**：对反向曲线 $-\gamma$，有
> $$
> \int_{-\gamma}F\cdot\mathrm{d}r
> =-\int_\gamma F\cdot\mathrm{d}r.
> $$
>
> **证明思路**：代入反向参数化 $t\mapsto a+b-t$，其导数与原导数相反，再作一元换元。

<!-- real_analysis_first_and_second_kind_line_integral_relation -->
> [!Theorem]
> **两类曲线积分的关系 Relation between the Two Kinds of Line Integrals**：若 $\gamma$ 为正则定向曲线，$T=\gamma'/\|\gamma'\|$ 为其单位切向量，则对沿曲线连续的 $f$ 有
> $$
> \int_\gamma f\,\mathrm{d}s
> =\int_\gamma fT\cdot\mathrm{d}r.
> $$
>
> **证明思路**：将右端按参数化展开，使用 $T(t)\cdot\gamma'(t)=\|\gamma'(t)\|$。

<!-- real_analysis_work_and_circulation_definition -->
> [!Definition]
> **功与环量 Work and Circulation**：若 $F$ 表示力场，则
> $$
> W=\int_\gamma F\cdot\mathrm{d}r
> $$
> 表示力沿定向运动轨迹 $\gamma$ 所做的功。若 $C$ 为闭曲线，则
> $$
> \oint_C F\cdot\mathrm{d}r
> $$
> 称为 $F$ 沿 $C$ 的环量；其符号取决于 $C$ 的定向。

<!-- real_analysis_second_kind_line_integral_work_example -->
> [!Example]+
> **常力所做功的例子 Work Done by a Constant Force**：设 $F$ 为常向量，$\gamma$ 是从 $a$ 到 $b$ 的任意分段 $C^1$ 曲线，则
> $$
> \int_\gamma F\cdot\mathrm{d}r=F\cdot(b-a).
> $$
>
> **证明思路**：将 $F$ 提出积分，再由微积分基本定理得到 $\int_a^b\gamma'(t)\,\mathrm{d}t=\gamma(b)-\gamma(a)$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 10。