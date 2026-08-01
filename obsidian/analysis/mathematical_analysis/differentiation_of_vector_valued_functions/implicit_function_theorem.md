# 隐函数定理

<!-- real_analysis_vector_implicit_function_theorem -->
> [!Theorem]
> **向量值隐函数定理 Implicit Function Theorem**：设 $F:U\subseteq\mathbb{R}^{n+m}\to\mathbb{R}^m$ 属于 $C^1$，写作 $F(x,y)$，其中 $x\in\mathbb{R}^n$、$y\in\mathbb{R}^m$。若 $(a,b)\in U$ 满足 $F(a,b)=0$，且
> $$
> \det\frac{\partial F}{\partial y}(a,b)\ne0,
> $$
> 则存在 $a,b$ 的邻域 $A,B$ 及唯一的 $C^1$ 函数 $\varphi:A\to B$，使
> $$
> \varphi(a)=b,
> \qquad F(x,\varphi(x))=0
> \quad(x\in A).
> $$
> 并且
> $$
> D\varphi(x)=-\left(\frac{\partial F}{\partial y}(x,\varphi(x))\right)^{-1}
> \frac{\partial F}{\partial x}(x,\varphi(x)).
> $$
>
> **证明思路**：考虑映射 $(x,y)\mapsto(x,F(x,y))$，其 Jacobi 矩阵为块上三角矩阵，且由 $\partial F/\partial y$ 可逆而整体可逆。应用反函数定理，再对恒等式 $F(x,\varphi(x))=0$ 使用链式法则。

<!-- real_analysis_inverse_and_implicit_function_theorem_relation -->
> [!Theorem]
> **隐函数定理与反函数定理的关系 Relation between the Implicit and Inverse Function Theorems**：反函数定理是隐函数定理的特例：对 $G:U\to\mathbb{R}^n$，令 $F(x,y)=G(x)-y$。反之，隐函数定理可通过对 $(x,y)\mapsto(x,F(x,y))$ 应用反函数定理得到。
>
> **证明思路**：在前一构造中，$\partial F/\partial x=DG$、$\partial F/\partial y=-I$；后一构造的导数为块上三角矩阵，行列式由 $\partial F/\partial y$ 决定。

<!-- real_analysis_rank_theorem -->
> [!Theorem]
> **秩定理 Rank Theorem**：设 $F:U\subseteq\mathbb{R}^n\to\mathbb{R}^m$ 属于 $C^1$，且 $\operatorname{rank}J_F(x)=r$ 在 $a$ 的某邻域内恒定。则存在 $a$ 与 $F(a)$ 附近的局部坐标，使 $F$ 表示为
> $$
> (u_1,\ldots,u_n)\longmapsto(u_1,\ldots,u_r,0,\ldots,0).
> $$
> 特别地，满秩单射微分对应局部浸入，满秩满射微分对应局部淹没。
>
> **证明思路**：选择一个非零的 $r$ 阶子式，通过置换坐标使其位于左上角；以反函数定理规范化前 $r$ 个分量，再用常秩条件消去其余分量对自由变量的依赖。

<!-- real_analysis_regular_level_set_tangent_space -->
> [!Theorem]
> **正则水平集的切空间 Tangent Space of a Regular Level Set**：若 $F:U\subseteq\mathbb{R}^n\to\mathbb{R}^m$ 属于 $C^1$，$F(a)=c$，且 $DF(a)$ 满射，则水平集 $F^{-1}(c)$ 在 $a$ 附近为 $n-m$ 维光滑曲面，其切空间为
> $$
> T_aF^{-1}(c)=\ker DF(a).
> $$
>
> **证明思路**：这是秩定理的满射情形；在适当局部坐标下，水平集由后 $m$ 个坐标固定所给，其切方向恰为前 $n-m$ 个坐标方向。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9；Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 12。