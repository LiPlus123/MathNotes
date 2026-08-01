# 幂权与典型例子

## 幂权的精确判别

<!-- power_weights_ap_theorem -->
> [!Theorem]
> **幂权的 $A_p$ 判别 Power-Weight $A_p$ Criterion**：设 $1<p<+\infty$。在 $\mathbb{R}^n$ 上，
> $$
> |x|^\alpha\in A_p
> \quad\Longleftrightarrow\quad
> -n<\alpha<n(p-1).
> $$
> 对端点类，
> $$
> |x|^\alpha\in A_1
> \quad\Longleftrightarrow\quad
> -n<\alpha\leq0.
> $$
>
> **证明思路**：对远离原点的立方体，权函数在立方体上可比。对包含或邻近原点的立方体，以半径可比的球夹逼，并计算
> $$
> \int_{|x|<r}|x|^\alpha\,dx\asymp r^{n+\alpha}.
> $$
> 两个指数端点分别对应 $w$ 与 $w^{-1/(p-1)}$ 在原点的局部可积性。

<!-- distance_weight_example -->
> [!Example]+
> **距离函数权 Distance Weight**：若 $V\subset\mathbb{R}^n$ 是固定的仿射子空间，$d(x,V)$ 是到 $V$ 的距离，且 $k=\operatorname{codim}V$，则
> $$
> d(x,V)^\alpha\in A_p
> \quad\Longleftrightarrow\quad
> -k<\alpha<k(p-1).
> $$
> 这是幂权判别在法向变量上的版本；它是退化椭圆方程中常见的权。

<!-- product_weight_example -->
> [!Example]+
> **乘积权 Product Weight**：在 $\mathbb{R}^n$ 中，若每个 $\alpha_j$ 满足
> $$
> -1<\alpha_j<p-1,
> $$
> 则
> $$
> w(x)=\prod_{j=1}^n|x_j|^{\alpha_j}
> $$
> 属于 $A_p$。这是由一维 $A_p$ 判别、Fubini 定理与矩形平均的迭代估计导出的。

<!-- power_weight_boundary_example -->
> [!Example]+
> **边界情形 Boundary Cases**：对 $1<p<+\infty$，$|x|^{-n}$ 和 $|x|^{n(p-1)}$ 均不属于 $A_p$：前者在原点不局部可积，后者的对偶幂 $w^{-1/(p-1)}=|x|^{-n}$ 不局部可积。这表明上述指数范围不能取闭区间。

> **来源**：J. Duoandikoetxea, *Fourier Analysis*, Chapter 4；José García-Cuerva and José L. Rubio de Francia, *Weighted Norm Inequalities and Related Topics*, Chapter IV。
