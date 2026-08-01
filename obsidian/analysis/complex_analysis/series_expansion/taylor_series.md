# Taylor 级数

## 全纯函数的 Taylor 展开

<!-- taylor_series_theorem -->
> [!Theorem]
> **Taylor 展开 Taylor Expansion**：设 $f$ 在包含闭圆盘 $\overline{B(a,R)}$ 的开集上全纯，则对 $|z-a|<R$，有
> $$
> f(z)=\sum_{n=0}^{\infty}\frac{f^{(n)}(a)}{n!}(z-a)^n.
> $$
> 该级数称为 $f$ 在 $a$ 处的 Taylor 级数。
>
> **证明思路**：在包含 $z$ 的圆周上应用 Cauchy 积分公式，将核 $1/(\zeta-z)$ 展开为关于 $(z-a)/(\zeta-a)$ 的几何级数，再利用一致收敛交换积分与求和。

<!-- taylor_coefficients_integral_formula -->
> [!Theorem]
> **Taylor 系数的积分表达 Integral Formula for Taylor Coefficients**：若 $f$ 在正向简单闭曲线 $\gamma$ 及其内部全纯，且 $a$ 在内部，则 Taylor 系数满足
> $$
> c_n=\frac{f^{(n)}(a)}{n!}
> =\frac1{2\pi i}\int_\gamma\frac{f(\zeta)}{(\zeta-a)^{n+1}}\,d\zeta.
> $$
>
> **证明思路**：直接应用 Cauchy 高阶导数公式。

<!-- taylor_series_uniqueness -->
> [!Theorem]
> **Taylor 展开的唯一性 Uniqueness of Taylor Expansion**：若全纯函数 $f$ 在 $a$ 的邻域内可表示为幂级数
> $$
> f(z)=\sum_{n=0}^{\infty}c_n(z-a)^n,
> $$
> 则 $c_n=f^{(n)}(a)/n!$。因此同一函数在同一中心处的 Taylor 系数唯一。

## 收敛半径与最近奇点

<!-- taylor_series_radius_nearest_singularity -->
> [!Theorem]
> **Taylor 级数的收敛半径与最近奇点 Radius and Nearest Singularity**：设 $f$ 在 $a$ 的某邻域内全纯，并令 $R$ 为从 $a$ 到 $f$ 的最近不可去奇点的距离；若不存在有限奇点，则令 $R=\infty$。则 $f$ 在 $a$ 处 Taylor 级数的收敛半径为 $R$。
>
> 更准确地说，Taylor 级数在以 $a$ 为中心、避开奇点的最大圆盘内表示 $f$；收敛圆周上是否收敛需要另行判断。
>
> **证明思路**：在任意不含奇点的闭圆盘上应用 Cauchy 公式得到展开；若半径超过最近不可去奇点，则幂级数和函数会给出该奇点处的全纯延拓，产生矛盾。

<!-- taylor_remainder_cauchy_form -->
> [!Theorem]
> **Taylor 余项的 Cauchy 表达 Cauchy Form of the Taylor Remainder**：在 Taylor 展开的条件下，对 $|z-a|<\rho<R$，有
> $$
> f(z)-\sum_{n=0}^{N}\frac{f^{(n)}(a)}{n!}(z-a)^n
> =\frac1{2\pi i}\int_{|\zeta-a|=\rho}
> \frac{f(\zeta)(z-a)^{N+1}}{(\zeta-a)^{N+1}(\zeta-z)}\,d\zeta.
> $$
> 该表达式说明余项随 $N\to\infty$ 在严格内缩圆盘上一致趋于零。

<!-- taylor_series_examples -->
> [!Example]+
> **Taylor 展开的例子 Examples of Taylor Expansions**：在 $0$ 处，
> $$
> e^z=\sum_{n=0}^{\infty}\frac{z^n}{n!},\qquad
> \sin z=\sum_{n=0}^{\infty}\frac{(-1)^nz^{2n+1}}{(2n+1)!},
> $$
> $$
> \frac1{1-z}=\sum_{n=0}^{\infty}z^n\qquad(|z|<1).
> $$
> 前两个级数的收敛半径为 $\infty$，第三个级数的收敛半径为 $1$，对应最近奇点 $z=1$。

> **注**：Taylor 展开和最近奇点原则参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
