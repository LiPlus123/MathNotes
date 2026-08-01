## van der Corput 方法

<!-- analytic_number_theory_van_der_corput_differencing_inequality -->
> [!Theorem]
> **van der Corput 差分不等式 van der Corput Differencing Inequality**：设 $(z_n)_{1\leq n\leq N}$ 为满足 $|z_n|\leq1$ 的复数列，且 $1\leq H\leq N$。则
>
> $$\left|\sum_{n=1}^{N}z_n\right|^2
> \leq\frac{N+H}{H}\left(NH+2\sum_{h=1}^{H}\left|\sum_{n=1}^{N-h}z_{n+h}\overline{z_n}\right|\right).$$
>
> **证明思路**：以长度 $H$ 的滑动平均代替原和，应用 Cauchy-Schwarz 后展开平方；交叉项按差 $h$ 分组即得自相关和。

<!-- analytic_number_theory_van_der_corput_A_process -->
> [!Theorem]
> **van der Corput A 过程 van der Corput A-Process**：对指数和 $\sum_{n\leq N}e(f(n))$，将差分不等式应用于 $z_n=e(f(n))$，可将原问题化为相位差
>
> $$f(n+h)-f(n)$$
>
> 的较低复杂度指数和估计。该过程通常降低多项式相位的次数，或将原和转化为可控制的相关和。
>
> **证明思路**：在差分不等式中有 $z_{n+h}\overline{z_n}=e(f(n+h)-f(n))$。选择合适的 $H$，并迭代应用此观察，即可放大相位变化带来的消去。

<!-- analytic_number_theory_van_der_corput_B_process -->
> [!Theorem]
> **van der Corput B 过程 van der Corput B-Process**：对具有适当光滑性且二阶导数不退化的相位 $f$，Poisson 求和与驻相法可将
>
> $$\sum_{n\in I}e(f(n))$$
>
> 转化为对偶区间上由 Legendre 变换相位 $f^*$ 控制的指数和。典型地，若 $f''\asymp\lambda>0$ 且区间长度为 $N$，则其估计规模可由 $N\sqrt{\lambda}+\lambda^{-1/2}$ 控制。
>
> **证明思路**：先作平滑化并使用 Poisson 求和，将整数和转为 Fourier 积分和；每个积分由驻相点附近的二次近似控制，非驻相区域则经分部积分衰减。

<!-- analytic_number_theory_van_der_corput_exponent_pairs_note -->
> [!Theorem]
> **指数对与 A/B 过程 Exponent Pairs and the A/B Processes**：指数对理论将可用于某类相位和的估计编码为指数对 $(\kappa,\lambda)$；van der Corput A、B 过程从已知指数对产生新的指数对。迭代这些过程可导出许多经典指数和界，并应用于除数问题与 zeta 函数估计。

> **证明思路**：A 过程对应差分不等式，B 过程对应 Poisson 求和的对偶变换；将两种变换对参数尺度的影响抽象化，便得到指数对的递推规则。