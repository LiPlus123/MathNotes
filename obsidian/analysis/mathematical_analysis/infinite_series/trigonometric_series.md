# 三角级数

<!-- real_analysis_trigonometric_series_definition -->
> [!Definition]
> **三角级数 Trigonometric Series**：形如
> $$
> \frac{a_0}{2}+\sum_{n=1}^\infty\bigl(a_n\cos nx+b_n\sin nx\bigr)
> $$
> 的函数项级数称为 $2\pi$-周期三角级数，其中 $(a_n)$、$(b_n)$ 为实系数列。

<!-- real_analysis_trigonometric_system_orthogonality -->
> [!Theorem]
> **三角函数系的正交性 Orthogonality of the Trigonometric System**：对正整数 $m,n$，有
> $$
> \int_{-\pi}^{\pi}\cos nx\cos mx\,\mathrm{d}x=
> \begin{cases}
> \pi,&n=m,\\
> 0,&n\ne m,
> \end{cases}
> $$
> $$
> \int_{-\pi}^{\pi}\sin nx\sin mx\,\mathrm{d}x=
> \begin{cases}
> \pi,&n=m,\\
> 0,&n\ne m,
> \end{cases}
> \qquad
> \int_{-\pi}^{\pi}\sin nx\cos mx\,\mathrm{d}x=0.
> $$
>
> **证明思路**：使用积化和差公式，将被积函数化为正弦或余弦函数，再直接积分。

<!-- real_analysis_absolute_uniform_convergence_of_trigonometric_series -->
> [!Theorem]
> **三角级数绝对一致收敛的充分条件 Sufficient Condition for Absolute Uniform Convergence**：若
> $$
> \sum_{n=1}^\infty(|a_n|+|b_n|)<+\infty,
> $$
> 则该三角级数在 $\mathbb{R}$ 上绝对且一致收敛，故其和函数连续且 $2\pi$-周期。
>
> **证明思路**：由 $|\sin nx|,|\cos nx|\leq1$，应用 Weierstrass M-判别法；周期性和连续性分别由各部分和的对应性质及一致极限定理得到。

> **注**：本小节参见 Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 11。