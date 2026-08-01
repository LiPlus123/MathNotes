# 色散方程与 Strichartz 估计

## 时空积分估计

<!-- pde_schrodinger_propagator_definition -->
> [!Definition]
> **自由 Schrödinger 演化 Free Schrodinger Evolution**：对 $u_0\in\mathcal{S}(\mathbb{R}^n)$，自由方程
> $$
> i\partial_tu+\Delta u=0,\qquad u(0)=u_0
> $$
> 的解记为 $u(t)=e^{it\Delta}u_0$；当 $t\ne0$，其积分核为
> $$
> e^{it\Delta}u_0(x)=(4\pi it)^{-n/2}
> \int_{\mathbb{R}^n}e^{i|x-y|^2/(4t)}u_0(y)\,dy.
> $$

<!-- pde_schrodinger_dispersive_estimate -->
> [!Theorem]
> **Schrodinger 色散估计 Schrodinger Dispersive Estimate**：对 $t\ne0$，
> $$
> \|e^{it\Delta}f\|_{L^\infty(\mathbb{R}^n)}
> \leq C|t|^{-n/2}\|f\|_{L^1(\mathbb{R}^n)}.
> $$
>
> **证明思路**：使用自由演化的显式核；其绝对值为常数倍 $|t|^{-n/2}$，故直接得到 $L^1\to L^\infty$ 界。

<!-- pde_schrodinger_admissible_pair_definition -->
> [!Definition]
> **Schrodinger 可容许对 Schrodinger-Admissible Pair**：当 $n\geq1$，指数对 $(q,r)$ 称为可容许的，若
> $$
> \frac2q+\frac nr=\frac n2,
> \qquad 2\leq q,r\leq\infty,
> $$
> 并排除二维端点 $(q,r)=(2,\infty)$。不同维数的端点处理须采用相应的 Keel--Tao 表述。

<!-- pde_strichartz_theorem -->
> [!Theorem]
> **Strichartz 估计 Strichartz Estimates**：若 $(q,r)$、$(\widetilde q,\widetilde r)$ 是 Schrodinger 可容许对，则
> $$
> \|e^{it\Delta}u_0\|_{L^q_tL^r_x}\leq C\|u_0\|_{L^2_x},
> $$
> 且 Duhamel 项满足
> $$
> \left\|\int_0^te^{i(t-s)\Delta}F(s)\,ds\right\|_{L^q_tL^r_x}
> \leq C\|F\|_{L^{\widetilde q'}_tL^{\widetilde r'}_x}.
> $$
>
> **证明思路**：以 $TT^*$ 方法将齐次估计化为时差核的双线性估计；色散界与能量界插值后应用 Hardy-Littlewood-Sobolev 型时域不等式。端点由 Keel--Tao 的抽象论证处理。

<!-- pde_local_smoothing_concept -->
> [!Concept]
> **局部光滑化 Local Smoothing**：色散相位使解在时空局部区域平均获得额外导数。对不同方程，增益阶数和可用指数由曲率、频率局部化及 Fourier 积分算子的局部光滑化理论决定；它与逐时刻 Sobolev 正则性不同。

<!-- pde_kdv_benjamin_ono_concept -->
> [!Concept]
> **KdV 与 Benjamin--Ono 的调和分析方法 Harmonic-Analysis Methods for KdV and Benjamin--Ono**：这类方程的局部适定性常结合线性演化的限制型或局部光滑化估计、Bourgain 型时频空间，以及对二次或三次非线性项的双线性估计。

> **来源**：Mark Keel and Terence Tao, "Endpoint Strichartz Estimates", *American Journal of Mathematics* 120 (1998)；Terence Tao, *Nonlinear Dispersive Equations*。
