# 亚纯函数

## 定义与基本性质

<!-- meromorphic_function_definition -->
> [!Definition]
> **亚纯函数 Meromorphic Function**：设 $D\subseteq\mathbb{C}$ 为区域。函数 $f:D\to\widehat{\mathbb{C}}$ 称为 $D$ 上的亚纯函数，若它在 $D$ 内除离散极点集外全纯，且每个极点都是有限阶极点。等价地，$f$ 可在极点处取值为 $\infty$，成为从 $D$ 到 Riemann 球面的连续映射。

<!-- meromorphic_local_quotient -->
> [!Theorem]
> **亚纯函数的局部分式 Local Quotient Representation**：若 $f$ 在区域 $D$ 上亚纯，则对每个 $a\in D$，存在 $a$ 的邻域及其中全纯函数 $g,h$，使
> $$
> f=\frac gh,
> $$
> 且 $g,h$ 不同时为零。反之，两个全纯函数的商在分母零点为孤立零点时给出亚纯函数。
>
> **证明思路**：在普通点取 $h=1$；在极点处用极点的局部表达式构造 $g,h$。

<!-- meromorphic_poles_discrete -->
> [!Theorem]
> **亚纯函数极点的离散性 Discreteness of Poles**：非恒为 $\infty$ 的亚纯函数的极点在定义域内无聚点；在任意紧子集内只有有限个极点。
>
> **证明思路**：极点是局部孤立的；若极点在定义域内有聚点，则 $1/f$ 的零点有聚点，恒等定理将导致不允许的恒等关系。

## 极点与零点

<!-- poles_and_zeros_of_reciprocal -->
> [!Theorem]
> **极点与零点的互换 Poles and Zeros under Reciprocals**：设 $f$ 在 $a$ 附近亚纯且不恒为零。若 $a$ 是 $f$ 的 $m$ 阶零点，则 $a$ 是 $1/f$ 的 $m$ 阶极点；若 $a$ 是 $f$ 的 $m$ 阶极点，则 $a$ 是 $1/f$ 的 $m$ 阶零点。
>
> **证明思路**：由 $f(z)=(z-a)^mg(z)$ 且 $g(a)\ne0$，直接取倒数。

<!-- meromorphic_order -->
> [!Definition]
> **亚纯函数的阶 Order of a Meromorphic Function**：对非恒为零的亚纯函数 $f$，定义
> $$
> \operatorname{ord}_a(f)=
> \begin{cases}
> m,&a\text{ 是 }m\text{ 阶零点},\\
> -m,&a\text{ 是 }m\text{ 阶极点},\\
> 0,&f(a)\text{ 为非零有限值}.
> \end{cases}
> $$
> 该阶满足 $\operatorname{ord}_a(fg)=\operatorname{ord}_a(f)+\operatorname{ord}_a(g)$。

<!-- rational_function_on_riemann_sphere -->
> [!Theorem]
> **Riemann 球面上的亚纯函数是有理函数 Meromorphic Functions on the Riemann Sphere are Rational**：若 $f$ 在 $\widehat{\mathbb{C}}$ 上亚纯，则存在复系数多项式 $p,q$，其中 $q$ 不恒为零，使
> $$
> f(z)=\frac{p(z)}{q(z)}.
> $$
> 反之，每个有理函数都在 $\widehat{\mathbb{C}}$ 上亚纯。
>
> **证明思路**：Riemann 球面紧致，故亚纯函数只有有限个极点。用适当的多项式消去所有有限极点，再考察无穷远点处的极点，得到整函数且在无穷远处为至多极点的函数，因而是多项式的商。

> **注**：亚纯函数的定义、极点零点关系参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
