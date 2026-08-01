# 辐角原理与 Rouché 定理

## 对数导数与辐角原理

<!-- logarithmic_derivative_definition -->
> [!Definition]
> **对数导数 Logarithmic Derivative**：设 $f$ 在区域内亚纯且不恒为零。其对数导数定义为
> $$
> \frac{f'(z)}{f(z)}.
> $$
> 若 $a$ 是 $f$ 的 $m$ 阶零点，则 $f'/f$ 在 $a$ 处有留数 $m$；若 $a$ 是 $m$ 阶极点，则留数为 $-m$。

<!-- argument_principle -->
> [!Theorem]
> **辐角原理 Argument Principle**：设 $f$ 在闭曲线 $\gamma$ 及其内部亚纯，且在 $\gamma$ 上无零点和极点。则
> $$
> \frac1{2\pi i}\int_\gamma\frac{f'(z)}{f(z)}\,dz
> =N-P,
> $$
> 其中 $N$、$P$ 分别是 $\gamma$ 内零点和极点按阶计数的总数。更一般地，
> $$
> \frac1{2\pi i}\int_\gamma\frac{f'(z)}{f(z)}\,dz
> =\sum_a n(\gamma,a)\operatorname{ord}_a(f).
> $$
>
> **证明思路**：对 $f'/f$ 应用留数定理；局部阶分解直接给出其留数等于零点阶或极点阶的相反数。

<!-- argument_variation_interpretation -->
> [!Definition]
> **辐角变化的解释 Variation of Argument**：当 $f(\gamma(t))\ne0$ 时，积分
> $$
> \frac1{2\pi i}\int_\gamma\frac{f'(z)}{f(z)}\,dz
> $$
> 等于曲线 $f\circ\gamma$ 绕原点的卷绕数，即 $\arg f(z)$ 沿 $\gamma$ 的总变化量除以 $2\pi$。

## Rouché 定理与零点计数

<!-- rouche_theorem -->
> [!Theorem]
> **Rouché 定理 Rouché's Theorem**：设 $f,g$ 在简单闭曲线 $\gamma$ 及其内部全纯，并在 $\gamma$ 上满足
> $$
> |g(z)|<|f(z)|.
> $$
> 则 $f$ 与 $f+g$ 在 $\gamma$ 内的零点数按重数计相同。
>
> **证明思路**：考虑 $f_t=f+tg$（$0\le t\le1$）。边界上的严格不等式保证 $f_t$ 在 $\gamma$ 上无零点；辐角原理说明零点数随 $t$ 连续且为整数，因而保持不变。

<!-- rouche_polynomial_application -->
> [!Theorem]
> **Rouché 定理的多项式应用 Polynomial Application of Rouché's Theorem**：设
> $$
> p(z)=z^n+a_{n-1}z^{n-1}+\cdots+a_0.
> $$
> 若在 $|z|=R$ 上有
> $$
> |a_{n-1}z^{n-1}+\cdots+a_0|<|z|^n,
> $$
> 则 $p$ 在 $|z|<R$ 内有恰好 $n$ 个零点（按重数计）。
>
> **证明思路**：在圆周上取 $f(z)=z^n$、$g(z)=p(z)-z^n$，直接应用 Rouché 定理。

<!-- open_mapping_theorem -->
> [!Theorem]
> **开映射定理 Open Mapping Theorem**：非恒定全纯函数把区域映为开集。特别地，非恒定全纯函数不可能在内部取得模的局部最大值。
>
> **证明思路**：在零点阶分解后，局部写成 $f(z)-f(a)=(z-a)^mg(z)$，其中 $g(a)\ne0$；小圆盘的像包含以 $f(a)$ 为中心的邻域。

<!-- local_inverse_function_theorem_complex -->
> [!Theorem]
> **局部反函数定理 Local Inverse Function Theorem**：若 $f$ 在 $a$ 附近全纯且 $f'(a)\ne0$，则存在邻域 $U$、$V$，使 $f:U\to V$ 双全纯，且
> $$
> (f^{-1})'(f(a))=\frac1{f'(a)}.
> $$
>
> **证明思路**：由开映射定理与局部零点阶为一得到局部单射；再使用复导数的链式法则求逆函数导数。

> **注**：辐角原理、Rouché 定理及其应用参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
