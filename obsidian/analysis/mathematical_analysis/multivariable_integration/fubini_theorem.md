# Fubini 定理

<!-- real_analysis_multivariable_iterated_integral_definition -->
> [!Definition]
> **累次积分 Iterated Integral**：设 $R=[a,b]\times[c,d]$，$f:R\to\mathbb{R}$。若对每个 $x\in[a,b]$，函数 $y\mapsto f(x,y)$ 在 $[c,d]$ 上可积，且
> $$
> F(x)=\int_c^df(x,y)\,\mathrm{d}y
> $$
> 在 $[a,b]$ 上可积，则称
> $$
> \int_a^b\left(\int_c^df(x,y)\,\mathrm{d}y\right)\mathrm{d}x
> $$
> 为先对 $y$ 后对 $x$ 的累次积分；另一种次序类似。

<!-- real_analysis_multivariable_fubini_theorem_riemann -->
> [!Theorem]
> **Fubini 定理（Riemann 版本）Fubini's Theorem for Riemann Integrals**：若 $f:[a,b]\times[c,d]\to\mathbb{R}$ 连续，则两个累次积分存在，且
> $$
> \int_a^b\left(\int_c^df(x,y)\,\mathrm{d}y\right)\mathrm{d}x
> =\int_c^d\left(\int_a^bf(x,y)\,\mathrm{d}x\right)\mathrm{d}y
> =\int_{[a,b]\times[c,d]}f(x,y)\,\mathrm{d}(x,y).
> $$
>
> **证明思路**：将矩形分割为小矩形。连续性给出的统一振幅控制使二维 Darboux 和与由一维积分组成的 Darboux 和相互逼近，取极限即得结论。

<!-- real_analysis_multivariable_fubini_theorem_n_dimensional -->
> [!Theorem]
> **高维 Fubini 定理 Higher-Dimensional Fubini Theorem**：设 $Q=Q_1\times Q_2$，其中 $Q_1\subseteq\mathbb{R}^p$、$Q_2\subseteq\mathbb{R}^q$ 为闭矩形，且 $f:Q\to\mathbb{R}$ 连续。则
> $$
> \int_Qf(x,y)\,\mathrm{d}(x,y)
> =\int_{Q_1}\left(\int_{Q_2}f(x,y)\,\mathrm{d}y\right)\mathrm{d}x.
> $$
> 反复应用可将 $n$ 重积分化为任意次序的一元累次积分。
>
> **证明思路**：对两个坐标块应用二维情形；将每个坐标块进一步分解并归纳。

<!-- real_analysis_multivariable_product_integral_formula -->
> [!Corollary]
> **乘积函数的积分公式 Product Integral Formula**：若 $g:[a,b]\to\mathbb{R}$、$h:[c,d]\to\mathbb{R}$ 连续，则
> $$
> \int_{[a,b]\times[c,d]}g(x)h(y)\,\mathrm{d}(x,y)
> =\left(\int_a^bg(x)\,\mathrm{d}x\right)
> \left(\int_c^dh(y)\,\mathrm{d}y\right).
> $$
>
> **证明思路**：在 Fubini 定理中先对 $y$ 积分，将 $g(x)$ 视为常数提出内层积分。

<!-- real_analysis_multivariable_order_exchange_on_general_region -->
> [!Theorem]
> **一般区域上的积分次序交换 Order Exchange on a General Region**：设
> $$
> E=\{(x,y):a\leq x\leq b,\ \varphi_1(x)\leq y\leq\varphi_2(x)\},
> $$
> 其中 $\varphi_1,\varphi_2$ 连续且 $\varphi_1\leq\varphi_2$，$f$ 在 $E$ 上连续。则
> $$
> \int_Ef(x,y)\,\mathrm{d}(x,y)
> =\int_a^b\left(\int_{\varphi_1(x)}^{\varphi_2(x)}f(x,y)\,\mathrm{d}y\right)\mathrm{d}x.
> $$
> 若同一区域也描述为 $E=\{(x,y):c\leq y\leq d,\ \psi_1(y)\leq x\leq\psi_2(y)\}$，则可据此改写为另一种次序的累次积分。
>
> **证明思路**：将 $f\mathbf{1}_E$ 延拓到包含 $E$ 的矩形；边界曲线为零测集，故可对延拓函数应用 Fubini 定理，再识别各垂直截面上的积分。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 10；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 10。