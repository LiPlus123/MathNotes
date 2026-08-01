# 基本不等式

## Young 与 Hölder 不等式

<!-- young_product_inequality -->
> [!Theorem]
> **Young 不等式 Young's Inequality**：设 $1<p,q<+\infty$ 满足
> $$
> \frac{1}{p}+\frac{1}{q}=1.
> $$
> 则对所有 $a,b\geq0$，
> $$
> ab\leq\frac{a^p}{p}+\frac{b^q}{q}.
> $$
> 等号当且仅当 $a^p=b^q$。
>
> **证明思路**：函数 $t\mapsto t^p/p$ 是凸函数；以其在 $t=a$ 处的切线估计 $b$，或应用凸函数的 Legendre 对偶关系即可。

<!-- holder_inequality -->
> [!Theorem]
> **Hölder 不等式 Hölder's Inequality**：设 $1\leq p,q\leq+\infty$ 为共轭指数，即
> $$
> \frac{1}{p}+\frac{1}{q}=1.
> $$
> 若 $f\in L^p(\mu)$、$g\in L^q(\mu)$，则 $fg\in L^1(\mu)$，且
> $$
> \int_X|fg|\,d\mu\leq\|f\|_p\|g\|_q.
> $$
>
> **证明思路**：端点情形由本质上确界直接得到。对 $1<p,q<+\infty$，将函数按各自范数归一化后逐点应用 Young 不等式，再积分。

<!-- minkowski_inequality -->
> [!Theorem]
> **Minkowski 不等式 Minkowski's Inequality**：设 $1\leq p\leq+\infty$，且 $f,g\in L^p(\mu)$。则
> $$
> \|f+g\|_p\leq\|f\|_p+\|g\|_p.
> $$
>
> **证明思路**：对 $p=1$ 和 $p=+\infty$ 由逐点三角不等式得到。对 $1<p<+\infty$，将 $|f+g|^p$ 写成 $|f+g|\cdot|f+g|^{p-1}$，再对两项分别使用 Hölder 不等式。

## Jensen 不等式

<!-- jensen_inequality -->
> [!Theorem]
> **Jensen 不等式 Jensen's Inequality**：设 $(X,\mathcal{A},\mu)$ 为概率空间，$\varphi:I\to\mathbb{R}$ 是定义在区间 $I$ 上的凸函数，$f\in L^1(\mu)$ 且 $f(X)\subseteq I$ 几乎处处。若 $\varphi\circ f$ 可积，则
> $$
> \varphi\left(\int_Xf\,d\mu\right)
> \leq\int_X\varphi(f)\,d\mu.
> $$
>
> **证明思路**：凸函数在任一点都存在支撑直线，使得 $\varphi(t)\geq at+b$。将该不等式代入 $t=f(x)$ 后积分，并在 $\int f$ 处选择支撑直线即可。

<!-- generalized_jensen_inequality -->
> [!Corollary]
> **有限测度情形的 Jensen 不等式 Jensen's Inequality on a Finite Measure Space**：若 $0<\mu(X)<+\infty$，则在上述条件下
> $$
> \varphi\left(\frac{1}{\mu(X)}\int_Xf\,d\mu\right)
> \leq\frac{1}{\mu(X)}\int_X\varphi(f)\,d\mu.
> $$
>
> **证明思路**：将 $\mu$ 归一化为概率测度 $\mu/\mu(X)$，然后应用 Jensen 不等式。

<!-- lp_norm_log_convexity -->
> [!Proposition]
> **$L^p$ 范数的对数凸性 Log-Convexity of $L^p$ Norms**：设 $1\leq p_0,p_1\leq+\infty$，$0<\theta<1$，并令
> $$
> \frac{1}{p}=\frac{\theta}{p_0}+\frac{1-\theta}{p_1}.
> $$
> 若 $f\in L^{p_0}(\mu)\cap L^{p_1}(\mu)$，则
> $$
> \|f\|_p\leq\|f\|_{p_0}^{\theta}\|f\|_{p_1}^{1-\theta}.
> $$
>
> **证明思路**：把 $|f|^p$ 分解为 $|f|^{\theta p}$ 与 $|f|^{(1-\theta)p}$ 的乘积，并对适当共轭指数应用 Hölder 不等式。

> **注**：本小节参见 Walter Rudin, *Real and Complex Analysis*, 3rd ed., Chapter 3；Gerald B. Folland, *Real Analysis*, 2nd ed., Section 6.1。
