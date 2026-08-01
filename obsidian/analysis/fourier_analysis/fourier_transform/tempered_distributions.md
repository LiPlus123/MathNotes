# 缓增分布

## 缓增分布与 Fourier 变换

<!-- tempered_distribution_definition -->
> [!Definition]
> **缓增分布 Tempered Distribution**：Schwartz 空间 $\mathcal{S}(\mathbb{R}^n)$ 上的连续线性泛函称为缓增分布。全体缓增分布组成的空间记为 $\mathcal{S}'(\mathbb{R}^n)$。若 $f$ 是至多多项式增长的局部可积函数，则
> $$
> \langle T_f,\varphi\rangle=\int_{\mathbb{R}^n}f(x)\varphi(x)\,dx,
> \qquad \varphi\in\mathcal{S}(\mathbb{R}^n),
> $$
> 定义一个缓增分布 $T_f$。

<!-- fourier_transform_tempered_distribution -->
> [!Definition]
> **缓增分布的 Fourier 变换 Fourier Transform of a Tempered Distribution**：对 $T\in\mathcal{S}'(\mathbb{R}^n)$，定义 $\widehat T\in\mathcal{S}'(\mathbb{R}^n)$ 使得
> $$
> \langle\widehat T,\varphi\rangle
> =\langle T,\widehat\varphi\rangle,
> \qquad \varphi\in\mathcal{S}(\mathbb{R}^n).
> $$
> 该定义与 Schwartz 函数上的 Fourier 变换相容。

<!-- fourier_transform_tempered_distribution_automorphism -->
> [!Theorem]
> **缓增分布空间上的自同构 Fourier Transform on Tempered Distributions**：Fourier 变换是 $\mathcal{S}'(\mathbb{R}^n)$ 上的连续线性双射，且
> $$
> \widehat{\widehat T}=T\circ(-\operatorname{id}).
> $$
> 这里右端表示由 $\varphi(x)\mapsto\varphi(-x)$ 诱导的反射。
>
> **证明思路**：Schwartz 空间上的 Fourier 变换是拓扑自同构，故可取其转置定义对偶空间上的变换；将 Schwartz 空间中的对偶性恒等式转置即可得到二次变换为反射。

## 基本例子

<!-- dirac_distribution_definition -->
> [!Definition]
> **Dirac 分布 Dirac Distribution**：原点处的 Dirac 分布 $\delta_0\in\mathcal{S}'(\mathbb{R}^n)$ 定义为
> $$
> \langle\delta_0,\varphi\rangle=\varphi(0),
> \qquad \varphi\in\mathcal{S}(\mathbb{R}^n).
> $$

<!-- fourier_transform_dirac_distribution -->
> [!Theorem]
> **Dirac 分布的 Fourier 变换 Fourier Transform of the Dirac Distribution**：在缓增分布意义下，
> $$
> \widehat{\delta_0}=1,
> \qquad
> \widehat 1=\delta_0.
> $$
>
> **证明思路**：对任意 Schwartz 函数 $\varphi$，有 $\langle\widehat{\delta_0},\varphi\rangle=\widehat\varphi(0)=\int\varphi$，这正是常函数 $1$ 的作用；第二式由 Fourier 变换二次为反射得到。

<!-- principal_value_distribution_definition -->
> [!Definition]
> **主值分布 Principal Value Distribution**：一维主值分布 $\operatorname{p.v.}\frac{1}{x}$ 定义为
> $$
> \left\langle\operatorname{p.v.}\frac{1}{x},\varphi\right\rangle
> =\lim_{\varepsilon\to0^+}\int_{|x|>\varepsilon}\frac{\varphi(x)}{x}\,dx,
> \qquad \varphi\in\mathcal{S}(\mathbb{R}).
> $$

<!-- fourier_transform_principal_value -->
> [!Theorem]
> **主值分布的 Fourier 变换 Fourier Transform of the Principal Value Distribution**：在当前 $2\pi$ 归一化下，
> $$
> \mathcal{F}\left(\operatorname{p.v.}\frac{1}{x}\right)(\xi)
> =-i\pi\operatorname{sgn}(\xi)
> $$
> 于缓增分布意义成立。
>
> **证明思路**：将主值积分按正负半轴配对为正弦振荡积分，再通过指数阻尼正则化计算其极限；所得函数在分布意义下收敛到 $-i\pi\operatorname{sgn}(\xi)$。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 3；Lars Hörmander, *The Analysis of Linear Partial Differential Operators I*, Chapter 1。