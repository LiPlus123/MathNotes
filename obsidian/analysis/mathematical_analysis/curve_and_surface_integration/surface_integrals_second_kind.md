# 第二型曲面积分

<!-- real_analysis_second_kind_surface_integral_flux_definition -->
> [!Definition]
> **第二型曲面积分与通量 Surface Integral of the Second Kind and Flux**：设 $S=r(D)$ 为定向正则分段 $C^1$ 曲面，定向由 $r_u\times r_v$ 给出；$F$ 为沿 $S$ 连续的向量场。定义 $F$ 穿过 $S$ 的通量为
> $$
> \iint_SF\cdot n\,\mathrm{d}S
> =\iint_DF(r(u,v))\cdot\bigl(r_u(u,v)\times r_v(u,v)\bigr)\,\mathrm{d}u\,\mathrm{d}v.
> $$
> 常将向量面积元素记作 $\mathrm{d}\mathbf{S}=n\,\mathrm{d}S$，并把上式写作 $\iint_SF\cdot\mathrm{d}\mathbf{S}$。

<!-- real_analysis_second_kind_surface_integral_orientation_dependence -->
> [!Theorem]
> **第二型曲面积分的定向依赖性 Orientation Dependence of Second-Kind Surface Integrals**：若将曲面 $S$ 的定向由 $n$ 改为 $-n$，则
> $$
> \iint_SF\cdot(-n)\,\mathrm{d}S
> =-\iint_SF\cdot n\,\mathrm{d}S.
> $$
>
> **证明思路**：参数化的反向会交换参数偏导数的叉积次序，从而使 $r_u\times r_v$ 变号。

<!-- real_analysis_second_kind_surface_integral_parameterization_invariance -->
> [!Theorem]
> **第二型曲面积分的参数化无关性 Parameterization Invariance of Second-Kind Surface Integrals**：两个给出同一曲面片且诱导相同定向的正则参数化，计算所得通量相等；若两者诱导相反定向，则计算结果互为相反数。
>
> **证明思路**：链式法则表明参数变换后的叉积乘以参数变换的 Jacobi 行列式；保定向或反定向分别对应此行列式的正号或负号，再用换元公式。

<!-- real_analysis_first_and_second_kind_surface_integral_relation -->
> [!Theorem]
> **两类曲面积分的关系 Relation between the Two Kinds of Surface Integrals**：对已定向曲面 $S$ 及沿 $S$ 连续的标量函数 $f$，有
> $$
> \iint_Sf\,\mathrm{d}S
> =\iint_S(fn)\cdot\mathrm{d}\mathbf{S}.
> $$
>
> **证明思路**：右端的被积函数为 $(fn)\cdot n=f$，因为 $\|n\|=1$。

<!-- real_analysis_outward_orientation_closed_surface_definition -->
> [!Definition]
> **闭曲面的外向定向 Outward Orientation of a Closed Surface**：若紧致可定向闭曲面 $S$ 是某有界区域 $\Omega$ 的边界，则指向 $\Omega$ 外部的单位法向量称为外法向量；由此给出的定向称为外向定向，通常用于定义穿出区域的净通量。

<!-- real_analysis_constant_vector_field_closed_surface_flux_example -->
> [!Example]+
> **常向量场穿过闭曲面的通量 Constant Vector Field through a Closed Surface**：设 $S$ 为有界区域的分段光滑闭边界，取外向定向，$F$ 为常向量场，则
> $$
> \iint_SF\cdot n\,\mathrm{d}S=0.
> $$
>
> **证明思路**：分别对 $F$ 的三个坐标方向考虑相对的投影面积，闭曲面上正、反向投影相互抵消；这也是后续 Gauss 散度定理在常向量场情形的直接结果。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 11。