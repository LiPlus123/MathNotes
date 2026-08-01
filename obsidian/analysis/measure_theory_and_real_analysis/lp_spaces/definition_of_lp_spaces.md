# $L^p$ 空间的定义

## $L^p$ 可积性与等价类

<!-- lp_space_definition -->
> [!Definition]
> **$L^p$ 空间 $L^p$ Space**：设 $(X,\mathcal{A},\mu)$ 为测度空间，$1\leq p<+\infty$。定义
> $$
> \mathcal{L}^p(\mu)=\left\{f:X\to\mathbb{C}:f\text{ 可测且 }\int_X|f|^p\,d\mu<+\infty\right\}.
> $$
> 在等价关系
> $$
> f\sim g\quad\Longleftrightarrow\quad f=g\ \text{$\mu$-a.e.}
> $$
> 下的商空间称为 $L^p(\mu)$。通常仍以 $f$ 表示其等价类。

<!-- linfinity_space_definition -->
> [!Definition]
> **$L^\infty$ 空间 $L^\infty$ Space**：定义
> $$
> \mathcal{L}^\infty(\mu)=\left\{f:X\to\mathbb{C}:f\text{ 可测且 }|f|\leq C\ \text{a.e. for some }C<+\infty\right\}.
> $$
> 其关于几乎处处相等的商空间称为 $L^\infty(\mu)$。函数 $f$ 的本质上确界定义为
> $$
> \operatorname*{ess\,sup}_{x\in X}|f(x)|
> =\inf\{C\geq0:|f|\leq C\ \text{a.e.}\}.
> $$

<!-- lp_norm_definition -->
> [!Definition]
> **$L^p$ 范数 $L^p$ Norm**：对 $f\in L^p(\mu)$，定义
> $$
> \|f\|_p=\left(\int_X|f|^p\,d\mu\right)^{1/p}
> \qquad(1\leq p<+\infty),
> $$
> 并定义
> $$
> \|f\|_\infty=\operatorname*{ess\,sup}_{x\in X}|f(x)|.
> $$
> 这些量只依赖于 $f$ 的几乎处处等价类。

<!-- lp_norm_properties -->
> [!Theorem]
> **$L^p$ 范数的基本性质 Basic Properties of the $L^p$ Norm**：对每个 $1\leq p\leq+\infty$，$L^p(\mu)$ 上的 $\|\cdot\|_p$ 满足：
> 1. $\|f\|_p\geq0$，且 $\|f\|_p=0$ 当且仅当 $f=0$ 几乎处处；
> 2. 对每个标量 $c$，$\|cf\|_p=|c|\|f\|_p$；
> 3. $\|f+g\|_p\leq\|f\|_p+\|g\|_p$。
>
> 因而 $\|\cdot\|_p$ 是等价类空间 $L^p(\mu)$ 上的范数。
>
> **证明思路**：前两项由积分和本质上确界的定义直接得到。三角不等式在 $p<+\infty$ 时是 Minkowski 不等式，在 $p=+\infty$ 时由 $|f+g|\leq|f|+|g|$ 的几乎处处估计得到。

<!-- lp_inclusion_on_finite_measure_space -->
> [!Proposition]
> **有限测度空间中的 $L^p$ 包含关系 $L^p$ Inclusion on a Finite Measure Space**：若 $\mu(X)<+\infty$ 且 $1\leq q\leq p\leq+\infty$，则
> $$
> L^p(\mu)\subseteq L^q(\mu),
> $$
> 并且
> $$
> \|f\|_q\leq\mu(X)^{1/q-1/p}\|f\|_p,
> $$
> 其中 $1/+\infty$ 按 $0$ 解释。
>
> **证明思路**：当 $p<+\infty$ 时对 $|f|^q$ 与常数函数 $1$ 应用 Hölder 不等式；$p=+\infty$ 时直接由 $|f|\leq\|f\|_\infty$ 几乎处处成立。

<!-- lp_space_examples -->
> [!Example]+
> **$L^p$ 空间的例子 Examples of $L^p$ Spaces**：在 $([0,1],\mathcal{L},m)$ 上，常数函数 $1$ 属于所有 $L^p$ 空间，且 $\|1\|_p=1$。在 $(\mathbb{R},\mathcal{L},m)$ 上，函数
> $$
> f(x)=\frac{1}{1+|x|}
> $$
> 属于 $L^p(\mathbb{R})$ 当且仅当 $p>1$，从而说明无限测度空间中不同 $L^p$ 空间之间一般不存在单向包含关系。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 6.1；Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 3。
