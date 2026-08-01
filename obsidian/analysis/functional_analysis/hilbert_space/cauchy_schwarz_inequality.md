# 柯西-施瓦兹不等式

<!-- functional_analysis_cauchy_schwarz_inequality -->
> [!Theorem]
> **柯西-施瓦兹不等式 Cauchy-Schwarz Inequality**：设 $H$ 是内积空间。对任意 $x,y\in H$，有
> $$
> |\langle x,y\rangle|\leq\|x\|\,\|y\|.
> $$
> 等号成立当且仅当 $x,y$ 线性相关。
>
> **证明思路**：若 $y\ne0$，令 $\alpha=\langle y,x\rangle/\|y\|^2$。由 $\|x-\alpha y\|^2\geq0$ 展开得到
> $$
> \|x\|^2-\frac{|\langle x,y\rangle|^2}{\|y\|^2}\geq0.
> $$
> 等号当且仅当 $x=\alpha y$；$y=0$ 时结论显然。

<!-- functional_analysis_triangle_inequality_from_cauchy_schwarz -->
> [!Corollary]
> **内积范数的三角不等式 Triangle Inequality for the Inner-Product Norm**：对任意 $x,y\in H$，
> $$
> \|x+y\|\leq\|x\|+\|y\|.
> $$
>
> **证明思路**：展开 $\|x+y\|^2$，并以 $\operatorname{Re}\langle x,y\rangle\leq|\langle x,y\rangle|\leq\|x\|\|y\|$ 估计交叉项。

<!-- functional_analysis_polarization_identity -->
> [!Proposition]
> **极化恒等式 Polarization Identity**：复内积空间中，内积可由范数唯一恢复：
> $$
> \langle x,y\rangle=\frac14\sum_{k=0}^{3}(-i)^k\|x+i^ky\|^2.
> $$
> 实内积空间中，
> $$
> \langle x,y\rangle=\frac14\bigl(\|x+y\|^2-\|x-y\|^2\bigr).
> $$
>
> **证明思路**：逐项展开右端的内积表达式；在复情形中求和使非目标交叉项抵消。