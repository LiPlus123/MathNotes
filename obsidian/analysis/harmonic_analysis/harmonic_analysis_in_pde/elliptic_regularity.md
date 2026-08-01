# 椭圆正则性

## 奇异积分、位势与边界

<!-- pde_uniform_ellipticity_definition -->
> [!Definition]
> **一致椭圆性 Uniform Ellipticity**：二阶散度型算子
> $$
> Lu=-\partial_i(a^{ij}(x)\partial_j u)
> $$
> 称为一致椭圆的，若存在 $0<\lambda\leq\Lambda<\infty$，使得几乎处处的 $x$ 及每个 $\xi\in\mathbb{R}^n$ 都有
> $$
> \lambda|\xi|^2\leq a^{ij}(x)\xi_i\xi_j\leq\Lambda|\xi|^2.
> $$
> 若系数为常数，则 Fourier 乘子可直接描述其逆算子的二阶导数。

<!-- pde_constant_coefficient_elliptic_estimate -->
> [!Theorem]
> **常系数椭圆 $L^p$ 估计 Constant-Coefficient Elliptic $L^p$ Estimate**：设 $1<p<\infty$，$u\in C_c^\infty(\mathbb{R}^n)$，且 $L=\sum_{i,j}a^{ij}\partial_i\partial_j$ 是常系数椭圆算子，则
> $$
> \|D^2u\|_{L^p(\mathbb{R}^n)}\leq C\|Lu\|_{L^p(\mathbb{R}^n)}.
> $$
> 对 $L=\Delta$，有 $\partial_i\partial_j u=-R_iR_j\Delta u$。
>
> **证明思路**：Fourier 变换将 $\partial_i\partial_jL^{-1}$ 化为零次齐次的光滑乘子。Mikhlin 乘子定理或 Calderon-Zygmund 理论给出其 $L^p$ 有界性。

<!-- pde_variable_coefficient_elliptic_regularity -->
> [!Theorem]
> **变系数局部 $W^{2,p}$ 正则性 Interior $W^{2,p}$ Regularity**：若非散度型算子 $Lu=a^{ij}(x)\partial_i\partial_j u$ 一致椭圆，且 $a^{ij}\in C^{0,\alpha}_{\mathrm{loc}}(\Omega)$，则对 $\Omega'\Subset\Omega$ 与 $1<p<\infty$，
> $$
> \|u\|_{W^{2,p}(\Omega')}
> \leq C\bigl(\|Lu\|_{L^p(\Omega)}+\|u\|_{L^p(\Omega)}\bigr).
> $$
> 系数的精确正则性假设可用 VMO 等条件替代，但不可仅由有界可测性推出该结论。
>
> **证明思路**：在小球内冻结系数并应用常系数估计，将系数振荡视作可吸收的扰动；再借助覆盖与插值获得局部估计。

<!-- pde_schauder_estimate -->
> [!Theorem]
> **Schauder 估计 Schauder Estimate**：设 $a^{ij},f\in C^{0,\alpha}(\Omega)$，$Lu=a^{ij}\partial_i\partial_j u=f$，且 $L$ 一致椭圆。则对 $\Omega'\Subset\Omega$，
> $$
> \|u\|_{C^{2,\alpha}(\Omega')}
> \leq C\bigl(\|u\|_{C^0(\Omega)}+\|f\|_{C^{0,\alpha}(\Omega)}\bigr).
> $$
>
> **证明思路**：对常系数情形利用 Newton 位势和奇异积分的 Holder 控制；变系数情形仍以冻结系数和尺度迭代处理。

<!-- pde_wiener_criterion -->
> [!Theorem]
> **Wiener 判别法 Wiener Criterion**：对 $n\geq3$，边界点 $x_0\in\partial\Omega$ 对 Laplace 方程的 Dirichlet 问题正则，当且仅当其邻域补集的 Newton 容量满足相应 Wiener 级数发散。一个常用形式为
> $$
> \sum_{k=1}^{\infty}
> \frac{\operatorname{cap}\bigl((\mathbb{R}^n\setminus\Omega)\cap
> \{2^{-k-1}<|x-x_0|\leq2^{-k}\}\bigr)}{2^{-k(n-2)}}=\infty.
> $$
>
> **证明思路**：以平衡势刻画边界点的障碍函数；容量级数控制各尺度上 Brownian 路径或调和测度接触补集的累积效应。

> **来源**：David Gilbarg and Neil S. Trudinger, *Elliptic Partial Differential Equations of Second Order*；Elias M. Stein, *Singular Integrals and Differentiability Properties of Functions*。
