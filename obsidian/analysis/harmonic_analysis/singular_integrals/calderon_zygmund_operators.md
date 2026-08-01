# Calderón-Zygmund 算子

## 标准核与算子

<!-- singular_standard_kernel_definition -->
> [!Definition]
> **标准 Calderón-Zygmund 核 Standard Calderón-Zygmund Kernel**：定义在 $\{(x,y)\in\mathbb{R}^n\times\mathbb{R}^n:x\ne y\}$ 上的函数 $K$ 称为标准核，若存在 $C>0$ 与 $0<\delta\leq1$，使
> $$
> |K(x,y)|\leq\frac{C}{|x-y|^n},
> $$
> 并且当 $|x-x'|\leq|x-y|/2$ 时，
> $$
> |K(x,y)-K(x',y)|\leq C\frac{|x-x'|^\delta}{|x-y|^{n+\delta}},
> $$
> 且对第二变量也满足相同的 Hölder 正则性估计。

<!-- singular_calderon_zygmund_operator_definition -->
> [!Definition]
> **Calderón-Zygmund 算子 Calderón-Zygmund Operator**：设 $T$ 是 $L^2(\mathbb{R}^n)$ 上有界的线性算子。若存在标准核 $K$，使对任意不交支撑的 $f,g\in C_c^\infty(\mathbb{R}^n)$，
> $$
> \langle Tf,g\rangle
> =\iint_{\mathbb{R}^n\times\mathbb{R}^n}K(x,y)f(y)\overline{g(x)}\,dy\,dx,
> $$
> 则称 $T$ 为 Calderón-Zygmund 算子。形式主值表达式
> $$
> Tf(x)=\operatorname{p.v.}\int_{\mathbb{R}^n}K(x,y)f(y)\,dy
> $$
> 需要另行证明存在。

## 有界性定理

<!-- singular_calderon_zygmund_weak_one_one -->
> [!Theorem]
> **Calderón-Zygmund 弱型定理 Calderón-Zygmund Weak-Type Theorem**：设 $T$ 是具有标准核的 $L^2$ 有界 Calderón-Zygmund 算子，则
> $$
> |\{x:|Tf(x)|>\lambda\}|\leq\frac{C}{\lambda}\|f\|_1
> $$
> 对每个 $f\in L^1(\mathbb{R}^n)$ 及 $\lambda>0$ 成立；即 $T$ 从 $L^1$ 映至 $L^{1,\infty}$。
>
> **证明思路**：对 $f$ 在高度 $\lambda$ 作 Calderón-Zygmund 分解 $f=g+b$。良部由 $L^2$ 有界性控制；每个坏块均值为零，核的光滑性将远离其支撑处的贡献化为可求和的衰减量。

<!-- singular_calderon_zygmund_lp_theorem -->
> [!Theorem]
> **Calderón-Zygmund $L^p$ 定理 Calderón-Zygmund $L^p$ Theorem**：在同一假设下，对任意 $1<p<+\infty$，
> $$
> \|Tf\|_p\leq C_{p,T}\|f\|_p.
> $$
>
> **证明思路**：弱 $(1,1)$ 型与 $L^2$ 有界性经 Marcinkiewicz 插值得到 $1<p\leq2$。伴随算子 $T^*$ 的核为 $\overline{K(y,x)}$，也满足同类估计；再由对偶性得到 $p>2$。

<!-- singular_calderon_zygmund_truncations -->
> [!Definition]
> **截断奇异积分 Truncated Singular Integral**：对 $\varepsilon>0$，定义
> $$
> T_\varepsilon f(x)=\int_{|x-y|>\varepsilon}K(x,y)f(y)\,dy.
> $$
> 截断族用于赋予主值积分严格含义。额外的极大截断估计可进一步推出 $T_\varepsilon f$ 几乎处处收敛到 $Tf$。

> **来源**：Elias M. Stein, *Singular Integrals and Differentiability Properties of Functions*, Chapters I--II；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 5。
