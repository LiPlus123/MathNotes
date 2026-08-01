# 向量值函数的定义

<!-- real_analysis_vector_valued_function_definition -->
> [!Definition]
> **向量值函数 Vector-Valued Function**：定义域 $D\subseteq\mathbb{R}^n$、值域为 $\mathbb{R}^m$ 的映射
> $$
> F:D\to\mathbb{R}^m,
> \qquad F(x)=(F_1(x),\ldots,F_m(x))
> $$
> 称为向量值函数，其中 $F_i:D\to\mathbb{R}$ 称为分量函数。

<!-- real_analysis_scalar_and_vector_field_definition -->
> [!Definition]
> **数量场与向量场 Scalar Field and Vector Field**：定义在 $D\subseteq\mathbb{R}^n$ 上的实值函数 $f:D\to\mathbb{R}$ 称为数量场；映射 $V:D\to\mathbb{R}^n$ 称为向量场。

<!-- real_analysis_vector_field_examples -->
> [!Example]+
> **常见向量场 Common Vector Fields**：在 $\mathbb{R}^3$ 中，位置场为 $r(x)=x$；若轨道 $r:I\to\mathbb{R}^3$ 可微，则速度为 $v(t)=r'(t)$。给定质量 $m$ 的粒子，牛顿第二定律中的力场满足
> $$
> F(t)=m r''(t).
> $$
> 例如中心引力场可写作 $F(x)=-\mu x/\|x\|^3$（$x\ne0$，$\mu>0$）。
>
> **证明思路**：位置、速度和力分别由运动轨迹及其一、二阶导数定义；中心力的方向与位置向量相反，大小随距离平方反比。

<!-- real_analysis_vector_valued_linear_operations -->
> [!Theorem]
> **向量值函数的线性运算 Linear Operations on Vector-Valued Functions**：若 $F,G:D\to\mathbb{R}^m$，$\alpha,\beta\in\mathbb{R}$，则
> $$
> (\alpha F+\beta G)(x)=\alpha F(x)+\beta G(x)
> $$
> 逐分量定义，即第 $i$ 个分量为 $\alpha F_i+\beta G_i$。
>
> **证明思路**：这是 $\mathbb{R}^m$ 的向量加法与数乘逐坐标定义的直接结果。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 8。