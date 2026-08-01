# 向量值反函数定理

<!-- real_analysis_banach_fixed_point_theorem -->
> [!Theorem]
> **Banach 不动点定理 Banach Fixed-Point Theorem**：设 $(X,d)$ 为完备度量空间，$T:X\to X$ 满足存在 $q\in[0,1)$，使
> $$
> d(Tx,Ty)\leq qd(x,y)
> \qquad(x,y\in X).
> $$
> 则 $T$ 有唯一不动点 $x^*$；对任意初值 $x_0\in X$，迭代 $x_{k+1}=T(x_k)$ 收敛到 $x^*$。
>
> **证明思路**：由压缩性估计相邻迭代项，得到 $(x_k)$ 为 Cauchy 列；完备性给出极限，不动点性质由连续性得到，唯一性由压缩不等式直接推出。

<!-- real_analysis_vector_inverse_function_theorem -->
> [!Theorem]
> **向量值反函数定理 Inverse Function Theorem**：设 $U\subseteq\mathbb{R}^n$ 为开集，$F:U\to\mathbb{R}^n$ 属于 $C^1$，$a\in U$，且
> $$
> \det J_F(a)\ne0.
> $$
> 则存在 $a$ 的开邻域 $U_0$ 与 $F(a)$ 的开邻域 $V_0$，使 $F:U_0\to V_0$ 为 $C^1$ 微分同胚；并且对 $y\in V_0$，
> $$
> D(F^{-1})(y)=\bigl(DF(F^{-1}(y))\bigr)^{-1}.
> $$
>
> **证明思路**：$DF(a)$ 可逆，连续性保证邻域内的导数接近该可逆线性映射。将方程 $F(x)=y$ 改写为适当的压缩映射不动点方程，应用 Banach 不动点定理得到局部唯一解；对恒等式 $F^{-1}\circ F=\operatorname{id}$ 求导得到导数公式。

<!-- real_analysis_local_diffeomorphism_definition -->
> [!Definition]
> **局部微分同胚 Local Diffeomorphism**：若 $F:U\to\mathbb{R}^n$ 在 $a\in U$ 的某个开邻域上限制为到其像的 $C^1$ 微分同胚，则称 $F$ 在 $a$ 处为局部微分同胚。

<!-- real_analysis_jacobian_determinant_inverse_function_significance -->
> [!Corollary]
> **Jacobi 行列式非零的意义 Significance of a Nonzero Jacobian Determinant**：对 $F:U\subseteq\mathbb{R}^n\to\mathbb{R}^n$，若 $\det J_F(a)\ne0$，则 $F$ 在 $a$ 附近可逆，且局部坐标变换不退化。若 $\det J_F(a)=0$，反函数定理不适用，但仍不能仅据此断定 $F$ 在 $a$ 附近不可逆。
>
> **证明思路**：前半部分由反函数定理。后半部分可由一元函数 $x\mapsto x^3$ 在 $0$ 处的导数为零但全局可逆说明。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9；Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 12。