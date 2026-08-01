# Besov 空间与 Triebel-Lizorkin 空间

## 由二进频带定义的函数空间

<!-- lp_besov_space_definition -->
> [!Definition]
> **非齐次 Besov 空间 Inhomogeneous Besov Space**：对 $s\in\mathbb{R}$、$0<p,q\leq+\infty$，定义
> $$
> \|f\|_{B^s_{p,q}}
> =\|\Delta_{-1}f\|_p+
> \left(\sum_{j=0}^{+\infty}(2^{js}\|\Delta_jf\|_p)^q\right)^{1/q},
> $$
> 其中 $q=+\infty$ 时以 $\sup_{j\geq0}$ 代替求和。满足该量有限的温和分布构成 $B^s_{p,q}(\mathbb{R}^n)$。

<!-- lp_triebel_lizorkin_space_definition -->
> [!Definition]
> **非齐次 Triebel-Lizorkin 空间 Inhomogeneous Triebel-Lizorkin Space**：对 $s\in\mathbb{R}$、$0<p<+\infty$、$0<q\leq+\infty$，定义
> $$
> \|f\|_{F^s_{p,q}}
> =\|\Delta_{-1}f\|_p+
> \left\|\left(\sum_{j=0}^{+\infty}(2^{js}|\Delta_jf|)^q\right)^{1/q}\right\|_p,
> $$
> 并对 $q=+\infty$ 作通常的上确界解释。与 Besov 范数不同，$F^s_{p,q}$ 先在每一点对频带作 $\ell^q$ 聚合，再取 $L^p$ 范数。

<!-- lp_homogeneous_function_spaces_note -->
> [!Definition]
> **齐次 Besov 与 Triebel-Lizorkin 空间 Homogeneous Besov and Triebel-Lizorkin Spaces**：用齐次投影 $\dot\Delta_j$（$j\in\mathbb{Z}$）并去除低频块，可定义 $\dot B^s_{p,q}$ 与 $\dot F^s_{p,q}$。这些空间通常定义在 $\mathcal{S}'/\mathcal{P}$ 上，其中 $\mathcal{P}$ 是多项式空间。

<!-- lp_sobolev_holder_special_cases -->
> [!Theorem]
> **Sobolev 与 Hölder 空间作为特例 Sobolev and Holder Spaces as Special Cases**：对 $1<p<+\infty$ 及 $s\in\mathbb{R}$，Bessel 势 Sobolev 空间满足
> $$
> H^{s,p}(\mathbb{R}^n)=F^s_{p,2}(\mathbb{R}^n).
> $$
> 特别地 $H^s=F^s_{2,2}$。若 $s>0$ 非整数，则 Hölder-Zygmund 空间满足
> $$
> C^s(\mathbb{R}^n)=B^s_{\infty,\infty}(\mathbb{R}^n)
> $$
> （等价范数意义下）。
>
> **证明思路**：Bessel 势乘子 $(1+4\pi^2|\xi|^2)^{s/2}$ 在第 $j$ 个频带上大小约为 $2^{js}$，再应用平方函数估计。Hölder 有限差分与二进频带的平滑度量等价。

<!-- lp_function_space_embeddings -->
> [!Theorem]
> **基本嵌入定理 Basic Embeddings**：若 $s_1>s_2$，则在相同 $p,q$ 下
> $$
> B^{s_1}_{p,q}\hookrightarrow B^{s_2}_{p,q},
> \qquad
> F^{s_1}_{p,q}\hookrightarrow F^{s_2}_{p,q}.
> $$
> 若 $1\leq p_1\leq p_2\leq+\infty$ 且
> $$
> s_1-\frac{n}{p_1}=s_2-\frac{n}{p_2},
> $$
> 则存在相应的 Sobolev 型嵌入
> $$
> B^{s_1}_{p_1,q}\hookrightarrow B^{s_2}_{p_2,q}.
> $$
> 更精细的端点嵌入会涉及第二指标 $q$。
>
> **证明思路**：第一组嵌入由 $2^{j(s_2-s_1)}$ 的可和或有界衰减给出。第二组对每个频带应用 Bernstein 不等式，再按 Besov 序列范数求和。

> **来源**：Hans Triebel, *Theory of Function Spaces*, Chapters 2--3；Haim Brezis, *Functional Analysis, Sobolev Spaces and Partial Differential Equations*, 关于 Sobolev 空间的基础章节。
