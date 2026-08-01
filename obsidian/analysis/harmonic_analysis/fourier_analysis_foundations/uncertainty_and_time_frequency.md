# 不确定性原理与时频分析

## 时频局部化的限制

<!-- heisenberg_uncertainty_principle_harmonic -->
> [!Theorem]
> **Heisenberg 不确定性原理 Heisenberg Uncertainty Principle**：设 $f\in L^2(\mathbb{R}^n)$，$xf\in L^2(\mathbb{R}^n)$、$\xi\widehat f\in L^2(\mathbb{R}^n)$，且 $\|f\|_2=1$。则
> $$
> \left(\int_{\mathbb{R}^n}|x|^2|f(x)|^2\,dx\right)
> \left(\int_{\mathbb{R}^n}|\xi|^2|\widehat f(\xi)|^2\,d\xi\right)
> \geq\frac{n^2}{16\pi^2}.
> $$
> 等号恰由适当的平移、调制和伸缩后的 Gauss 函数取得。
>
> **证明思路**：对 $x_jf$ 与 $\partial_jf$ 积分分部，并使用 Cauchy-Schwarz 不等式；再由 $\widehat{\partial_jf}=2\pi i\xi_j\widehat f$ 和 Plancherel 定理转换为频率矩。

<!-- paley_wiener_principle -->
> [!Theorem]
> **Paley-Wiener 原理 Paley-Wiener Principle**：紧支撑与 Fourier 变换的解析延拓相互对应：若 $f\in C_c^\infty(\mathbb{R}^n)$ 的支撑包含于闭球 $\{|x|\leq R\}$，则 $\widehat f$ 延拓为 $\mathbb{C}^n$ 上整函数，并满足对每个 $N$ 存在 $C_N$ 使
> $$
> |\widehat f(z)|\leq C_N(1+|z|)^{-N}e^{2\pi R|\operatorname{Im}z|}.
> $$
> 反之，满足相应指数型增长估计的整函数是某个紧支撑光滑函数的 Fourier 变换。
>
> **证明思路**：正向由紧支撑使复指数积分绝对收敛且可逐项微分；反向通过复变量移线和增长估计证明反变换在支撑外为零。

## 短时 Fourier 变换与 Gabor 系统

<!-- short_time_fourier_transform_definition -->
> [!Definition]
> **短时 Fourier 变换 Short-Time Fourier Transform**：给定非零窗口 $g\in L^2(\mathbb{R}^n)$，对 $f\in L^2(\mathbb{R}^n)$ 定义
> $$
> V_gf(x,\xi)=\int_{\mathbb{R}^n}f(t)\overline{g(t-x)}e^{-2\pi i\xi\cdot t}\,dt.
> $$
> 它记录 $f$ 在时刻（位置）$x$ 附近的局部频率 $\xi$。

<!-- moyal_identity -->
> [!Theorem]
> **Moyal 恒等式 Moyal Identity**：若 $f,h,g,k\in L^2(\mathbb{R}^n)$，则
> $$
> \int_{\mathbb{R}^{2n}}V_gf(x,\xi)\overline{V_kh(x,\xi)}\,dx\,d\xi
> =\langle f,h\rangle_{L^2}\overline{\langle g,k\rangle_{L^2}}.
> $$
> 特别地，$\|V_gf\|_{L^2(\mathbb{R}^{2n})}=\|f\|_2\|g\|_2$。
>
> **证明思路**：固定 $x$ 后对频率变量应用 Plancherel 定理，再对 $x$ 作变量替换并使用 Fubini 定理。

<!-- gabor_system_definition -->
> [!Definition]
> **Gabor 系统 Gabor System**：对 $a,b>0$ 与窗口 $g\in L^2(\mathbb{R}^n)$，集合
> $$
> \mathcal{G}(g,a,b)=\{e^{2\pi i bm\cdot t}g(t-an):m,n\in\mathbb{Z}^n\}
> $$
> 称为由 $g$ 生成的 Gabor 系统。若存在 $0<A\leq B<+\infty$，使任意 $f\in L^2$ 满足
> $$
> A\|f\|_2^2\leq\sum_{m,n\in\mathbb{Z}^n}|\langle f,e^{2\pi i bm\cdot(\cdot)}g(\cdot-an)\rangle|^2\leq B\|f\|_2^2,
> $$
> 则称其为 Gabor 框架。

<!-- time_frequency_localization_tradeoff -->
> [!Theorem]
> **时频局部化权衡 Time-Frequency Localization Trade-off**：临界密度 $ab=1$ 时，若 $\mathcal{G}(g,a,b)$ 是 $L^2(\mathbb{R})$ 的 Riesz 基，则 $g$ 不可能同时具有有限的时间二阶矩与频率二阶矩；即至少一个量
> $$
> \int_{\mathbb{R}}t^2|g(t)|^2\,dt,
> \qquad
> \int_{\mathbb{R}}\xi^2|\widehat g(\xi)|^2\,d\xi
> $$
> 发散。
>
> **证明思路**：这是 Balian-Low 定理。其证明将临界格点上的 Riesz 基条件转化为 Zak 变换的周期性与准周期性条件，再与足够平滑、非退化的全局性质矛盾。

> **来源**：Karlheinz Gröchenig, *Foundations of Time-Frequency Analysis*, Chapters 1, 3, and 8；Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 2。
