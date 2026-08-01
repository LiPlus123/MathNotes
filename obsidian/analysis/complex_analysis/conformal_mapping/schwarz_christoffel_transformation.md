# Schwarz-Christoffel 变换

## 多边形到上半平面的映射

<!-- schwarz_christoffel_derivative_formula -->
> [!Theorem]
> **Schwarz-Christoffel 导数公式 Schwarz-Christoffel Derivative Formula**：设 $P$ 是一个具有顶点 $w_1,\ldots,w_n$ 和内角 $\alpha_1\pi,\ldots,\alpha_n\pi$ 的简单多边形，其中 $0<\alpha_k<2$。若共形映射 $f:\mathbb H\to P$ 将实轴上的边界点 $x_k$ 对应到顶点 $w_k$，则存在常数 $A\ne0$、$B$，使
> $$
> f'(z)=A\prod_{k=1}^{n}(z-x_k)^{\alpha_k-1}.
> $$
> 这里每个幂函数分支在上半平面内选定。
>
> **证明思路**：在顶点原像 $x_k$ 附近，逆映射的局部行为由角度改变率决定，故 $f'(z)$ 具有阶 $\alpha_k-1$ 的幂型奇性；除此之外导数无零点和奇点，再用无穷远处的行为确定整体形式。

<!-- schwarz_christoffel_integral_formula -->
> [!Theorem]
> **Schwarz-Christoffel 积分公式 Schwarz-Christoffel Integral Formula**：在上述条件下，映射可写成
> $$
> f(z)=B+A\int^z\prod_{k=1}^{n}(\zeta-x_k)^{\alpha_k-1}\,d\zeta.
> $$
> 积分路径取在 $\mathbb H$ 内，所得结果与路径无关；常数 $A$ 和 $B$ 由平移、旋转、缩放以及指定顶点位置确定。

<!-- polygon_angle_sum_condition -->
> [!Theorem]
> **多边形角和条件 Polygon Angle Sum Condition**：有限简单多边形的内角参数满足
> $$
> \sum_{k=1}^{n}\alpha_k=n-2.
> $$
> 该关系与 Schwarz-Christoffel 导数在无穷远处的阶相容。
>
> **证明思路**：由多边形内角和为 $(n-2)\pi$；也可由导数公式在无穷远处的渐近阶得到同一关系。

## 边界边与特殊情形

<!-- schwarz_christoffel_boundary_mapping -->
> [!Theorem]
> **Schwarz-Christoffel 边界对应 Boundary Correspondence**：在适当的顶点原像排序和分支选择下，实轴上相邻区间
> $$
> (-\infty,x_1),(x_1,x_2),\ldots,(x_n,\infty)
> $$
> 分别映到多边形的边；点 $x_k$ 映到顶点 $w_k$。
>
> **证明思路**：对每个实轴区间考察 $f'(x)$ 的辐角，积分后得到一条固定方向的线段；跨过 $x_k$ 时方向改变 $(1-\alpha_k)\pi$，与顶点内角相匹配。

<!-- schwarz_christoffel_half_plane_rectangle -->
> [!Example]+
> **矩形映射的 Schwarz-Christoffel 形式 Schwarz-Christoffel Map to a Rectangle**：矩形的四个内角均为 $\pi/2$。取四个实数 $x_1<x_2<x_3<x_4$，则相应导数具有形式
> $$
> f'(z)=A\prod_{k=1}^{4}(z-x_k)^{-1/2}.
> $$
> 其积分通常由椭圆积分表示；这说明 Schwarz-Christoffel 变换提供了存在性和结构公式，但不总能化为初等函数。

<!-- schwarz_christoffel_strip_special_case -->
> [!Example]+
> **半平面到条带的特殊情形 Half-Plane to a Strip**：对数函数的适当线性组合可将上半平面映到水平条带；这是 Schwarz-Christoffel 理论中边界顶点退化或位于无穷远处的简单模型。

> **注**：Schwarz-Christoffel 变换参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 6，以及 Z. Nehari, *Conformal Mapping*, Chapter 5。
