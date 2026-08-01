# 卷积

## 卷积的定义与基本性质

<!-- convolution_definition -->
> [!Definition]
> **卷积 Convolution**：设 $f,g:\mathbb{R}^n\to\mathbb{C}$ 为可测函数。若对某个 $x\in\mathbb{R}^n$，函数 $y\mapsto f(y)g(x-y)$ 绝对可积，则定义 $f$ 与 $g$ 在 $x$ 的卷积为
> $$
> (f*g)(x)=\int_{\mathbb{R}^n}f(y)g(x-y)\,dy.
> $$
> 当 $f\in L^p(\mathbb{R}^n)$、$g\in L^q(\mathbb{R}^n)$ 且满足 Young 不等式的指数条件时，该积分对几乎每个 $x$ 有定义，且 $f*g$ 属于相应的 $L^r$ 空间。

<!-- convolution_commutativity_and_translation -->
> [!Proposition]
> **卷积的交换律与平移相容性 Commutativity and Translation Compatibility of Convolution**：在卷积两侧均有定义的地方，
> $$
> f*g=g*f.
> $$
> 若 $\tau_a f(x)=f(x-a)$ 表示平移，则
> $$
> (\tau_af)*g=\tau_a(f*g)=f*(\tau_ag).
> $$
>
> **证明思路**：对交换律，在积分中作变量代换 $z=x-y$；对平移相容性，直接将定义代入，并作 $y\mapsto y-a$ 的变量代换。

<!-- convolution_with_indicator_example -->
> [!Example]+
> **区间示性函数的卷积 Convolution of Interval Indicators**：在 $\mathbb{R}$ 上令
> $$
> f=g=\mathbf{1}_{[0,1]}.
> $$
> 则
> $$
> (f*g)(x)=
> \begin{cases}
> x, & 0\leq x\leq1,\\
> 2-x, & 1<x\leq2,\\
> 0, & \text{其他情形}.
> \end{cases}
> $$
> 因为 $(f*g)(x)$ 等于区间 $[0,1]$ 与 $[x-1,x]$ 的交集长度。卷积将两个不连续的示性函数变为连续的三角形函数。

## Young 不等式与可微性

<!-- young_convolution_inequality -->
> [!Theorem]
> **Young 卷积不等式 Young's Convolution Inequality**：设 $1\leq p,q,r\leq+\infty$ 满足
> $$
> \frac{1}{p}+\frac{1}{q}=1+\frac{1}{r}.
> $$
> 若 $f\in L^p(\mathbb{R}^n)$、$g\in L^q(\mathbb{R}^n)$，则 $f*g\in L^r(\mathbb{R}^n)$，并且
> $$
> \|f*g\|_r\leq\|f\|_p\|g\|_q.
> $$
>
> **证明思路**：端点情形分别由 Tonelli 定理和 Hölder 不等式得到。一般情形可对积分核使用 Hölder 不等式，再结合 Minkowski 积分不等式；等价地，可由端点估计进行插值得到。

<!-- convolution_l1_algebra_corollary -->
> [!Corollary]
> **$L^1$ 的卷积代数性质 Convolution Algebra Property of $L^1$**：若 $f,g\in L^1(\mathbb{R}^n)$，则 $f*g\in L^1(\mathbb{R}^n)$，且
> $$
> \|f*g\|_1\leq\|f\|_1\|g\|_1.
> $$
> 此外，几乎处处有定义的卷积函数可取连续代表元，并在无穷远处趋于 $0$。
>
> **证明思路**：范数估计是 Young 不等式在 $p=q=r=1$ 的情形。连续性与消失性可先对紧支撑连续函数逼近，再用 Young 不等式控制逼近误差。

<!-- convolution_differentiability_theorem -->
> [!Theorem]
> **卷积的可微性 Differentiability of Convolution**：设 $f\in L^1(\mathbb{R}^n)$，$g\in C^k(\mathbb{R}^n)$，并且对每个多重指标 $\alpha$ 满足 $|\alpha|\leq k$ 时，$D^\alpha g$ 有界且一致连续。则 $f*g\in C^k(\mathbb{R}^n)$，并且对所有 $|\alpha|\leq k$，
> $$
> D^\alpha(f*g)=f*(D^\alpha g).
> $$
>
> **证明思路**：对一阶差商使用
> $$
> \frac{g(x+he_j-y)-g(x-y)}{h},
> $$
> 它逐点收敛于 $\partial_jg(x-y)$，并由 $\|\partial_jg\|_\infty|f(y)|$ 控制。控制收敛定理允许将极限移入积分；高阶导数逐次重复此过程。导函数的连续性由 $D^\alpha g$ 的一致连续性和 $f\in L^1$ 得到。

<!-- mollifier_definition -->
> [!Definition]
> **磨光核 Mollifier**：函数 $\rho\in C_c^\infty(\mathbb{R}^n)$ 若满足
> $$
> \rho\geq0,
> \qquad
> \int_{\mathbb{R}^n}\rho(x)\,dx=1,
> $$
> 则称为磨光核。令
> $$
> \rho_\varepsilon(x)=\varepsilon^{-n}\rho(x/\varepsilon)
> \qquad(\varepsilon>0).
> $$
> 对适当的可积函数 $f$，$f*\rho_\varepsilon$ 是光滑函数，称为 $f$ 的磨光；它是卷积正则化的基本工具。

> **注**：本小节参见 Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 3；Gerald B. Folland, *Real Analysis*, 2nd ed., Section 8.2。
