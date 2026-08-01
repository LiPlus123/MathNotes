# 不确定性原理

## Heisenberg 不确定性原理

<!-- heisenberg_uncertainty_principle -->
> [!Theorem]
> **Heisenberg 不确定性原理 Heisenberg Uncertainty Principle**：设 $f\in L^2(\mathbb{R}^n)$，并且 $xf\in L^2(\mathbb{R}^n)$ 与 $\xi\widehat f\in L^2(\mathbb{R}^n)$。若 $\|f\|_2=1$，则
> $$
> \left(\int_{\mathbb{R}^n}|x|^2|f(x)|^2\,dx\right)
> \left(\int_{\mathbb{R}^n}|\xi|^2|\widehat f(\xi)|^2\,d\xi\right)
> \geq\frac{n^2}{16\pi^2}.
> $$
> 等号当且仅当 $f$ 是适当平移、调制和缩放后的 Gauss 函数。
>
> **证明思路**：在 Schwartz 函数上对 $x_jf$ 与 $\partial_jf$ 作积分分部，并应用 Cauchy-Schwarz 不等式；再由 $\widehat{\partial_jf}=2\pi i\xi_j\widehat f$ 及 Plancherel 定理转写为频率矩。一般情形通过逼近得到。

<!-- heisenberg_variance_form -->
> [!Corollary]
> **Heisenberg 原理的方差形式 Variance Form of Heisenberg's Principle**：在一维，若 $f\in L^2(\mathbb{R})$、$\|f\|_2=1$，且将 $|f|^2$ 与 $|\widehat f|^2$ 的均值平移至零，则其方差满足
> $$
> \operatorname{Var}_{|f|^2}(x)\,
> \operatorname{Var}_{|\widehat f|^2}(\xi)
> \geq\frac{1}{16\pi^2}.
> $$
>
> **证明思路**：平移和调制不改变相应的中心化方差，将 Heisenberg 不等式应用于中心化后的函数即可。

## Hardy 不确定性原理

<!-- hardy_uncertainty_principle -->
> [!Theorem]
> **Hardy 不确定性原理 Hardy's Uncertainty Principle**：设 $f\in L^2(\mathbb{R})$，并存在常数 $C>0$ 与 $a,b>0$ 使
> $$
> |f(x)|\leq Ce^{-\pi a x^2},
> \qquad
> |\widehat f(\xi)|\leq Ce^{-\pi b\xi^2}.
> $$
> 则：
>
> 1. 若 $ab>1$，则 $f=0$ 几乎处处；
> 2. 若 $ab=1$，则 $f(x)=ce^{-\pi a x^2}$，其中 $c\in\mathbb{C}$；
> 3. 当 $ab<1$ 时，存在非零函数满足上述两个估计。
>
> **证明思路**：将 $f$ 延拓为整函数，并结合 Fourier 反演与 Gauss 衰减控制其在复平面不同方向上的增长。临界情形由 Phragmén-Lindelöf 型论证迫使适当归一化后的整函数为常数。

> **注**：Heisenberg 原理以二阶矩刻画时域和频域的集中程度；Hardy 原理则说明函数及其 Fourier 变换不可能同时具有超过临界 Gauss 速率的衰减。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 2；Gerald B. Folland and Alladi Sitaram, "The Uncertainty Principle: A Mathematical Survey", *Journal of Fourier Analysis and Applications* 3 (1997)。