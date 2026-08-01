# 加权 Lebesgue 空间与权函数

## 权测度与加权空间

<!-- weight_function_definition -->
> [!Definition]
> **权函数 Weight Function**：定义在 $\mathbb{R}^n$ 上的函数 $w$ 称为权函数，若 $w:\mathbb{R}^n\to(0,+\infty)$ 几乎处处成立，且 $w\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$。它诱导局部有限 Borel 测度
> $$
> dw(x)=w(x)\,dx.
> $$
> 对可测集 $E$，记 $w(E)=\int_Ew(x)\,dx$。

<!-- weighted_lebesgue_space_definition -->
> [!Definition]
> **加权 Lebesgue 空间 Weighted Lebesgue Space**：设 $1\leq p<+\infty$，定义
> $$
> L^p(w)=L^p(\mathbb{R}^n,w(x)\,dx),
> \qquad
> \|f\|_{L^p(w)}=\left(\int_{\mathbb{R}^n}|f(x)|^pw(x)\,dx\right)^{1/p}.
> $$
> 当 $p=+\infty$ 时，$L^\infty(w)$ 按 $w(x)\,dx$ 的本质上确界定义；因 $w>0$ 几乎处处，它与通常的 $L^\infty$ 同构且范数相同。

<!-- weighted_average_definition -->
> [!Definition]
> **加权平均 Weighted Average**：若 $Q\subset\mathbb{R}^n$ 是立方体且 $w(Q)>0$，定义 $f$ 关于 $w$ 在 $Q$ 上的平均为
> $$
> \langle f\rangle_{Q,w}=\frac{1}{w(Q)}\int_Qf(x)w(x)\,dx.
> $$
> 无权平均简记为
> $$
> \langle f\rangle_Q=\frac{1}{|Q|}\int_Qf(x)\,dx.
> $$

## 基本例子与尺度

<!-- power_weight_definition -->
> [!Example]+
> **幂权 Power Weight**：对 $\alpha\in\mathbb{R}$，函数
> $$
> w_\alpha(x)=|x|^\alpha
> $$
> 在原点附近局部可积当且仅当 $\alpha>-n$。在该条件下它定义权测度；其是否属于 $A_p$ 还须满足更严格的指数条件。

<!-- weighted_dilation_formula -->
> [!Proposition]
> **幂权的尺度规律 Scaling Law for Power Weights**：若 $w_\alpha(x)=|x|^\alpha$ 且 $f_r(x)=f(rx)$（$r>0$），则
> $$
> \|f_r\|_{L^p(w_\alpha)}=r^{-(n+\alpha)/p}\|f\|_{L^p(w_\alpha)}.
> $$
> 因而幂权是与 Euclidean 伸缩相容的典型齐次权。
>
> **证明思路**：在加权积分中作变量代换 $u=rx$，并使用 $|u/r|^\alpha=r^{-\alpha}|u|^\alpha$。

> **来源**：J. Duoandikoetxea, *Fourier Analysis*, Graduate Studies in Mathematics 29, Chapter 4；David Cruz-Uribe and Carlos Pérez, *Sharp Two-Weight, Weak-Type Norm Inequalities for Singular Integral Operators*, 2000，导言中的加权空间约定。
