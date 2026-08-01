# 参数曲面

<!-- real_analysis_parametrized_surface_definition -->
> [!Definition]
> **参数曲面 Parametrized Surface**：设 $D\subseteq\mathbb{R}^2$ 为平面区域。连续映射
> $$
> r:D\to\mathbb{R}^3,
> \qquad (u,v)\longmapsto r(u,v)
> $$
> 称为参数曲面，其像 $r(D)$ 称为曲面片。若 $r\in C^1(D,\mathbb{R}^3)$ 且
> $$
> r_u(u,v)\times r_v(u,v)\ne\mathbf{0}
> $$
> 对所有 $(u,v)\in D$ 成立，则称其为正则光滑曲面片。

<!-- real_analysis_surface_tangent_plane_definition -->
> [!Definition]
> **曲面的切平面 Tangent Plane of a Surface**：设 $r$ 为正则光滑曲面片，$p=r(u_0,v_0)$。曲面在 $p$ 处的切平面为
> $$
> T_pS=p+\operatorname{span}\{r_u(u_0,v_0),r_v(u_0,v_0)\}.
> $$
> 等价地，向量 $r_u(u_0,v_0)$ 与 $r_v(u_0,v_0)$ 张成的线性空间是该切平面的方向空间。

<!-- real_analysis_surface_unit_normal_definition -->
> [!Definition]
> **单位法向量 Unit Normal Vector**：对正则参数曲面 $r$，由参数化诱导的单位法向量为
> $$
> n(u,v)=\frac{r_u(u,v)\times r_v(u,v)}{\|r_u(u,v)\times r_v(u,v)\|}.
> $$
> 交换参数 $u,v$ 的次序会将此法向量变为其相反向量。

<!-- real_analysis_orientable_surface_definition -->
> [!Definition]
> **可定向曲面 Orientable Surface**：若曲面 $S$ 上可选取连续的单位法向量场 $n$，则称 $S$ 可定向，并称 $n$ 为 $S$ 的一个定向。两种相反的连续单位法向量场给出相反定向；不能作此全局选择的曲面称为不可定向曲面。

<!-- real_analysis_mobius_strip_nonorientable_example -->
> [!Example]+
> **Möbius 带不可定向 Möbius Strip Is Nonorientable**：Möbius 带可由矩形的一对相对边反向粘合得到。沿其中线连续移动一周后，任取的法向量会变为其相反向量，故不能在全曲面上连续地选取单位法向量场。
>
> **证明思路**：使用标准 Möbius 带参数化沿中心闭曲线跟踪法向量；闭合后法向量符号发生翻转，和连续单值法向量场矛盾。

<!-- real_analysis_surface_area_element_definition -->
> [!Definition]
> **曲面面积元素 Surface Area Element**：对正则参数曲面 $r:D\to\mathbb{R}^3$，面积元素定义为
> $$
> \mathrm{d}S=\|r_u\times r_v\|\,\mathrm{d}u\,\mathrm{d}v.
> $$
> 因而曲面片的面积为
> $$
> \operatorname{area}(S)=\iint_D\|r_u\times r_v\|\,\mathrm{d}u\,\mathrm{d}v.
> $$

<!-- real_analysis_graph_surface_area_formula -->
> [!Corollary]
> **图形曲面的面积公式 Surface Area Formula for a Graph**：若 $S$ 是 $z=f(x,y)$ 在区域 $D$ 上的图形，且 $f\in C^1(D)$，则
> $$
> \operatorname{area}(S)
> =\iint_D\sqrt{1+f_x^2+f_y^2}\,\mathrm{d}x\,\mathrm{d}y.
> $$
>
> **证明思路**：使用参数化 $r(x,y)=(x,y,f(x,y))$，直接计算 $\|r_x\times r_y\|$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 11。