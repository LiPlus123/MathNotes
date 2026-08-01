# Cauchy 积分定理

## 原函数与路径无关性

<!-- complex_antiderivative_definition -->
> [!Definition]
> **原函数 Antiderivative**：设 $D\subseteq\mathbb{C}$，$f:D\to\mathbb{C}$。若存在全纯函数 $F:D\to\mathbb{C}$ 使
> $$
> F'(z)=f(z)\qquad(z\in D),
> $$
> 则称 $F$ 是 $f$ 在 $D$ 上的原函数。

<!-- complex_path_independence_theorem -->
> [!Theorem]
> **原函数与路径无关性 Path Independence**：若 $F$ 是 $f$ 在区域 $D$ 上的原函数，则对任意分段光滑曲线 $\gamma$，有
> $$
> \int_\gamma f(z)\,dz=F(\gamma(b))-F(\gamma(a)).
> $$
> 因此积分只依赖于曲线的起点和终点；特别地，对任意闭曲线 $\gamma$，有 $\int_\gamma f(z)\,dz=0$。
>
> **证明思路**：对 $F(\gamma(t))$ 使用链式法则，得到 $(F\circ\gamma)'(t)=f(\gamma(t))\gamma'(t)$，再应用 Newton-Leibniz 公式。

<!-- complex_cauchy_theorem_simply_connected -->
> [!Theorem]
> **单连通区域上的 Cauchy 积分定理 Cauchy's Integral Theorem on Simply Connected Domains**：设 $D\subseteq\mathbb{C}$ 是单连通区域，$f$ 在 $D$ 上全纯，则对 $D$ 中任意分段光滑闭曲线 $\gamma$，有
> $$
> \int_\gamma f(z)\,dz=0.
> $$
>
> **证明思路**：先对三角形区域使用 Cauchy 证明，将闭曲线积分归约为小三角形边界积分；再用区域的单连通性把一般闭曲线连续收缩为一点，并利用积分在同伦变形下的不变性。严格证明通常还需对曲线或区域施加分段光滑性条件。

<!-- complex_cauchy_theorem_equivalences -->
> [!Theorem]
> **Cauchy 定理的等价形式 Equivalent Forms of Cauchy's Theorem**：对区域 $D\subseteq\mathbb{C}$ 和连续函数 $f:D\to\mathbb{C}$，以下条件在适当的三角形可容许条件下等价：
> 1. $f$ 在 $D$ 上全纯；
> 2. $f$ 在 $D$ 上局部具有原函数；
> 3. 每个包含于 $D$ 的三角形边界 $\partial\Delta$ 满足 $\int_{\partial\Delta}f(z)\,dz=0$。
>
> **证明思路**：全纯函数的三角形积分为零是 Cauchy 定理；从三角形积分为零构造局部原函数，再由原函数的导数得到全纯性。

## 复连通区域

<!-- complex_cauchy_theorem_multiply_connected -->
> [!Theorem]
> **复连通区域上的 Cauchy 积分定理 Cauchy's Theorem on Multiply Connected Domains**：设 $D$ 是区域，$f$ 在 $D$ 上全纯。若 $\gamma$ 是 $D$ 中一条闭曲线，并且 $\gamma$ 在 $D$ 中同伦于常值曲线，则
> $$
> \int_\gamma f(z)\,dz=0.
> $$
> 更一般地，若 $\gamma_0,\gamma_1$ 是 $D$ 中同伦的闭曲线，则
> $$
> \int_{\gamma_0}f(z)\,dz=\int_{\gamma_1}f(z)\,dz.
> $$
>
> **证明思路**：把同伦分割成小矩形参数域，应用局部 Cauchy 定理；相邻小矩形的公共边以相反方向出现并相互抵消，只剩边界曲线积分。

<!-- complex_cauchy_boundary_theorem -->
> [!Theorem]
> **带孔区域的边界形式 Boundary Form for a Finitely Connected Domain**：设 $D$ 的边界由一条外部正向简单闭曲线 $\Gamma_0$ 与有限条内部负向简单闭曲线 $\Gamma_1,\ldots,\Gamma_m$ 组成，且 $f$ 在包含闭区域 $\overline D$ 的开集上全纯，则
> $$
> \int_{\Gamma_0}f(z)\,dz-
> \sum_{j=1}^{m}\int_{\Gamma_j^{+}}f(z)\,dz=0,
> $$
> 其中 $\Gamma_j^{+}$ 表示内部边界的逆时针方向。等价地，按区域边界的正向约定，$\int_{\partial D}f(z)\,dz=0$。
>
> **证明思路**：把孔洞从外部区域中挖出，并在每个孔洞周围应用单连通区域上的 Cauchy 定理；内部边界方向与外部边界相反。

<!-- complex_primitive_existence -->
> [!Theorem]
> **原函数存在性 Primitive Existence Theorem**：设 $D$ 是区域，$f:D\to\mathbb{C}$ 连续。若对 $D$ 中每条闭曲线 $\gamma$ 都有
> $$
> \int_\gamma f(z)\,dz=0,
> $$
> 则 $f$ 在 $D$ 上存在原函数。若固定 $z_0\in D$，可定义
> $$
> F(z)=\int_{\gamma_{z_0,z}}f(\zeta)\,d\zeta,
> $$
> 其中 $\gamma_{z_0,z}$ 是从 $z_0$ 到 $z$ 的任意分段光滑曲线；该定义与路径选择无关。
>
> **证明思路**：闭曲线积分为零保证路径无关性；对小增量 $h$，比较 $F(z+h)-F(z)$ 与线段积分，利用 $f$ 的连续性得到 $F'(z)=f(z)$。

> **注**：本小节的 Cauchy 定理、原函数与路径无关性参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapters 4-5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 4。
