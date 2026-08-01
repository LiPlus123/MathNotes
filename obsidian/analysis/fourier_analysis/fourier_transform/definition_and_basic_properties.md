# 定义与基本性质

## $L^1$ 函数的 Fourier 变换

<!-- fourier_transform_l1_definition -->
> [!Definition]
> **$L^1$ Fourier 变换 Fourier Transform on $L^1$**：设 $f\in L^1(\mathbb{R}^n)$。定义 $f$ 的 Fourier 变换为
> $$
> \widehat f(\xi)=\int_{\mathbb{R}^n}f(x)e^{-2\pi i x\cdot\xi}\,dx,
> \qquad \xi\in\mathbb{R}^n.
> $$
> 积分绝对收敛，且
> $$
> \|\widehat f\|_\infty\leq\|f\|_1.
> $$

<!-- fourier_transform_l1_continuity -->
> [!Theorem]
> **Fourier 变换的连续性 Continuity of the Fourier Transform**：若 $f\in L^1(\mathbb{R}^n)$，则 $\widehat f$ 是有界一致连续函数。
>
> **证明思路**：有界性由积分的三角不等式得到。对 $h\to0$，将 $\widehat f(\xi+h)-\widehat f(\xi)$ 写成 $f(x)e^{-2\pi i x\cdot\xi}(e^{-2\pi i x\cdot h}-1)$ 的积分；支配收敛定理给出收敛，且估计与 $\xi$ 无关，故为一致连续。

## 基本运算

<!-- fourier_transform_linearity -->
> [!Theorem]
> **线性性 Linearity**：若 $f,g\in L^1(\mathbb{R}^n)$ 且 $a,b\in\mathbb{C}$，则
> $$
> \widehat{af+bg}=a\widehat f+b\widehat g.
> $$
>
> **证明思路**：由 Lebesgue 积分的线性性直接得到。

<!-- fourier_transform_translation -->
> [!Theorem]
> **平移性质 Translation**：对 $a\in\mathbb{R}^n$，若 $\tau_af(x)=f(x-a)$，则
> $$
> \widehat{\tau_af}(\xi)=e^{-2\pi i a\cdot\xi}\widehat f(\xi).
> $$
>
> **证明思路**：在定义积分中作变量替换 $y=x-a$，并将指数因子分离。

<!-- fourier_transform_scaling -->
> [!Theorem]
> **缩放性质 Scaling**：若 $A\in GL_n(\mathbb{R})$ 且 $g(x)=f(Ax)$，则
> $$
> \widehat g(\xi)=|\det A|^{-1}\widehat f(A^{-\mathsf T}\xi).
> $$
> 特别地，对 $\lambda\ne0$，若 $g(x)=f(\lambda x)$，则
> $$
> \widehat g(\xi)=|\lambda|^{-n}\widehat f(\xi/\lambda).
> $$
>
> **证明思路**：在积分中作线性变量替换 $y=Ax$，并用 $x\cdot\xi=y\cdot(A^{-\mathsf T}\xi)$ 改写相位。

<!-- fourier_transform_modulation -->
> [!Theorem]
> **调制性质 Modulation**：对 $a\in\mathbb{R}^n$，若 $g(x)=e^{2\pi i a\cdot x}f(x)$，则
> $$
> \widehat g(\xi)=\widehat f(\xi-a).
> $$
>
> **证明思路**：将调制因子与变换核相乘，合并指数得到频率变量的平移。

<!-- fourier_transform_conjugate_symmetry -->
> [!Theorem]
> **共轭对称性 Conjugate Symmetry**：若 $f\in L^1(\mathbb{R}^n)$，则
> $$
> \widehat{\overline f}(\xi)=\overline{\widehat f(-\xi)}.
> $$
> 因此，若 $f$ 为实值函数，则 $\widehat f(-\xi)=\overline{\widehat f(\xi)}$。
>
> **证明思路**：对 Fourier 变换的定义式取共轭，再比较指数符号即可。

<!-- riemann_lebesgue_lemma_euclidean -->
> [!Theorem]
> **Riemann-Lebesgue 引理 Riemann-Lebesgue Lemma**：若 $f\in L^1(\mathbb{R}^n)$，则
> $$
> \lim_{|\xi|\to\infty}\widehat f(\xi)=0.
> $$
>
> **证明思路**：先对紧支撑阶梯函数或光滑紧支撑函数用振荡积分估计证明结论，再利用这类函数在 $L^1(\mathbb{R}^n)$ 中稠密及 $\|\widehat f\|_\infty\leq\|f\|_1$ 推广到一般情形。

> **注**：以下各小节均采用本节的 $2\pi$ 归一化；不同归一化下的常数与缩放因子会相应改变。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 1。