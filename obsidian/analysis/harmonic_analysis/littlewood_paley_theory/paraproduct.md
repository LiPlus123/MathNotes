# 半积

## Bony 分解与非线性频率交互

<!-- lp_low_frequency_cutoff_definition -->
> [!Definition]
> **低频截断 Low-Frequency Cutoff**：对 $j\geq0$，定义
> $$
> S_jf=\Delta_{-1}f+\sum_{k=0}^{j-1}\Delta_kf,
> $$
> 并约定 $S_{-1}f=0$。它保留频率低于约 $2^j$ 的部分。

<!-- lp_bony_paraproduct_definition -->
> [!Definition]
> **Bony 半积 Bony Paraproduct**：对适当函数或分布 $f,g$，定义
> $$
> T_fg=\sum_{j\geq-1}(S_{j-1}f)\Delta_jg.
> $$
> 它表示 $f$ 的低频与 $g$ 的高频之间的相互作用；$T_gf$ 类似。

<!-- lp_bony_remainder_definition -->
> [!Definition]
> **共振项 Remainder Term**：定义
> $$
> R(f,g)=\sum_{\substack{j,k\geq-1\\|j-k|\leq1}}\Delta_jf\,\Delta_kg.
> $$
> 它收集频率相近的高频块之间的交互，亦称高-高共振项。

<!-- lp_bony_decomposition_theorem -->
> [!Theorem]
> **Bony 半积分解 Bony Paraproduct Decomposition**：在分布意义下，
> $$
> fg=T_fg+T_gf+R(f,g).
> $$
> 该分解将乘积划分为低-高、高-低与高-高三种频率相互作用。
>
> **证明思路**：将 $f=\Delta_{-1}f+\sum_j\Delta_jf$ 与 $g=\Delta_{-1}g+\sum_k\Delta_kg$ 相乘。按 $j\ll k$、$k\ll j$ 与 $|j-k|\leq1$ 分类双重求和；频带有限重叠保证各类和在分布意义下良好定义。

<!-- lp_paraproduct_boundedness -->
> [!Theorem]
> **半积的基本有界性 Basic Paraproduct Boundedness**：若 $f\in L^\infty(\mathbb{R}^n)$、$s\in\mathbb{R}$、$1<p<+\infty$，则
> $$
> \|T_fg\|_{F^s_{p,2}}\lesssim\|f\|_\infty\|g\|_{F^s_{p,2}}.
> $$
> 对 $s>0$，Bony 分解还导出典型乘积估计
> $$
> \|fg\|_{H^{s,p}}
> \lesssim\|f\|_\infty\|g\|_{H^{s,p}}
> +\|g\|_\infty\|f\|_{H^{s,p}}.
> $$
>
> **证明思路**：$S_{j-1}f$ 由 $\|f\|_\infty$ 一致控制，且 $T_fg$ 的第 $j$ 块只和 $g$ 的有限个邻近频带相交。对 $R(f,g)$，频率支撑位于至多相应高频尺度，使用平方函数或 Besov 序列估计求和。

<!-- lp_paradifferential_calculus_intro -->
> [!Definition]
> **仿微分算子 Paradifferential Operator**：若符号 $a(x,\xi)$ 随 $x$ 缓慢变化，则可用半积模型
> $$
> T_au=\sum_{j\geq0}S_{j-1}a\,\Delta_ju
> $$
> 近似其主要作用。仿微分演算以此分离系数的低频与未知量的高频，是拟线性 PDE 中线性化和能量估计的基本工具。

> **来源**：Jean-Michel Bony, "Calcul Symbolique et Propagation des Singularités pour les Équations aux Dérivées Partielles Non Linéaires", *Annales Scientifiques de l'École Normale Supérieure* 14 (1981)；Michael E. Taylor, *Pseudodifferential Operators and Nonlinear PDE*, Chapter 3。
