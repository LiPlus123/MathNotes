# 卷积与 Fourier 变换

## 卷积定理

<!-- convolution_l1_definition -->
> [!Definition]
> **$L^1$ 卷积 Convolution on $L^1$**：若 $f,g\in L^1(\mathbb{R}^n)$，定义
> $$
> (f*g)(x)=\int_{\mathbb{R}^n}f(y)g(x-y)\,dy.
> $$
> 则 $f*g\in L^1(\mathbb{R}^n)$，并且
> $$
> \|f*g\|_1\leq\|f\|_1\|g\|_1.
> $$

<!-- convolution_theorem -->
> [!Theorem]
> **卷积定理 Convolution Theorem**：若 $f,g\in L^1(\mathbb{R}^n)$，则
> $$
> \widehat{f*g}(\xi)=\widehat f(\xi)\widehat g(\xi),
> \qquad \xi\in\mathbb{R}^n.
> $$
>
> **证明思路**：将卷积代入 Fourier 变换定义。由 Tonelli-Fubini 定理交换积分次序，然后作变量替换 $z=x-y$，使二重积分分解为两个 Fourier 积分之积。

<!-- product_transform_formula -->
> [!Theorem]
> **乘积的 Fourier 变换 Fourier Transform of a Product**：若 $f,g\in L^1(\mathbb{R}^n)$ 且 $\widehat f,\widehat g\in L^1(\mathbb{R}^n)$，则
> $$
> \widehat{fg}=\widehat f*\widehat g.
> $$
>
> **证明思路**：对 $\widehat f*\widehat g$ 使用反演公式，将其中一个 Fourier 反变换代入，再以 Fubini 定理交换积分，即得到 $fg$ 的 Fourier 变换。

## 逼近恒等元

<!-- approximation_of_identity_definition -->
> [!Definition]
> **逼近恒等元 Approximation of Identity**：函数族 $(\varphi_\varepsilon)_{\varepsilon>0}\subset L^1(\mathbb{R}^n)$ 称为逼近恒等元，若
> $$
> \int_{\mathbb{R}^n}\varphi_\varepsilon(x)\,dx=1,
> \qquad \sup_{\varepsilon>0}\|\varphi_\varepsilon\|_1<+\infty,
> $$
> 且对每个 $\delta>0$，
> $$
> \lim_{\varepsilon\to0^+}\int_{|x|\geq\delta}|\varphi_\varepsilon(x)|\,dx=0.
> $$

<!-- approximation_of_identity_convergence -->
> [!Theorem]
> **逼近恒等元的收敛性 Convergence of Approximate Identities**：若 $(\varphi_\varepsilon)$ 是逼近恒等元，则对 $1\leq p<+\infty$ 和 $f\in L^p(\mathbb{R}^n)$，有
> $$
> \|f*\varphi_\varepsilon-f\|_p\longrightarrow0.
> $$
> 若 $f$ 有界且一致连续，并且 $\|\varphi_\varepsilon\|_1=1$，则收敛也在一致范数下成立。
>
> **证明思路**：将卷积误差写为平移差 $f(\cdot-y)-f(\cdot)$ 的加权积分。小 $y$ 区域由平移在 $L^p$ 中的连续性控制，远区由核质量消失及 Young 不等式控制。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 1；Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Chapter 8。