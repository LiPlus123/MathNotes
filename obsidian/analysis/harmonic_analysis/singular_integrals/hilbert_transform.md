# Hilbert 变换

## 定义与 Fourier 乘子

<!-- singular_hilbert_transform_definition -->
> [!Definition]
> **Hilbert 变换 Hilbert Transform**：对 $f\in\mathcal{S}(\mathbb{R})$，定义
> $$
> Hf(x)=\frac{1}{\pi}\operatorname{p.v.}\int_{\mathbb{R}}\frac{f(y)}{x-y}\,dy
> =\lim_{\varepsilon\to0^+}\frac{1}{\pi}\int_{|x-y|>\varepsilon}\frac{f(y)}{x-y}\,dy.
> $$
> 该极限的奇异性由核 $1/(\pi x)$ 的奇对称消去控制；$H$ 随后由稠密性延拓到适当的 $L^p$ 空间。

<!-- singular_hilbert_fourier_multiplier -->
> [!Theorem]
> **Hilbert 变换的 Fourier 乘子 Hilbert Transform Multiplier**：在 Fourier 变换约定
> $$
> \widehat f(\xi)=\int_{\mathbb{R}}f(x)e^{-2\pi i x\xi}\,dx
> $$
> 下，对 $f\in\mathcal{S}(\mathbb{R})$ 有
> $$
> \widehat{Hf}(\xi)=-i\operatorname{sgn}(\xi)\widehat f(\xi),
> $$
> 其中 $\operatorname{sgn}(\xi)=1$（$\xi>0$）、$-1$（$\xi<0$）及 $0$（$\xi=0$）。
>
> **证明思路**：将主值核视为温和分布，利用其奇性计算 Fourier 变换；所得乘子在正、负频率半轴上分别为 $-i$ 与 $i$。

## 有界性与端点

<!-- singular_hilbert_l2_isometry -->
> [!Theorem]
> **$L^2$ 等距性 Hilbert Transform $L^2$ Isometry**：$H$ 唯一地延拓为 $L^2(\mathbb{R})$ 上的有界算子，并满足
> $$
> \|Hf\|_2=\|f\|_2,
> \qquad H^2f=-f.
> $$
>
> **证明思路**：由 Plancherel 定理及 $|-i\operatorname{sgn}(\xi)|=1$ 几乎处处得到第一式；乘子平方为 $-1$ 得到第二式。

<!-- singular_hilbert_lp_boundedness -->
> [!Theorem]
> **M. Riesz 定理 M. Riesz Theorem**：对每个 $1<p<+\infty$，Hilbert 变换唯一地延拓为 $L^p(\mathbb{R})$ 上的有界线性算子：
> $$
> \|Hf\|_p\leq C_p\|f\|_p.
> $$
> 此外，$H$ 具有弱 $(1,1)$ 型：存在常数 $C$，使任意 $f\in L^1(\mathbb{R})$ 与 $\lambda>0$ 满足
> $$
> |\{x:|Hf(x)|>\lambda\}|\leq\frac{C}{\lambda}\|f\|_1.
> $$
>
> **证明思路**：主值核满足 Calderón-Zygmund 核估计。以 Calderón-Zygmund 分解证明弱型估计，再与 $L^2$ 有界性插值；对偶性给出全部 $p$ 的范围。

<!-- singular_cotlar_identity -->
> [!Theorem]
> **Cotlar 恒等式 Cotlar Identity**：若 $f$ 与 $Hf$ 足够良好使下式有意义，则
> $$
> H(fHf)=\frac{1}{2}\bigl((Hf)^2-f^2\bigr).
> $$
> 它表明 Hilbert 变换的解析投影结构可将某些非线性表达式化为代数恒等式。
>
> **证明思路**：令 $P_+=(I+iH)/2$。其 Fourier 乘子是正频率投影；利用 $P_+$ 的乘法封闭性并比较实部与虚部，得到该恒等式。

> **来源**：Elias M. Stein, *Singular Integrals and Differentiability Properties of Functions*, Chapters II--III；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapters 4--5。
