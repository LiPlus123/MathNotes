# Green 定理

<!-- real_analysis_positive_orientation_plane_region_definition -->
> [!Definition]
> **平面区域的正向边界 Positive Orientation of a Plane Region**：设 $D\subseteq\mathbb{R}^2$ 是具有分段光滑简单闭边界的有界区域。若沿边界 $\partial D$ 行进时区域 $D$ 始终位于行进方向的左侧，则称该定向为 $\partial D$ 的正向定向。对外边界这通常是逆时针方向；若有内边界，则内边界取顺时针方向。

<!-- real_analysis_planar_scalar_curl_definition -->
> [!Definition]
> **平面向量场的标量旋度 Scalar Curl of a Planar Vector Field**：设 $F=(P,Q)$，其中 $P,Q$ 在开集 $U\subseteq\mathbb{R}^2$ 上具有连续一阶偏导数。定义 $F$ 的标量旋度为
> $$
> \operatorname{curl}F=\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}.
> $$

<!-- real_analysis_greens_theorem_circulation_form -->
> [!Theorem]
> **Green 定理 Green's Theorem**：设 $D\subseteq\mathbb{R}^2$ 为有界区域，其正向边界 $\partial D$ 为有限条分段 $C^1$ 简单闭曲线；设 $P,Q\in C^1(U)$，其中 $U$ 是包含 $\overline D$ 的开集。则
> $$
> \oint_{\partial D}P\,\mathrm{d}x+Q\,\mathrm{d}y
> =\iint_D\left(\frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}\right)\,\mathrm{d}x\,\mathrm{d}y.
> $$
>
> **证明思路**：先对可由竖直线段或水平线段简单描述的区域，分别应用一元 Newton-Leibniz 公式和 Fubini 定理；一般区域可分割为有限个此类区域，内部公共边的曲线积分因定向相反而抵消。

<!-- real_analysis_greens_theorem_flux_form -->
> [!Corollary]
> **Green 定理的通量形式 Flux Form of Green's Theorem**：在 Green 定理的假设下，取外法向量方向的线元 $n\,\mathrm{d}s$，则
> $$
> \oint_{\partial D}F\cdot n\,\mathrm{d}s
> =\iint_D\left(\frac{\partial P}{\partial x}+\frac{\partial Q}{\partial y}\right)\,\mathrm{d}x\,\mathrm{d}y.
> $$
>
> **证明思路**：正向切向量旋转 $90^\circ$ 得到外法向方向；将通量积分写成 $\oint(P\,\mathrm{d}y-Q\,\mathrm{d}x)$，再对该形式应用 Green 定理。

<!-- real_analysis_greens_theorem_area_formula -->
> [!Corollary]
> **Green 定理的面积公式 Area Formula from Green's Theorem**：若 $C=\partial D$ 取正向，则
> $$
> \operatorname{area}(D)
> =\frac12\oint_Cx\,\mathrm{d}y-y\,\mathrm{d}x.
> $$
>
> **证明思路**：在 Green 定理中取 $P=-y/2$、$Q=x/2$，此时 $\partial Q/\partial x-\partial P/\partial y=1$。

<!-- real_analysis_greens_theorem_unit_circle_example -->
> [!Example]+
> **Green 定理计算圆面积 Green's Theorem for the Area of a Disk**：设 $C$ 为单位圆的逆时针定向边界，则
> $$
> \operatorname{area}(\{x^2+y^2\leq1\})
> =\frac12\oint_Cx\,\mathrm{d}y-y\,\mathrm{d}x
> =\pi.
> $$
>
> **证明思路**：取 $\gamma(t)=(\cos t,\sin t)$，$0\leq t\leq2\pi$，代入面积公式后被积函数恒为 $1/2$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 10。