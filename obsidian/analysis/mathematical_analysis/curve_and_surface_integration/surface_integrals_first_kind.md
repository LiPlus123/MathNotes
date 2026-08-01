# 第一型曲面积分

<!-- real_analysis_first_kind_surface_integral_definition -->
> [!Definition]
> **第一型曲面积分 Surface Integral of the First Kind**：设 $S=r(D)$ 是正则分段 $C^1$ 曲面，$f$ 为定义在 $S$ 上的实值函数，且 $f\circ r$ 连续。定义 $f$ 在 $S$ 上的第一型曲面积分为
> $$
> \iint_Sf\,\mathrm{d}S
> =\iint_Df(r(u,v))\|r_u(u,v)\times r_v(u,v)\|\,\mathrm{d}u\,\mathrm{d}v.
> $$

<!-- real_analysis_first_kind_surface_integral_parameterization_invariance -->
> [!Theorem]
> **第一型曲面积分的参数化无关性 Parameterization Invariance of First-Kind Surface Integrals**：若两个正则参数化通过 $C^1$ 坐标变换描述同一曲面片，且该坐标变换一一对应，则它们按面积元素计算的第一型曲面积分相等。因此该积分不依赖于曲面的参数化和定向。
>
> **证明思路**：对两个参数化的复合应用链式法则，叉积的范数按参数变换的 Jacobi 行列式绝对值缩放；再使用二重积分换元公式。

<!-- real_analysis_first_kind_surface_integral_additivity -->
> [!Theorem]
> **第一型曲面积分的可加性 Additivity of First-Kind Surface Integrals**：若曲面 $S$ 被有限个仅在边界处相交的正则曲面片 $S_1,\ldots,S_N$ 覆盖，则
> $$
> \iint_Sf\,\mathrm{d}S=\sum_{k=1}^N\iint_{S_k}f\,\mathrm{d}S.
> $$
>
> **证明思路**：将每个曲面片的参数区域作相应分割，应用二重积分的区域可加性；公共边界的面积为零，不重复贡献。

<!-- real_analysis_surface_mass_and_centroid_definition -->
> [!Definition]
> **曲面质量与质心 Mass and Centroid of a Surface**：设曲面 $S$ 具有面密度 $\rho\geq0$，其质量
> $$
> M=\iint_S\rho\,\mathrm{d}S
> $$
> 满足 $M>0$。若位置向量为 $r=(x,y,z)$，则曲面质心为
> $$
> \bar r=\frac{1}{M}\iint_Sr\rho\,\mathrm{d}S.
> $$

<!-- real_analysis_first_kind_surface_integral_sphere_example -->
> [!Example]+
> **球面的第一型曲面积分 First-Kind Surface Integral on a Sphere**：半径 $R>0$ 的球面 $S_R$ 的面积为
> $$
> \iint_{S_R}1\,\mathrm{d}S=4\pi R^2.
> $$
>
> **证明思路**：取球坐标参数化 $r(\varphi,\theta)=R(\sin\varphi\cos\theta,\sin\varphi\sin\theta,\cos\varphi)$，其中 $0\leq\varphi\leq\pi$、$0\leq\theta\leq2\pi$，并计算 $\|r_\varphi\times r_\theta\|=R^2\sin\varphi$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 11。