# 经典 Stokes 定理

<!-- real_analysis_boundary_orientation_of_surface_definition -->
> [!Definition]
> **曲面边界的诱导定向 Induced Orientation of a Surface Boundary**：设定向曲面 $S$ 取单位法向量 $n$。其边界 $\partial S$ 的正向定向规定为：沿边界正向行进时，若头部指向切向量 $T$、上方指向 $n$，则曲面位于左侧；等价地，满足右手定则。

<!-- real_analysis_stokes_theorem_classical -->
> [!Theorem]
> **经典 Stokes 定理 Classical Stokes Theorem**：设 $S$ 是分段 $C^1$ 的可定向曲面，其边界 $\partial S$ 为按诱导定向取向的分段 $C^1$ 闭曲线；设 $F\in C^1(U,\mathbb{R}^3)$，其中 $U$ 是包含 $S$ 的开集。则
> $$
> \iint_S(\operatorname{curl}F)\cdot n\,\mathrm{d}S
> =\oint_{\partial S}F\cdot\mathrm{d}r.
> $$
>
> **证明思路**：将曲面分割为参数曲面片，对每片经参数化拉回后应用平面 Green 定理；相邻曲面片的公共边被赋予相反定向，故内部线积分相消。

<!-- real_analysis_curl_circulation_interpretation -->
> [!Definition]
> **旋度的环量解释 Circulation Interpretation of Curl**：对足够光滑的向量场 $F$，$\operatorname{curl}F(a)\cdot n$ 描述以 $n$ 为法向量、收缩到点 $a$ 的小回路上的单位面积环量的极限；它刻画局部旋转趋势。

<!-- real_analysis_green_theorem_as_stokes_corollary -->
> [!Corollary]
> **Green 定理是 Stokes 定理的特例 Green's Theorem as a Special Case of Stokes' Theorem**：令 $S$ 位于 $z=0$ 平面且取向上法向量 $n=(0,0,1)$，并令 $F=(P,Q,0)$。则经典 Stokes 定理化为
> $$
> \oint_{\partial S}P\,\mathrm{d}x+Q\,\mathrm{d}y
> =\iint_S\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)\,\mathrm{d}x\,\mathrm{d}y.
> $$
>
> **证明思路**：此时 $\operatorname{curl}F$ 的法向分量恰为 $\partial Q/\partial x-\partial P/\partial y$，而曲面面积元就是平面面积元。

<!-- real_analysis_stokes_theorem_independence_of_spanning_surface -->
> [!Corollary]
> **边界相同的曲面上的旋度通量相同 Curl Flux Depends Only on the Boundary**：若两个满足 Stokes 定理条件并具有相同定向边界的曲面 $S_1,S_2$，则
> $$
> \iint_{S_1}(\operatorname{curl}F)\cdot n_1\,\mathrm{d}S
> =\iint_{S_2}(\operatorname{curl}F)\cdot n_2\,\mathrm{d}S.
> $$
>
> **证明思路**：分别对 $S_1,S_2$ 应用 Stokes 定理；两边都等于同一条边界上的线积分。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 12。