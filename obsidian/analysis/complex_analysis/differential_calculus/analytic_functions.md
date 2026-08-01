# 解析函数

## 实解析与复解析

<!-- real_analytic_function_definition -->
> [!Definition]
> **实解析函数 Real-Analytic Function**：设 $U\subseteq\mathbb{R}^n$ 为开集。函数 $g:U\to\mathbb{R}$ 称为实解析，若对每个 $a\in U$，存在邻域 $V$ 和收敛的多重幂级数
> $$
> g(x)=\sum_{\alpha\in\mathbb{N}^n}c_\alpha(x-a)^\alpha\qquad(x\in V).
> $$
> 实解析性是关于实变量的局部幂级数展开性质。

<!-- complex_analytic_function_terminology -->
> [!Definition]
> **复解析函数与全纯函数 Complex-Analytic and Holomorphic Functions**：设 $D\subseteq\mathbb{C}$ 为开集。函数 $f:D\to\mathbb{C}$ 称为在 $D$ 上全纯（holomorphic），若它在 $D$ 的每一点都复可微。函数称为复解析（complex-analytic），若其在每一点附近都有收敛的复幂级数展开。
>
> 在复分析中，全纯性与复解析性等价；因此“解析函数”通常可依上下文指复解析函数或全纯函数。它们与一般实解析函数的定义形式相似，但复可微性提供了更强的结构。

<!-- holomorphic_analytic_equivalence -->
> [!Theorem]
> **全纯性与复解析性的等价 Equivalence of Holomorphicity and Complex Analyticity**：若 $f$ 在区域 $D$ 上全纯，则对每个 $a\in D$，存在 $r>0$ 使
> $$
> f(z)=\sum_{n=0}^{\infty}c_n(z-a)^n\qquad(|z-a|<r).
> $$
> 反之，局部具有收敛复幂级数展开的函数在展开圆盘内全纯。
>
> **证明思路**：正向由 Cauchy 积分公式构造 Taylor 系数并估计余项；反向对幂级数逐项求导。

## 全纯函数的光滑性

<!-- holomorphic_smoothness -->
> [!Theorem]
> **全纯函数的无穷次可微性 Infinite Differentiability of Holomorphic Functions**：若 $f$ 在区域 $D$ 上全纯，则对每个 $n\ge1$，导数 $f^{(n)}$ 存在且在 $D$ 上全纯。因此全纯函数属于 $C^\infty$，并且其 Taylor 展开在到最近奇点之前的圆盘内收敛。
>
> **证明思路**：由 Cauchy 积分公式的高阶导数表达式，连续地构造每一阶导数；再对导数重复应用同一结论。

<!-- holomorphic_real_analytic_difference -->
> [!Example]+
> **复解析性的刚性 Rigidity of Complex Analyticity**：函数 $f(z)=\bar z$ 的实部与虚部都是实解析函数，但 $f$ 不是全纯函数，因为其不满足 CR 方程。这说明“实解析”并不等价于“复解析”。

## 调和性

<!-- harmonic_function_definition_complex_parts -->
> [!Definition]
> **调和函数 Harmonic Function**：设 $U\subseteq\mathbb{R}^2$ 为开集，$u:U\to\mathbb{R}$ 至少二阶连续可微。若
> $$
> \Delta u:=u_{xx}+u_{yy}=0,
> $$
> 则称 $u$ 是调和函数。

<!-- holomorphic_parts_are_harmonic -->
> [!Theorem]
> **全纯函数的实部与虚部调和 Harmonicity of the Real and Imaginary Parts**：设 $f=u+iv$ 在区域 $D$ 上全纯，且 $u,v$ 具有连续二阶偏导，则
> $$
> \Delta u=0,\qquad \Delta v=0.
> $$
> 因而 $u$ 与 $v$ 都是调和函数。
>
> **证明思路**：对 CR 方程分别对 $x,y$ 求导，得到 $u_{xx}=v_{yx}$、$u_{yy}=-v_{xy}$；由混合偏导相等性得到 $\Delta u=0$。对 $v$ 同理。

<!-- harmonic_conjugate_local -->
> [!Theorem]
> **局部共轭调和函数 Local Harmonic Conjugates**：若 $u$ 在单连通区域 $D$ 上是调和函数，则局部存在函数 $v$ 使 $f=u+iv$ 全纯；若 $D$ 单连通，则 $v$ 可在整个 $D$ 上选取，并且除加上一个实常数外唯一。
>
> **证明思路**：由 $u_{xx}+u_{yy}=0$，一阶微分形式 $-u_y\,dx+u_x\,dy$ 闭合；在单连通区域上它具有原函数 $v$，于是 $v_y=u_x$、$v_x=-u_y$，满足 CR 方程。

> **注**：解析性与调和性的基本结果参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapters 2-4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapters 2-3。
