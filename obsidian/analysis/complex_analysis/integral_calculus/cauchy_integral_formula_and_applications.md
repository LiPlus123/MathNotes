# Cauchy 积分公式及其应用

## Cauchy 积分公式

<!-- cauchy_integral_formula -->
> [!Theorem]
> **Cauchy 积分公式 Cauchy's Integral Formula**：设 $D$ 是区域，$f$ 在 $D$ 上全纯，$\gamma$ 是 $D$ 中正向简单闭曲线，且其内部及边界包含于 $D$。若 $a$ 在 $\gamma$ 的内部，则
> $$
> f(a)=\frac{1}{2\pi i}\int_\gamma\frac{f(z)}{z-a}\,dz.
> $$
> 若 $a$ 在曲线外部，则相应积分为 $0$。
>
> **证明思路**：函数 $f(z)/(z-a)$ 在 $a$ 处有唯一奇点。挖去 $a$ 附近的小圆盘后，对剩余区域应用 Cauchy 定理，并令小圆半径趋于零。

<!-- cauchy_integral_formula_index -->
> [!Theorem]
> **带指数的 Cauchy 公式 Cauchy Formula with Index**：设 $\gamma$ 是避免 $a$ 的闭曲线，$f$ 在包含 $\gamma$ 及其相关内部区域的开集上全纯，则
> $$
> \frac{1}{2\pi i}\int_\gamma\frac{f(z)}{z-a}\,dz
> =n(\gamma,a)f(a),
> $$
> 其中 $n(\gamma,a)$ 是 $\gamma$ 关于 $a$ 的卷绕数。简单闭曲线的内部点对应 $n(\gamma,a)=1$，外部点对应 $n(\gamma,a)=0$。

## 全纯函数的无穷可微性

<!-- holomorphic_infinite_differentiability -->
> [!Theorem]
> **全纯函数的无穷次可微性 Infinite Differentiability of Holomorphic Functions**：若 $f$ 在区域 $D$ 上全纯，则 $f$ 在 $D$ 上具有任意阶复导数。对 $n\ge0$，有
> $$
> f^{(n)}(a)=\frac{n!}{2\pi i}\int_\gamma\frac{f(z)}{(z-a)^{n+1}}\,dz,
> $$
> 其中 $\gamma$ 是包含 $a$ 的正向简单闭曲线，且其内部与边界包含于 $D$。
>
> **证明思路**：对 Cauchy 公式关于参数 $a$ 逐次求导；积分核 $(z-a)^{-1}$ 在曲线附近对 $a$ 局部一致可微，从而允许交换求导与积分。

<!-- cauchy_estimate -->
> [!Theorem]
> **Cauchy 不等式 Cauchy's Estimates**：若 $f$ 在闭圆盘 $\overline{B(a,R)}$ 的邻域内全纯，且
> $$
> M_R=\max_{|z-a|=R}|f(z)|,
> $$
> 则对 $n\ge0$，有
> $$
> |f^{(n)}(a)|\le\frac{n!M_R}{R^n}.
> $$
>
> **证明思路**：将高阶 Cauchy 公式应用于圆周 $|z-a|=R$，再使用 ML 不等式；圆周长度为 $2\pi R$。

## 模原理与 Morera 定理

<!-- maximum_modulus_principle -->
> [!Theorem]
> **最大模定理 Maximum Modulus Principle**：设 $D$ 是区域，$f:D\to\mathbb{C}$ 全纯。若 $|f|$ 在 $D$ 的某个内点 $a$ 取得局部最大值，则 $f$ 为常值函数。若 $D$ 有界且 $f$ 连续于 $\overline D$、全纯于 $D$，则 $|f|$ 的最大值在边界 $\partial D$ 上取得，除非 $f$ 为常值。
>
> **证明思路**：Cauchy 积分公式表明 $f(a)$ 是圆周上函数值的平均值；若其模达到局部最大值，则平均值等号条件迫使圆周上的函数值具有相同方向和模，再由连通性推出 $f$ 常值。

<!-- morera_theorem -->
> [!Theorem]
> **Morera 定理 Morera's Theorem**：设 $D$ 是区域，$f:D\to\mathbb{C}$ 连续。若对 $D$ 中每个三角形 $\Delta$（连同其内部）都有
> $$
> \int_{\partial\Delta}f(z)\,dz=0,
> $$
> 则 $f$ 在 $D$ 上全纯。
>
> **证明思路**：在任意小圆盘内由路径积分构造原函数；三角形积分条件保证该积分与路径无关，原函数的导数等于 $f$，因而 $f$ 全纯。

## Liouville 定理与代数基本定理

<!-- liouville_theorem -->
> [!Theorem]
> **Liouville 定理 Liouville's Theorem**：若整函数 $f:\mathbb{C}\to\mathbb{C}$ 有界，即存在 $M>0$ 使 $|f(z)|\le M$ 对所有 $z\in\mathbb{C}$ 成立，则 $f$ 为常值函数。
>
> **证明思路**：对任意 $a\in\mathbb{C}$ 使用 Cauchy 不等式，并令圆半径 $R\to\infty$，得到 $|f'(a)|\le M/R\to0$。于是 $f'\equiv0$，连通性推出 $f$ 常值。

<!-- fundamental_theorem_of_algebra_complex_analysis -->
> [!Theorem]
> **代数基本定理 Fundamental Theorem of Algebra**：每个次数至少为 $1$ 的非恒定复系数多项式
> $$
> p(z)=a_nz^n+\cdots+a_0\qquad(a_n\ne0)
> $$
> 在 $\mathbb{C}$ 中至少有一个根。因此 $n$ 次复系数多项式按重数计算恰有 $n$ 个复根。
>
> **证明思路**：若 $p$ 无根，则 $1/p$ 是整函数。因为 $|p(z)|\to\infty$ 当 $|z|\to\infty$，函数 $1/p$ 有界；Liouville 定理迫使 $1/p$ 常值，矛盾。

> **注**：Cauchy 积分公式、Cauchy 不等式、最大模定理、Morera 定理与 Liouville 定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapters 4-5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapters 4-5。
