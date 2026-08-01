# 可分性与自反性

## 可分性

<!-- functional_analysis_separable_banach_space_definition -->
> [!Definition]
> **可分 Banach 空间 Separable Banach Space**：若 Banach 空间 $X$ 存在可数稠密子集，则称 $X$ 为**可分的 Separable**。

<!-- functional_analysis_ell_p_separable -->
> [!Theorem]
> **$\ell^p$ 的可分性 Separability of $\ell^p$**：对 $1\leq p<+\infty$，$\ell^p$ 是可分 Banach 空间；$\ell^\infty$ 不可分。
>
> **证明思路**：有限支撑且坐标均为有理数（复情形取实部和虚部均有理）的序列构成 $\ell^p$ 的可数稠密子集。对每个 $A\subseteq\mathbb{N}$，其示性序列 $\mathbf{1}_A$ 属于 $\ell^\infty$，且不同的 $A,B$ 满足 $\|\mathbf{1}_A-\mathbf{1}_B\|_\infty=1$；由不可数的两两分离集可知 $\ell^\infty$ 不可分。

<!-- functional_analysis_lp_separable -->
> [!Theorem]
> **Lebesgue 空间中 $L^p$ 的可分性 Separability of $L^p$**：对 Lebesgue 测度空间 $\mathbb{R}^n$，当 $1\leq p<+\infty$ 时，$L^p(\mathbb{R}^n)$ 可分；$L^\infty([0,1])$ 不可分。
>
> **证明思路**：以有理端点长方体的有限并上的有理值简单函数逼近 $L^p$ 函数，得到可数稠密子集。另一方面，族 $\{\mathbf{1}_{[0,t]}:0<t<1\}$ 不可数，且当 $s\ne t$ 时 $\|\mathbf{1}_{[0,s]}-\mathbf{1}_{[0,t]}\|_\infty=1$，故 $L^\infty([0,1])$ 不可分。

## 自反性

<!-- functional_analysis_canonical_embedding_definition -->
> [!Definition]
> **典范嵌入 Canonical Embedding**：设 $X$ 是 Banach 空间，$X^*$ 是其连续对偶空间，$X^{**}=(X^*)^*$。定义线性映射 $J:X\to X^{**}$ 为
> $$
> (Jx)(f)=f(x)
> \qquad(x\in X,\ f\in X^*).
> $$
> 称 $J$ 为从 $X$ 到二次对偶空间的典范嵌入。

<!-- functional_analysis_reflexive_space_definition -->
> [!Definition]
> **自反 Banach 空间 Reflexive Banach Space**：若典范嵌入 $J:X\to X^{**}$ 是满射，则称 Banach 空间 $X$ 为**自反的 Reflexive**。

<!-- functional_analysis_milman_pettis_theorem -->
> [!Theorem]
> **Milman-Pettis 定理 Milman-Pettis Theorem**：每个一致凸 Banach 空间都是自反空间。
>
> **证明思路**：一致凸性使闭单位球具有足够强的几何凸性；结合 Hahn-Banach 分离与弱紧性判别，可推出闭单位球弱紧，从而得到典范嵌入满射。

<!-- functional_analysis_lp_reflexive -->
> [!Corollary]
> **$\ell^p$ 与 $L^p$ 的自反性 Reflexivity of $\ell^p$ and $L^p$**：对 $1<p<+\infty$，$\ell^p$ 与任意测度空间上的 $L^p(\mu)$ 都是自反 Banach 空间。
>
> **证明思路**：这些空间在 $1<p<+\infty$ 时一致凸，故由 Milman-Pettis 定理自反。端点空间 $\ell^1$、$\ell^\infty$、$L^1(\mu)$ 与 $L^\infty(\mu)$ 一般并不自反。

<!-- functional_analysis_reflexivity_weak_compactness -->
> [!Theorem]
> **自反性与弱紧性 Reflexivity and Weak Compactness**：Banach 空间 $X$ 自反，当且仅当其闭单位球
> $$
> B_X=\{x\in X:\|x\|\leq1\}
> $$
> 在弱拓扑下紧。
>
> **证明思路**：Banach-Alaoglu 定理给出 $X^{**}$ 的闭单位球在弱*拓扑下紧。典范嵌入将 $B_X$ 等距嵌入其中；$J$ 满射当且仅当该嵌入的像覆盖相应单位球，这等价于 $B_X$ 的弱紧性。

> **注**：在椭圆型 PDE 的弱解理论中，反射性常用于从有界近似解列中抽取弱收敛子列；再结合弱下半连续性可通过极限得到解。