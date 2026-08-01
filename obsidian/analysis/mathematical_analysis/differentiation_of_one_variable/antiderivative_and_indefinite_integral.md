# 原函数与不定积分

<!-- real_analysis_antiderivative_definition -->
> [!Definition]
> **原函数 Antiderivative**：设 $I$ 为区间，$f:I\to\mathbb{R}$。若函数 $F:I\to\mathbb{R}$ 在 $I$ 上可导，且
> $$
> F'(x)=f(x)
> \qquad(x\in I),
> $$
> 则称 $F$ 为 $f$ 在 $I$ 上的一个原函数。

<!-- real_analysis_antiderivative_existence_theorem -->
> [!Theorem]
> **原函数存在定理 Existence of Antiderivatives**：若 $f:I\to\mathbb{R}$ 在区间 $I$ 上连续，则 $f$ 在 $I$ 上存在原函数。具体地，固定 $a\in I$，定义
> $$
> F(x)=\int_a^x f(t)\,\mathrm{d}t,
> $$
> 则 $F'(x)=f(x)$。
>
> **证明思路**：这是微积分基本定理的变上限积分部分；利用连续性控制积分平均值与 $f(x)$ 的差，得到差商极限。

<!-- real_analysis_antiderivatives_differ_by_constant -->
> [!Theorem]
> **原函数之差为常数 Antiderivatives Differ by a Constant**：若 $F$ 与 $G$ 都是 $f$ 在区间 $I$ 上的原函数，则存在常数 $C$，使得
> $$
> F(x)-G(x)=C
> \qquad(x\in I).
> $$
>
> **证明思路**：$(F-G)'=0$，故由常值函数判别可知 $F-G$ 在区间上为常值。

<!-- real_analysis_indefinite_integral_definition -->
> [!Definition]
> **不定积分 Indefinite Integral**：函数 $f$ 在区间 $I$ 上全体原函数构成的函数族称为 $f$ 的不定积分，记为
> $$
> \int f(x)\,\mathrm{d}x=F(x)+C,
> $$
> 其中 $F$ 是任一原函数，$C\in\mathbb{R}$ 为任意常数。

<!-- real_analysis_indefinite_integral_linearity -->
> [!Theorem]
> **不定积分的线性性质 Linearity of Indefinite Integrals**：若 $F'=f$、$G'=g$，且 $\alpha,\beta\in\mathbb{R}$，则
> $$
> \int\bigl(\alpha f(x)+\beta g(x)\bigr)\,\mathrm{d}x
> =\alpha F(x)+\beta G(x)+C.
> $$
>
> **证明思路**：对右端求导并使用导数的线性性质。

<!-- real_analysis_integration_by_parts_formula -->
> [!Theorem]
> **分部积分公式 Integration by Parts**：若 $u,v$ 在区间 $I$ 上可导，则
> $$
> \int u(x)v'(x)\,\mathrm{d}x
> =u(x)v(x)-\int u'(x)v(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：对乘积 $uv$ 应用乘积法则并移项，再取原函数。

<!-- real_analysis_reduction_formula_definition -->
> [!Definition]
> **还原积分公式 Reduction Formula**：若一族积分 $I_n$ 满足将指标 $n$ 的积分表示为较低指标积分的递推关系
> $$
> I_n=A_n+B_n I_{n-r}
> \qquad(r\in\mathbb{N}^+),
> $$
> 则称该关系为还原积分公式。通常由分部积分或恒等变形得到。

<!-- real_analysis_reduction_formula_example -->
> [!Example]+
> **还原积分的例子 Example of a Reduction Formula**：令
> $$
> I_n=\int\sin^n x\,\mathrm{d}x
> \qquad(n\geq2).
> $$
> 对 $I_n=\int\sin^{n-1}x\sin x\,\mathrm{d}x$ 作分部积分，可得
> $$
> I_n=-\frac{\sin^{n-1}x\cos x}{n}+\frac{n-1}{n}I_{n-2}.
> $$

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapters 5--6。