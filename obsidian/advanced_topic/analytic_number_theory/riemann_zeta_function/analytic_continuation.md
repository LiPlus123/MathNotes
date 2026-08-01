## 解析延拓

<!-- analytic_number_theory_zeta_eta_function_definition -->
> [!Definition]
> **Dirichlet eta 函数 Dirichlet Eta Function**：当 $\operatorname{Re}(s)>0$ 时，定义
>
> $$\eta(s)=\sum_{n=1}^{\infty}\frac{(-1)^{n-1}}{n^s}.$$
>
> 它在半平面 $\operatorname{Re}(s)>0$ 内全纯，且当 $\operatorname{Re}(s)>1$ 时满足
>
> $$\eta(s)=\left(1-2^{1-s}\right)\zeta(s).$$

<!-- analytic_number_theory_zeta_continuation_to_right_half_plane -->
> [!Theorem]
> **延拓到右半平面 Continuation to the Right Half-Plane**：关系
>
> $$\zeta(s)=\frac{\eta(s)}{1-2^{1-s}}$$
>
> 将 $\zeta(s)$ 延拓为 $\operatorname{Re}(s)>0$ 内的亚纯函数；在此半平面中唯一的极点是 $s=1$ 处的单极点。
>
> **证明思路**：对交错级数运用 Abel 求和公式，证明 $\eta$ 在右半平面全纯。分母在 $s=1+2\pi i k/\log2$ 的其他零点均被 $\eta$ 的零点抵消，故它们是可去奇点。

<!-- analytic_number_theory_zeta_meromorphic_continuation_theorem -->
> [!Theorem]
> **Riemann zeta 函数的亚纯延拓 Meromorphic Continuation of the Riemann Zeta Function**：$\zeta(s)$ 可唯一延拓为整个复平面上的亚纯函数；它在 $s=1$ 有留数为 $1$ 的单极点，且没有其他极点。
>
> 对 $\operatorname{Re}(s)>0$，$s\ne1$，有积分表示
>
> $$\zeta(s)=\frac{s}{s-1}-s\int_1^{\infty}\frac{\{x\}}{x^{s+1}}\,dx,$$
>
> 其中 $\{x\}=x-\lfloor x\rfloor$ 为小数部分。反复减去 Euler-Maclaurin 公式给出的端点项可将此表示延拓到任意左半平面。
>
> **证明思路**：对 $\sum_{n\leq x}1$ 使用 Abel 求和公式得到积分表示；Euler-Maclaurin 公式使余项具有任意高阶衰减，故逐步跨越所有竖直直线。