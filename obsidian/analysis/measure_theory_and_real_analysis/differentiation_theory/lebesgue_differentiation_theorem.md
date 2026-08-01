# Lebesgue 微分定理

## Lebesgue 点与 Lebesgue 集

<!-- lebesgue_point_definition -->
> [!Definition]
> **Lebesgue 点 Lebesgue Point**：设 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$。若 $x\in\mathbb{R}^n$ 满足
> $$
> \lim_{r\downarrow0}\frac{1}{m(B(x,r))}\int_{B(x,r)}|f(y)-f(x)|\,dy=0,
> $$
> 则称 $x$ 为 $f$ 的 Lebesgue 点。所有 Lebesgue 点组成的集合称为 $f$ 的 Lebesgue 集，记为 $L_f$。

<!-- lebesgue_differentiation_theorem -->
> [!Theorem]
> **Lebesgue 微分定理 Lebesgue Differentiation Theorem**：若 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$，则 $f$ 的 Lebesgue 点集具有满测度，即
> $$
> m(\mathbb{R}^n\setminus L_f)=0.
> $$
> 特别地，对几乎每个 $x\in\mathbb{R}^n$，有
> $$
> \lim_{r\downarrow0}\frac{1}{m(B(x,r))}\int_{B(x,r)}f(y)\,dy=f(x).
> $$
>
> **证明思路**：先对连续函数直接由连续性验证球平均收敛。再用连续紧支撑函数在局部 $L^1$ 意义下逼近一般函数，并以 Hardy-Littlewood 极大不等式控制逼近误差的坏点集测度；令逼近误差趋于零即可。

<!-- differentiation_of_indefinite_integral -->
> [!Corollary]
> **不定积分的几乎处处求导 Differentiation of an Indefinite Integral**：若 $f\in L^1_{\mathrm{loc}}(\mathbb{R})$，定义
> $$
> F(x)=\int_a^xf(t)\,dt.
> $$
> 则 $F$ 在几乎每一点可导，且
> $$
> F'(x)=f(x)
> \quad\text{a.e.}
> $$
>
> **证明思路**：对 $h\ne0$，差商为区间平均值
> $$
> \frac{F(x+h)-F(x)}{h}=\frac{1}{h}\int_x^{x+h}f(t)\,dt.
> $$
> 在 $f$ 的 Lebesgue 点处，Lebesgue 微分定理使该平均值收敛于 $f(x)$。

<!-- lebesgue_set_example -->
> [!Example]+
> **连续函数的 Lebesgue 集 Lebesgue Set of a Continuous Function**：若 $f:\mathbb{R}^n\to\mathbb{R}$ 连续，则每个点都是 $f$ 的 Lebesgue 点，即
> $$
> L_f=\mathbb{R}^n.
> $$
> 事实上，对任意 $\varepsilon>0$，连续性给出当 $r$ 充分小时，$B(x,r)$ 上恒有 $|f(y)-f(x)|<\varepsilon$，故相应的平均振荡也小于 $\varepsilon$。

<!-- differentiation_of_measures_theorem -->
> [!Theorem]
> **测度的 Lebesgue 微分定理 Lebesgue Differentiation Theorem for Measures**：设 $\nu$ 是 $\mathbb{R}^n$ 上局部有限的正 Borel 测度，其相对于 Lebesgue 测度的 Lebesgue 分解为
> $$
> \nu=fm+\nu_{\mathrm{s}},
> $$
> 其中 $\nu_{\mathrm{s}}\perp m$。则对几乎每个 $x\in\mathbb{R}^n$，
> $$
> \lim_{r\downarrow0}\frac{\nu(B(x,r))}{m(B(x,r))}=f(x).
> $$
>
> **证明思路**：绝对连续部分由函数形式的 Lebesgue 微分定理处理。奇异部分集中在一个零测集上；利用极大不等式证明其球密度在几乎处处为零，二者相加即得。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 3.3；Herbert Federer, *Geometric Measure Theory*, Section 2.9。
