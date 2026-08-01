# Banach 空间的例子

<!-- functional_analysis_finite_dimensional_banach -->
> [!Theorem]
> **有限维赋范空间的完备性 Finite-Dimensional Normed Spaces are Banach**：每个有限维赋范线性空间都是 Banach 空间。
>
> **证明思路**：选定一组基后，空间与 $\mathbb{F}^n$ 线性同构。有限维空间上的任意范数等价，而 $\mathbb{F}^n$ 在标准范数下完备，故原空间完备。

<!-- functional_analysis_ell_p_space_definition -->
> [!Definition]
> **序列空间 $\ell^p$ Sequence Space $\ell^p$**：对 $1\leq p<+\infty$，定义
> $$
> \ell^p=\left\{x=(x_n)_{n\geq1}:\sum_{n=1}^{\infty}|x_n|^p<+\infty\right\},
> \qquad
> \|x\|_p=\left(\sum_{n=1}^{\infty}|x_n|^p\right)^{1/p}.
> $$
> 另定义 $\ell^\infty$ 为所有有界标量序列构成的空间，并令
> $$
> \|x\|_\infty=\sup_{n\geq1}|x_n|.
> $$

<!-- functional_analysis_ell_p_banach -->
> [!Theorem]
> **$\ell^p$ 的完备性 Completeness of $\ell^p$**：对每个 $1\leq p\leq+\infty$，$\ell^p$ 配备相应的 $p$-范数是 Banach 空间。
>
> **证明思路**：$\ell^p$ 中的柯西列逐坐标收敛。利用 Fatou 引理或 Minkowski 不等式控制极限与尾项的 $p$-范数，可证明极限仍属于 $\ell^p$ 且原列范数收敛到它；$p=\infty$ 时用一致有界的逐坐标极限处理。

<!-- functional_analysis_lp_banach_example -->
> [!Example]+
> **函数空间 $L^p$ Function Spaces $L^p$**：设 $(\Omega,\mathcal{A},\mu)$ 是测度空间。对 $1\leq p\leq+\infty$，$L^p(\mu)$ 配备范数 $\|\cdot\|_p$ 是 Banach 空间。
>
> **证明思路**：这是 Riesz-Fischer 定理。对 $1\leq p<+\infty$，从柯西列抽取增量范数可和的子列并构造极限；对 $p=\infty$，由本质一致 Cauchy 性得到极限。

<!-- functional_analysis_c_k_banach_example -->
> [!Example]+
> **$C^k$ 空间的完备性 Completeness of $C^k$**：设 $K\subseteq\mathbb{R}^n$ 为紧集的内部闭包，$k\in\mathbb{Z}_{\geq0}$。在 $C^k(K)$ 上定义
> $$
> \|f\|_{C^k}=\max_{|\alpha|\leq k}\|\partial^\alpha f\|_\infty.
> $$
> 则 $C^k(K)$ 是 Banach 空间。
>
> **证明思路**：$C^k$-柯西列的各阶导数都在 $C(K)$ 中一致收敛；极限函数及其各阶导数由逐阶微分的闭性相容，故极限仍在 $C^k(K)$ 中。

> **注**：$C^\infty(\Omega)$ 通常不是单一范数下的 Banach 空间，而是由所有导数半范数给出的 Fréchet 空间。