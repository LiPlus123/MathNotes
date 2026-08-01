# 连续函数

## 连续的定义与拓扑刻画

<!-- real_analysis_continuity_at_point_definition -->
> [!Definition]
> **一点处的连续性 Continuity at a Point**：设 $D\subseteq\mathbb{R}$，$a\in D$，且 $f:D\to\mathbb{R}$。若对任意 $\varepsilon>0$，存在 $\delta>0$，使得对任意 $x\in D$，
> $$
> |x-a|<\delta\Longrightarrow |f(x)-f(a)|<\varepsilon,
> $$
> 则称 $f$ 在 $a$ 处连续。若 $f$ 在 $D$ 的每一点处连续，则称 $f$ 在 $D$ 上连续。

<!-- real_analysis_continuity_limit_characterization -->
> [!Theorem]
> **连续性的极限刻画 Limit Characterization of Continuity**：设 $a$ 是 $D$ 的聚点，$a\in D$，且 $f:D\to\mathbb{R}$。则 $f$ 在 $a$ 处连续，当且仅当
> $$
> \lim_{x\to a}f(x)=f(a).
> $$
>
> **证明思路**：连续定义与极限定义仅在是否排除 $x=a$ 上不同；$x=a$ 时不等式恒成立，故二者等价。

<!-- real_analysis_topological_continuity_equivalence -->
> [!Theorem]
> **度量连续与拓扑连续的一致性 Equivalence of Metric and Topological Continuity**：设 $D\subseteq\mathbb{R}$ 取子空间拓扑，$f:D\to\mathbb{R}$。则 $f$ 在 $D$ 上连续，当且仅当对每个开集 $V\subseteq\mathbb{R}$，其原像 $f^{-1}(V)$ 在 $D$ 的子空间拓扑中是开集。
>
> **证明思路**：若 $f$ 连续，对 $x\in f^{-1}(V)$，从 $V$ 的开性和 $f$ 在 $x$ 处的 $\varepsilon$-$\delta$ 连续性构造 $x$ 的相对邻域。反之，对包含 $f(a)$ 的开区间取原像，再从其包含 $a$ 的相对开性取得所需的 $\delta$。

<!-- real_analysis_continuity_sequential_characterization -->
> [!Theorem]
> **连续性的序列刻画 Sequential Characterization of Continuity**：设 $D\subseteq\mathbb{R}$，$a\in D$，且 $f:D\to\mathbb{R}$。则 $f$ 在 $a$ 处连续，当且仅当对每个满足 $x_n\in D$ 且 $x_n\to a$ 的序列 $(x_n)_{n\geq1}$，都有
> $$
> f(x_n)\to f(a).
> $$
>
> **证明思路**：必要性由 $\varepsilon$-$\delta$ 定义直接推出。充分性若不成立，可对每个 $n$ 选取 $x_n\in D$，使 $|x_n-a|<1/n$ 而 $|f(x_n)-f(a)|\geq\varepsilon_0$，与序列条件矛盾。

## 间断点的分类

<!-- real_analysis_discontinuity_definition -->
> [!Definition]
> **间断点 Discontinuity Point**：设 $a\in D\subseteq\mathbb{R}$，$f:D\to\mathbb{R}$。若 $f$ 在 $a$ 处不连续，则称 $a$ 为 $f$ 的间断点。

<!-- real_analysis_first_kind_discontinuity_definition -->
> [!Definition]
> **第一类间断点 Discontinuity of the First Kind**：设 $a$ 同时为 $D\cap(-\infty,a)$ 与 $D\cap(a,+\infty)$ 的聚点。若左右极限 $f(a-)$、$f(a+)$ 都存在且为有限实数，而 $f$ 在 $a$ 处不连续，则称 $a$ 为第一类间断点。其中，当 $f(a-)=f(a+)$ 时称为可去间断点；当 $f(a-)\ne f(a+)$ 时称为跳跃间断点。

<!-- real_analysis_second_kind_discontinuity_definition -->
> [!Definition]
> **第二类间断点 Discontinuity of the Second Kind**：设 $a$ 同时为定义域左右两侧的聚点。若 $a$ 不是第一类间断点，则称 $a$ 为第二类间断点；等价地，至少有一个单侧极限不存在或不是有限实数。

<!-- real_analysis_discontinuity_classification_example -->
> [!Example]+
> **间断点分类的例子 Examples of Discontinuities**：定义
> $$
> f(x)=
> \begin{cases}
> 1,&x>0,\\
> 0,&x\leq0,
> \end{cases}
> $$
> 则 $0$ 是跳跃间断点。定义
> $$
> g(x)=
> \begin{cases}
> \sin(1/x),&x\ne0,\\
> 0,&x=0,
> \end{cases}
> $$
> 则 $0$ 是第二类间断点。
>
> **证明思路**：$f(0-)=0$ 而 $f(0+)=1$。对 $g$，可取趋于 $0$ 的两列点使函数值分别恒为 $1$ 与 $-1$，故右、左极限均不存在。

## 连续函数的运算与初等函数

<!-- real_analysis_continuous_function_algebraic_rules -->
> [!Theorem]
> **连续函数的四则运算 Algebraic Rules for Continuous Functions**：若 $f,g:D\to\mathbb{R}$ 在 $a\in D$ 处连续，则 $f+g$、$f-g$ 与 $fg$ 在 $a$ 处连续；若 $g(a)\ne0$，则 $f/g$ 在 $a$ 处连续。
>
> **证明思路**：将连续性写成极限 $f(x)\to f(a)$、$g(x)\to g(a)$，再应用函数极限的四则运算法则。

<!-- real_analysis_continuous_function_composition_rule -->
> [!Theorem]
> **连续函数的复合连续性 Continuity of Composition**：设 $f:D\to E\subseteq\mathbb{R}$ 在 $a\in D$ 处连续，且 $g:E\to\mathbb{R}$ 在 $f(a)$ 处连续，则复合函数 $g\circ f$ 在 $a$ 处连续。
>
> **证明思路**：由 $f(x)\to f(a)$ 及 $g(y)\to g(f(a))$ 的复合函数极限法则，得 $g(f(x))\to g(f(a))$。

<!-- real_analysis_elementary_functions_continuity -->
> [!Theorem]
> **初等函数的连续性 Continuity of Elementary Functions**：多项式函数在 $\mathbb{R}$ 上连续；有理函数在其分母非零的定义域上连续；指数函数、对数函数、三角函数及其反函数均在各自定义域上连续。由有限次四则运算和复合运算构成的初等函数，在其定义域上连续。
>
> **证明思路**：常值函数与恒等函数连续，四则运算和复合保持连续性。指数、对数、三角函数及反三角函数的连续性可由其基本极限或幂级数表示建立。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 4；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 3。