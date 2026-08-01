# 闭区间上连续函数的性质

## 有界性与最值

<!-- real_analysis_boundedness_theorem_on_closed_interval -->
> [!Theorem]
> **连续必有界定理 Boundedness Theorem on a Closed Interval**：若 $f:[a,b]\to\mathbb{R}$ 在闭区间 $[a,b]$ 上连续，则存在 $M>0$，使得对所有 $x\in[a,b]$，
> $$
> |f(x)|\leq M.
> $$
>
> **证明思路**：若 $f$ 无界，可取 $x_n\in[a,b]$ 使 $|f(x_n)|>n$。由闭区间的序列紧性，$(x_n)$ 有收敛子列，极限仍在 $[a,b]$ 中；连续性使对应函数值子列收敛，因而有界，矛盾。

<!-- real_analysis_weierstrass_extreme_value_theorem -->
> [!Theorem]
> **最值定理 Weierstrass Extreme Value Theorem**：若 $f:[a,b]\to\mathbb{R}$ 在 $[a,b]$ 上连续，则存在 $x_{\min},x_{\max}\in[a,b]$，使得对任意 $x\in[a,b]$，
> $$
> f(x_{\min})\leq f(x)\leq f(x_{\max}).
> $$
> 等价地，$f$ 在 $[a,b]$ 上取得最小值和最大值。
>
> **证明思路**：由有界性，$f([a,b])$ 有上确界和下确界。取函数值逼近上确界的点列，再由序列紧性取收敛子列；连续性表明其极限点取到上确界。下确界同理。

<!-- real_analysis_extreme_value_theorem_example -->
> [!Example]+
> **最值定理的例子 Example of the Extreme Value Theorem**：函数
> $$
> f(x)=x(1-x)
> $$
> 在 $[0,1]$ 上连续，且
> $$
> \min_{x\in[0,1]}f(x)=0,
> \qquad
> \max_{x\in[0,1]}f(x)=\frac14.
> $$
> 最小值在 $x=0,1$ 处取得，最大值在 $x=1/2$ 处取得。

## 介值性与零点

<!-- real_analysis_intermediate_value_theorem -->
> [!Theorem]
> **介值定理 Intermediate Value Theorem**：设 $f:[a,b]\to\mathbb{R}$ 连续。若 $u$ 介于 $f(a)$ 与 $f(b)$ 之间，即
> $$
> \min\{f(a),f(b)\}\leq u\leq\max\{f(a),f(b)\},
> $$
> 则存在 $c\in[a,b]$，使得
> $$
> f(c)=u.
> $$
>
> **证明思路**：不妨设 $f(a)\leq u\leq f(b)$，令 $S=\{x\in[a,b]:f(x)\leq u\}$，取 $c=\sup S$。利用连续性和上确界的逼近性质分别排除 $f(c)<u$ 与 $f(c)>u$，从而得到 $f(c)=u$。

<!-- real_analysis_bolzano_zero_theorem -->
> [!Corollary]
> **零点存在定理 Bolzano's Zero Theorem**：若 $f:[a,b]\to\mathbb{R}$ 连续，且
> $$
> f(a)f(b)<0,
> $$
> 则存在 $c\in(a,b)$，使得 $f(c)=0$。
>
> **证明思路**：$0$ 严格介于 $f(a)$ 与 $f(b)$ 之间。由介值定理得到 $c\in[a,b]$ 满足 $f(c)=0$；端点函数值非零，故 $c\in(a,b)$。

<!-- real_analysis_intermediate_value_theorem_example -->
> [!Example]+
> **介值定理的例子 Example of the Intermediate Value Theorem**：多项式
> $$
> p(x)=x^3+x-1
> $$
> 满足 $p(0)=-1$、$p(1)=1$。因此存在 $c\in(0,1)$ 使得 $p(c)=0$。

## 反函数的连续性与一致连续性

<!-- real_analysis_inverse_continuity_theorem_on_interval -->
> [!Theorem]
> **区间上单调连续函数的反函数连续性 Continuity of the Inverse on an Interval**：设 $I\subseteq\mathbb{R}$ 是区间，$f:I\to\mathbb{R}$ 连续且严格单调。则 $f(I)$ 是区间，$f:I\to f(I)$ 为双射，且反函数
> $$
> f^{-1}:f(I)\to I
> $$
> 连续；若 $f$ 严格递增，则 $f^{-1}$ 严格递增，若 $f$ 严格递减，则 $f^{-1}$ 严格递减。
>
> **证明思路**：由介值定理，连续函数将区间映为区间；严格单调性给出单射。对反函数的点连续性，利用严格单调性将 $f(x_0-\varepsilon)$ 与 $f(x_0+\varepsilon)$ 作为像空间中的界，从而控制逆像与 $x_0$ 的距离；端点处使用单侧估计。

<!-- real_analysis_heine_cantor_uniform_continuity_theorem -->
> [!Theorem]
> **一致连续性定理 Heine-Cantor Theorem**：若 $f:[a,b]\to\mathbb{R}$ 在闭区间 $[a,b]$ 上连续，则 $f$ 在 $[a,b]$ 上一致连续：对任意 $\varepsilon>0$，存在 $\delta>0$，使对任意 $x,y\in[a,b]$，
> $$
> |x-y|<\delta\Longrightarrow |f(x)-f(y)|<\varepsilon.
> $$
>
> **证明思路**：反设不一致连续，则存在 $\varepsilon_0>0$ 及点列 $x_n,y_n\in[a,b]$，使 $|x_n-y_n|<1/n$ 而 $|f(x_n)-f(y_n)|\geq\varepsilon_0$。由序列紧性，$(x_n)$ 有收敛子列；因 $|x_n-y_n|\to0$，对应的 $(y_n)$ 子列收敛到同一点。连续性产生矛盾。

<!-- real_analysis_uniform_continuity_counterexample -->
> [!Example]+
> **连续但非一致连续的例子 A Continuous Function That Is Not Uniformly Continuous**：函数 $f(x)=1/x$ 在 $(0,1)$ 上连续，但不一致连续。
>
> **证明思路**：取 $x_n=1/n$ 与 $y_n=1/(n+1)$。则 $|x_n-y_n|\to0$，但
> $$
> |f(x_n)-f(y_n)|=1.
> $$
> 因此一致连续性的序列必要条件不成立。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapters 4--5；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 3。