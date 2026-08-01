# 第一型曲线积分

<!-- real_analysis_first_kind_line_integral_definition -->
> [!Definition]
> **第一型曲线积分 Line Integral of the First Kind**：设 $\gamma:[a,b]\to\mathbb{R}^n$ 为分段 $C^1$ 曲线，$f$ 为定义在其轨迹上的实值函数。若 $f\circ\gamma$ 连续，则定义 $f$ 对弧长的曲线积分为
> $$
> \int_\gamma f\,\mathrm{d}s
> =\int_a^b f(\gamma(t))\|\gamma'(t)\|\,\mathrm{d}t,
> $$
> 其中对分段区间的积分取和。

<!-- real_analysis_first_kind_line_integral_reparameterization_invariance -->
> [!Theorem]
> **第一型曲线积分的参数化无关性 Reparameterization Invariance of First-Kind Line Integrals**：设 $\phi:[c,d]\to[a,b]$ 为双射、分段 $C^1$ 且严格单调，且 $\gamma\circ\phi$ 为相应的重参数化曲线。则
> $$
> \int_{\gamma\circ\phi}f\,\mathrm{d}s
> =\int_\gamma f\,\mathrm{d}s.
> $$
> 因而第一型曲线积分只依赖于曲线轨迹及其重数，不依赖于参数化或定向。
>
> **证明思路**：由链式法则有 $\|(\gamma\circ\phi)'(u)\|=\|\gamma'(\phi(u))\|\,|\phi'(u)|$；再对严格单调的 $\phi$ 使用一元换元公式。

<!-- real_analysis_first_kind_line_integral_additivity -->
> [!Theorem]
> **第一型曲线积分的可加性 Additivity of First-Kind Line Integrals**：若曲线 $\gamma$ 由可首尾相接的分段 $C^1$ 曲线 $\gamma_1,\gamma_2$ 拼接而成，则
> $$
> \int_\gamma f\,\mathrm{d}s
> =\int_{\gamma_1}f\,\mathrm{d}s+\int_{\gamma_2}f\,\mathrm{d}s.
> $$
>
> **证明思路**：在拼接点将参数区间分成两段，应用定积分的区间可加性。

<!-- real_analysis_curve_mass_definition -->
> [!Definition]
> **曲线质量与质心 Mass and Centroid of a Curve**：设空间曲线 $\gamma$ 具有线密度 $\rho\geq0$，且质量
> $$
> M=\int_\gamma\rho\,\mathrm{d}s
> $$
> 满足 $M>0$。若 $\gamma=(x,y,z)$，则其质心为 $\bar r=(\bar x,\bar y,\bar z)$，其中
> $$
> \bar x=\frac{1}{M}\int_\gamma x\rho\,\mathrm{d}s,
> \qquad
> \bar y=\frac{1}{M}\int_\gamma y\rho\,\mathrm{d}s,
> \qquad
> \bar z=\frac{1}{M}\int_\gamma z\rho\,\mathrm{d}s.
> $$

<!-- real_analysis_first_kind_line_integral_circle_example -->
> [!Example]+
> **圆周上的第一型曲线积分 First-Kind Line Integral on a Circle**：设 $C$ 为半径 $R>0$ 的圆周，$f(x,y)=x^2+y^2$。取参数化 $\gamma(t)=(R\cos t,R\sin t)$，$0\leq t\leq2\pi$，则
> $$
> \int_C f\,\mathrm{d}s
> =\int_0^{2\pi}R^2\cdot R\,\mathrm{d}t
> =2\pi R^3.
> $$
>
> **证明思路**：圆周上 $f\equiv R^2$，且 $\|\gamma'(t)\|=R$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 10。