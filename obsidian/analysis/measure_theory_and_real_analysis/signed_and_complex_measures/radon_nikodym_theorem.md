# Radon-Nikodym 定理

## 绝对连续与奇异

<!-- absolute_continuity_of_measures_definition -->
> [!Definition]
> **测度的绝对连续 Absolute Continuity of Measures**：设 $\nu$ 与 $\mu$ 是 $(X,\mathcal{A})$ 上的正测度。若对每个 $E\in\mathcal{A}$，
> $$
> \mu(E)=0\ \Longrightarrow\ \nu(E)=0,
> $$
> 则称 $\nu$ 关于 $\mu$ 绝对连续，记为
> $$
> \nu\ll\mu.
> $$

<!-- singularity_of_measures_definition -->
> [!Definition]
> **测度的奇异性 Mutual Singularity of Measures**：设 $\nu$ 与 $\mu$ 是 $(X,\mathcal{A})$ 上的正测度。若存在 $S\in\mathcal{A}$，使得
> $$
> \nu(S^c)=0,
> \qquad
> \mu(S)=0,
> $$
> 则称 $\nu$ 与 $\mu$ 互相奇异，记为
> $$
> \nu\perp\mu.
> $$
> 这表示两测度可集中在两个不交的可测部分上。

<!-- absolute_continuity_and_singularity_example -->
> [!Example]+
> **绝对连续与奇异的例子 Examples of Absolute Continuity and Singularity**：在 $\mathbb{R}$ 上，若
> $$
> \nu(E)=\int_Eg\,dm
> $$
> 其中 $g\geq0$ 可测，则 $\nu\ll m$。另一方面，Dirac 测度 $\delta_0$ 与 Lebesgue 测度 $m$ 奇异：取 $S=\{0\}$，则 $m(S)=0$ 而 $\delta_0(S^c)=0$。

## Radon-Nikodym 导数与 Lebesgue 分解

<!-- radon_nikodym_theorem -->
> [!Theorem]
> **Radon-Nikodym 定理 Radon-Nikodym Theorem**：设 $\mu$ 与 $\nu$ 是 $(X,\mathcal{A})$ 上的 $\sigma$ 有限正测度，且
> $$
> \nu\ll\mu.
> $$
> 则存在 $\mu$-可测函数 $f:X\to[0,+\infty]$，使得对所有 $E\in\mathcal{A}$，
> $$
> \nu(E)=\int_Ef\,d\mu.
> $$
> 该函数在 $\mu$-几乎处处意义下唯一，记作
> $$
> f=\frac{d\nu}{d\mu}.
> $$
>
> **证明思路**：先在有限测度情形中，在所有由 $\mu$-可积函数给出的、且对应测度不超过 $\nu$ 的密度中取极大元；利用极大性证明剩余部分为零。再用 $\sigma$ 有限分割将一般情形归约到有限测度空间，并在各部分拼接密度。

<!-- radon_nikodym_chain_rule -->
> [!Proposition]
> **Radon-Nikodym 导数的链式法则 Chain Rule for Radon-Nikodym Derivatives**：设 $\lambda,\nu,\mu$ 是 $\sigma$ 有限正测度，且
> $$
> \lambda\ll\nu\ll\mu.
> $$
> 则
> $$
> \frac{d\lambda}{d\mu}
> =\frac{d\lambda}{d\nu}\frac{d\nu}{d\mu}
> \quad\text{$\mu$-a.e.}
> $$
>
> **证明思路**：对任意可测集 $E$，连续两次使用 Radon-Nikodym 表示，将 $\lambda(E)$ 写为关于 $\mu$ 的积分；由导数的几乎处处唯一性得到等式。

<!-- lebesgue_decomposition_theorem -->
> [!Theorem]
> **Lebesgue 分解定理 Lebesgue Decomposition Theorem**：设 $\mu$ 与 $\nu$ 是 $(X,\mathcal{A})$ 上的 $\sigma$ 有限正测度。则存在唯一的正测度 $\nu_{\mathrm{ac}}$ 与 $\nu_{\mathrm{s}}$，使得
> $$
> \nu=\nu_{\mathrm{ac}}+\nu_{\mathrm{s}},
> \qquad
> \nu_{\mathrm{ac}}\ll\mu,
> \qquad
> \nu_{\mathrm{s}}\perp\mu.
> $$
> 且由 Radon-Nikodym 定理，存在 $f\geq0$ 使
> $$
> \nu_{\mathrm{ac}}(E)=\int_Ef\,d\mu
> $$
> 对每个 $E\in\mathcal{A}$ 成立。
>
> **证明思路**：在所有绝对连续且不超过 $\nu$ 的测度中构造极大元 $\nu_{\mathrm{ac}}$；证明余量 $\nu-\nu_{\mathrm{ac}}$ 若非奇异，则仍可抽取非零绝对连续部分，从而与极大性矛盾。唯一性由绝对连续测度和奇异测度同时具备两种性质时必为零测度推出。

<!-- radon_nikodym_derivative_example -->
> [!Example]+
> **Lebesgue 测度下的 Radon-Nikodym 导数 Radon-Nikodym Derivative with Respect to Lebesgue Measure**：设
> $$
> \nu(E)=\int_E3x^2\,dm
> $$
> 对所有 Lebesgue 可测集 $E\subseteq[0,1]$ 成立。则 $\nu\ll m$，且
> $$
> \frac{d\nu}{dm}(x)=3x^2
> \quad\text{$m$-a.e. on }[0,1].
> $$
> 若令 $\widetilde{\nu}=\nu+\delta_0$，则相对于 $m$ 的 Lebesgue 分解为 $\widetilde{\nu}_{\mathrm{ac}}=\nu$ 与 $\widetilde{\nu}_{\mathrm{s}}=\delta_0$。

<!-- radon_nikodym_integral_change_of_measure -->
> [!Corollary]
> **测度变换公式 Change-of-Measure Formula**：在 Radon-Nikodym 定理的条件下，若 $h\geq0$ 可测或 $h\in L^1(\nu)$，则
> $$
> \int_Xh\,d\nu
> =\int_Xh\frac{d\nu}{d\mu}\,d\mu.
> $$
>
> **证明思路**：先对示性函数由导数定义成立，再由非负简单函数的线性性推广，并通过单调收敛定理或正负部分分解推广到一般函数。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Sections 3.2--3.3；Donald L. Cohn, *Measure Theory*, 2nd ed., Chapter 6。
