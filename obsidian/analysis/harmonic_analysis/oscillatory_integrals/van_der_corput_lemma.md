# van der Corput 引理

## 一维导数测试

<!-- oscillatory_van_der_corput_higher_order -->
> [!Theorem]
> **van der Corput 高阶导数引理 van der Corput Lemma**：设 $I\subseteq\mathbb{R}$ 为区间，$k\geq2$，$\phi\in C^k(I;\mathbb{R})$ 满足
> $$
> |\phi^{(k)}(x)|\geq1\qquad(x\in I).
> $$
> 若 $a\in C^1_c(I)$，则对 $\lambda>0$，
> $$
> \left|\int_Ie^{i\lambda\phi(x)}a(x)\,dx\right|
> \leq C_k\lambda^{-1/k}
> \left(\|a\|_\infty+\int_I|a'(x)|\,dx\right).
> $$
> 常数 $C_k$ 仅依赖于 $k$。
>
> **证明思路**：按 $|\phi'|$ 的大小划分区间。在导数小的区域，高阶导数下界控制其长度；在导数大的区域，对相位积分分部。对至多有限个单调子区间求和得到结论。

<!-- oscillatory_van_der_corput_first_derivative -->
> [!Theorem]
> **一次导数测试 First Derivative Test**：设 $\phi' $ 在区间 $I$ 上单调，且 $|\phi'(x)|\geq\sigma>0$。若 $a\in C^1_c(I)$，则
> $$
> \left|\int_Ie^{i\lambda\phi(x)}a(x)\,dx\right|
> \leq C(\lambda\sigma)^{-1}
> \left(\|a\|_\infty+\int_I|a'(x)|\,dx\right).
> $$
>
> **证明思路**：利用 $e^{i\lambda\phi}=(i\lambda\phi')^{-1}\frac{d}{dx}e^{i\lambda\phi}$ 分部积分。$\phi'$ 的单调性保证 $1/\phi'$ 的全变差由其端点值控制。

<!-- oscillatory_van_der_corput_second_derivative -->
> [!Corollary]
> **二次导数测试 Second Derivative Test**：若 $\phi\in C^2(I)$ 且 $|\phi''(x)|\geq\sigma>0$，则
> $$
> \left|\int_Ie^{i\lambda\phi(x)}a(x)\,dx\right|
> \leq C(\lambda\sigma)^{-1/2}
> \left(\|a\|_\infty+\int_I|a'(x)|\,dx\right).
> $$
>
> **证明思路**：这是高阶导数引理的 $k=2$ 情形。连续且不消失的 $\phi''$ 固定符号，因而 $\phi'$ 单调；按 $|\phi'|$ 的阈值分区可直接得到平方根衰减。

<!-- oscillatory_vdc_scaled_form -->
> [!Proposition]
> **缩放形式 Scaled Form**：若 $|\phi^{(k)}|\geq\sigma>0$，则对 $k\geq2$，
> $$
> \left|\int_Ie^{i\lambda\phi(x)}a(x)\,dx\right|
> \leq C_k(\lambda\sigma)^{-1/k}
> \left(\|a\|_\infty+\int_I|a'(x)|\,dx\right).
> $$
> 因此相位的第 $k$ 阶导数决定了典型的衰减幂 $\lambda^{-1/k}$。
>
> **证明思路**：将相位替换为 $\sigma^{-1}\phi$，并将振荡参数替换为 $\lambda\sigma$，再应用高阶导数引理。

<!-- oscillatory_vdc_polynomial_example -->
> [!Example]+
> **多项式相位 Polynomial Phase**：取 $\phi(x)=x^k$，$k\geq2$，并令 $a\in C_c^1(\mathbb{R})$。在包含原点的紧区间上，$\phi^{(k)}=k!$，故
> $$
> \left|\int e^{i\lambda x^k}a(x)\,dx\right|
> \lesssim\lambda^{-1/k}.
> $$
> 当振幅在原点非零时，该衰减阶通常是最优的。
>
> **证明思路**：直接应用缩放形式。最优性可由代换 $u=\lambda^{1/k}x$ 观察主贡献来自长度约为 $\lambda^{-1/k}$ 的临界邻域。

<!-- oscillatory_vdc_application_note -->
> [!Proposition]
> **振荡 Fourier 积分的应用 Application to Oscillatory Fourier Integrals**：若积分核含有一维相位 $\phi(t)$ 且某阶导数在支集上有下界，则 van der Corput 引理给出核随频率参数的衰减。该衰减是色散估计、曲线 Fourier 变换和指数和估计的基本输入。
>
> **证明思路**：将其余变量视为参数，逐纤维应用导数测试；再结合积分、Plancherel 或插值把核估计提升为算子范数估计。

> **来源**：Elias M. Stein, *Harmonic Analysis: Real-Variable Methods, Orthogonality, and Oscillatory Integrals*, Chapter VIII；E. M. Stein and Rami Shakarchi, *Fourier Analysis*, Chapter 8。
