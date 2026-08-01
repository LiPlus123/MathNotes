# 向量值函数的导数

<!-- real_analysis_vector_valued_frechet_derivative_definition -->
> [!Definition]
> **向量值函数的全导数 Fréchet Derivative of a Vector-Valued Function**：设 $F:U\subseteq\mathbb{R}^n\to\mathbb{R}^m$，其中 $U$ 开，$a\in U$。若存在线性映射 $DF(a):\mathbb{R}^n\to\mathbb{R}^m$，使
> $$
> F(a+h)=F(a)+DF(a)h+o(\|h\|)\qquad(h\to0),
> $$
> 则称 $F$ 在 $a$ 处可微，$DF(a)$ 称为其全导数。

<!-- real_analysis_vector_valued_jacobian_representation -->
> [!Theorem]
> **Jacobi 矩阵表示全导数 Jacobian Representation of the Derivative**：若 $F=(F_1,\ldots,F_m)$ 在 $a$ 处可微，则
> $$
> DF(a)h=J_F(a)h,
> \qquad
> J_F(a)=\left(\frac{\partial F_i}{\partial x_j}(a)\right)_{1\leq i\leq m,\,1\leq j\leq n}.
> $$
> 反之，若各分量在 $a$ 邻域内具有连续一阶偏导数，则 $F$ 在 $a$ 处可微，且上式成立。
>
> **证明思路**：分量可微等价于向量值可微；逐分量应用全微分的坐标表示并合并余项。

<!-- real_analysis_vector_valued_directional_derivative -->
> [!Theorem]
> **向量值函数的方向导数 Directional Derivative of a Vector-Valued Function**：若 $F$ 在 $a$ 处可微，则对任意 $v\in\mathbb{R}^n$，方向导数存在并满足
> $$
> D_vF(a)=DF(a)v=J_F(a)v.
> $$
>
> **证明思路**：在全导数定义中取增量 $h=tv$ 并除以 $t$。

<!-- real_analysis_vector_valued_chain_rule -->
> [!Theorem]
> **向量值函数的链式法则 Chain Rule for Vector-Valued Functions**：若 $F:U\to\mathbb{R}^m$ 在 $a$ 处可微，$G:V\to\mathbb{R}^p$ 在 $F(a)$ 处可微，且 $F(U)$ 在 $a$ 的某邻域内落在 $V$ 中，则
> $$
> D(G\circ F)(a)=DG(F(a))\circ DF(a),
> $$
> 即
> $$
> J_{G\circ F}(a)=J_G(F(a))J_F(a).
> $$
>
> **证明思路**：将两个映射的线性近似依次代入，余项为高阶小量；线性主部的复合对应矩阵乘法。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 8；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9。