# 极大函数、平方函数与面积函数刻画

## 平方函数与面积函数

<!-- hardy_lusin_area_function_definition -->
> [!Definition]
> **Lusin 面积函数 Lusin Area Function**：令 $u(x,t)=P_t*f(x)$。对 $a>0$，定义
> $$
> A_af(x)=\left(\int_0^{+\infty}\int_{|y-x|<at}
> |t\nabla u(y,t)|^2\,\frac{dy\,dt}{t^{n+1}}\right)^{1/2}.
> $$
> 它测量调和延拓在以 $x$ 为顶点的圆锥内的能量。

<!-- hardy_littlewood_paley_g_function_definition -->
> [!Definition]
> **Littlewood-Paley $g$ 函数 Littlewood-Paley $g$ Function**：对同一调和延拓 $u=P_t*f$，定义
> $$
> g(f)(x)=\left(\int_0^{+\infty}|t\partial_tu(x,t)|^2\,\frac{dt}{t}\right)^{1/2}.
> $$
> 它只沿竖直线积累尺度导数的平方能量。

<!-- calderon_reproducing_formula -->
> [!Theorem]
> **Calderón 再生公式 Calderón Reproducing Formula**：存在 Schwartz 函数 $\psi,\widetilde\psi$，其 Fourier 变换避开原点，使对适当的温和分布 $f$，
> $$
> f=\int_0^{+\infty}\widetilde\psi_t*\psi_t*f\,\frac{dt}{t}
> $$
> 在 $\mathcal{S}'(\mathbb{R}^n)$ 意义下成立，其中 $\psi_t(x)=t^{-n}\psi(x/t)$。
>
> **证明思路**：在频率侧选择 $\psi,\widetilde\psi$，使对 $\xi\ne0$ 有
> $$
> \int_0^{+\infty}\widehat{\widetilde\psi}(t\xi)\widehat\psi(t\xi)\,\frac{dt}{t}=1.
> $$
> 再通过 Fourier 反演将乘子恒等式转化为分布再生公式。

<!-- hardy_square_area_equivalence -->
> [!Theorem]
> **Hardy 空间的平方与面积刻画 Square and Area Characterizations of Hardy Spaces**：对 $0<p\leq1$，适当地选择核和圆锥孔径后，下列量有限当且仅当 $f\in H^p(\mathbb{R}^n)$：
> $$
> \|\mathcal{N}_{P,a}f\|_p,
> \qquad
> \|g(f)\|_p,
> \qquad
> \|A_af\|_p.
> $$
> 它们均与 $\|f\|_{H^p}$ 等价。
>
> **证明思路**：由再生公式把 $f$ 写成尺度局部化的积分。以原子分解逐个控制平方函数和面积函数，并反过来对面积函数的超水平集作停时分解，构造原子表示。

<!-- hardy_littlewood_paley_connection -->
> [!Corollary]
> **与 Littlewood-Paley 理论的联系 Connection with Littlewood-Paley Theory**：当 $1<p<+\infty$ 时，平方函数刻画退化为经典范数等价
> $$
> \|g(f)\|_p\asymp\|f\|_p,
> \qquad
> \|A_af\|_p\asymp\|f\|_p.
> $$
> 因而 Hardy 空间平方函数理论将 $L^p$ Littlewood-Paley 理论延伸至 $p\leq1$ 的端点范围。

> **来源**：Elias M. Stein, *Harmonic Analysis*, Chapter III；Elias M. Stein, *Singular Integrals and Differentiability Properties of Functions*, Chapter IV。
