# $p$-进群的光滑表示

## 紧开不变向量与 Jacquet 模

<!-- local_totally_disconnected_group_definition -->
> [!Definition]
> **全不连通局部紧群 Totally Disconnected Locally Compact Group**：若局部紧 Hausdorff 群 $G$ 的连通分支均为单点，则称 $G$ 全不连通。van Dantzig 定理断言：每个全不连通局部紧群的单位元邻域基由紧开子群组成。$p$-进约化群的点群是典型例子。

<!-- local_smooth_representation_definition -->
> [!Definition]
> **光滑表示 Smooth Representation**：复向量空间 $V$ 上的 $G$-表示 $(\pi,V)$ 称为光滑的，若对每个 $v\in V$，存在紧开子群 $K_v\leq G$ 使
> $$
> \pi(k)v=v\qquad(k\in K_v).
> $$
> 即 $V$ 是各固定向量子空间 $V^K$（$K$ 紧开）的并。

<!-- local_admissible_representation_definition -->
> [!Definition]
> **可容许表示 Admissible Representation**：光滑表示 $V$ 称为可容许的，若对每个紧开子群 $K\leq G$，固定向量空间 $V^K$ 为有限维。此有限性使无限群的表示具有类似有限群表示的可控谱性质。

<!-- local_compact_induction_definition -->
> [!Definition]
> **紧诱导 Compact Induction**：若 $H\leq G$ 是闭子群，$\sigma$ 是 $H$ 的光滑表示，则
> $$
> \operatorname{c\!\text{-}Ind}_H^G\sigma
> $$
> 由局部常值函数 $f:G\to V_\sigma$ 构成，满足 $f(hg)=\sigma(h)f(g)$，并且其支撑在 $H\backslash G$ 上紧。$G$ 通过右平移作用；它是构造超尖表示的重要工具。

<!-- local_jacquet_module_definition -->
> [!Definition]
> **Jacquet 模 Jacquet Module**：设 $P=MN$ 是 $G$ 的抛物子群，$N$ 为其幂零根基。光滑表示 $V$ 的 Jacquet 模定义为 $N$-余不变量
> $$
> V_N=V/\langle\pi(n)v-v:n\in N,\ v\in V\rangle.
> $$
> 它自然带有 Levi 子群 $M$ 的表示，是研究抛物诱导和常数项的基本函子。

<!-- local_parabolic_induction_motivation -->
> [!Proposition]
> **抛物诱导与 Jacquet 函子的伴随关系 Parabolic Induction and Jacquet Functor**：在适当归一化下，Jacquet 函子与从 $P=MN$ 到 $G$ 的抛物诱导满足 Frobenius 型互反性。它使 $G$ 表示的问题可部分降至较小 Levi 子群 $M$。
>
> **证明思路**：将诱导表示限制到 $N$ 并取余不变量，利用积分或函数模型构造 Hom 空间之间的自然同构；模函数归一化确保酉性和伴随关系的正确形式。

> **来源**：Colin J. Bushnell and Guy Henniart, *The Local Langlands Conjecture for GL(2)*，基础章节；Anne-Marie Aubert, Paul Baum, Roger Plymen, and Maarten Solleveld, *The Local Langlands Correspondence for Inner Forms of SL(n)*，表示论背景。
