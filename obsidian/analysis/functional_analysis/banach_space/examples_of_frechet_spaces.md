# 弗雷歇空间的例子

<!-- functional_analysis_smooth_function_space_frechet -->
> [!Example]+
> **光滑函数空间 $C^\infty(\Omega)$ Smooth Function Space**：设 $\Omega\subseteq\mathbb{R}^n$ 为开集，取递增紧集列 $(K_m)_{m\geq1}$，满足 $K_m\subseteq\operatorname{int}K_{m+1}$ 且 $\bigcup_mK_m=\Omega$。对 $f\in C^\infty(\Omega)$ 定义
> $$
> p_m(f)=\max_{|\alpha|\leq m}\sup_{x\in K_m}|\partial^\alpha f(x)|.
> $$
> 则 $(p_m)_{m\geq1}$ 诱导的拓扑使 $C^\infty(\Omega)$ 成为 Fréchet 空间。
>
> **证明思路**：各 $p_m$ 是半范数且分离函数。对每个 $m$ 的导数一致 Cauchy 性给出连续极限；利用逐阶积分可知极限函数仍光滑，故该度量完备。

<!-- functional_analysis_schwartz_space_definition -->
> [!Definition]
> **Schwartz 空间 Schwartz Space**：$\mathcal{S}(\mathbb{R}^n)$ 定义为所有光滑函数 $f\in C^\infty(\mathbb{R}^n)$ 的集合，且对任意多重指标 $\alpha,\beta$ 均有
> $$
> p_{\alpha,\beta}(f)=\sup_{x\in\mathbb{R}^n}|x^\alpha\partial^\beta f(x)|<+\infty.
> $$
> 这些半范数刻画函数及其所有导数在无穷远处的快速衰减。

<!-- functional_analysis_schwartz_space_frechet -->
> [!Theorem]
> **Schwartz 空间是 Fréchet 空间 The Schwartz Space is Fréchet**：以半范数 $(p_{\alpha,\beta})$ 所诱导的拓扑，$\mathcal{S}(\mathbb{R}^n)$ 是 Fréchet 空间。
>
> **证明思路**：多重指标对的集合可数，且这些半范数分离函数。对每个半范数均为 Cauchy 的函数列，其各加权导数一致收敛；极限保留所有加权有界性与光滑性，从而属于 $\mathcal{S}(\mathbb{R}^n)$。

> **注**：Schwartz 空间在 Fourier 变换下保持不变，是分布理论和偏微分方程中的基本测试函数空间。