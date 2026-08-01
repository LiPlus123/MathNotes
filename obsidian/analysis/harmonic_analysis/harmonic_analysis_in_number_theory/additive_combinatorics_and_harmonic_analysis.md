# 加性组合与调和分析

## Fourier 分析与高阶均匀性

<!-- number_theory_additive_energy_definition -->
> [!Definition]
> **加性能量 Additive Energy**：对有限 Abel 群 $G$ 的有限子集 $A$，定义
> $$
> E(A)=\#\{(a,b,c,d)\in A^4:a+b=c+d\}.
> $$
> 若 $1_A$ 为示性函数，则 Fourier 正交性给出
> $$
> E(A)=\frac1{|G|}\sum_{\chi\in\widehat G}|\widehat{1_A}(\chi)|^4.
> $$

<!-- number_theory_gowers_norm_definition -->
> [!Definition]
> **Gowers 一致性范数 Gowers Uniformity Norm**：对有限 Abel 群 $G$ 上函数 $f$，$U^k$ 范数定义为
> $$
> \|f\|_{U^k}^{2^k}=
> \mathbb{E}_{x,h_1,\ldots,h_k\in G}
> \prod_{\omega\in\{0,1\}^k}
> \mathcal{C}^{|\omega|}f(x+\omega\cdot h),
> $$
> 其中 $\mathcal{C}$ 表示复共轭。$U^2$ 范数由 Fourier 系数的四次平均刻画，高阶范数检测多项式型结构。

<!-- number_theory_roth_fourier_argument -->
> [!Theorem]
> **Roth 定理的 Fourier 分析框架 Fourier-Analytic Framework for Roth's Theorem**：若 $A\subset\{1,\ldots,N\}$ 的密度为正，则当 $N$ 足够大时，$A$ 含有非平凡三项等差数列。其 Fourier 分析证明通过三线性计数式表明：若该数目异常小，则 $1_A$ 存在大的非零 Fourier 系数，进而可在长子等差数列上实施密度增量。
>
> **证明思路**：把三项等差数列数写成 Fourier 系数的三次和；分离零频主项。若非零频误差大，则选择大系数对应的角色并以其大水平集构造密度增量。

<!-- number_theory_szemeredi_gowers_concept -->
> [!Concept]
> **Szemeredi 定理与高阶 Fourier 分析 Szemeredi's Theorem and Higher-Order Fourier Analysis**：长度 $k+1$ 的等差数列计数由 $U^k$ 范数控制。逆定理把大的 $U^k$ 范数联系到 nilsequence 或多项式相位结构，是高阶密度增量与遍历方法的核心输入。

<!-- number_theory_freiman_theorem_concept -->
> [!Concept]
> **Freiman 定理 Freiman's Theorem**：若有限集合 $A$ 的和集 $A+A$ 很小，则 $A$ 受广义等差数列等低维加性结构控制。Freiman 同态、Ruzsa 覆盖和 Fourier 分析共同连接小倍增与结构描述。

> **来源**：Terence Tao and Van Vu, *Additive Combinatorics*；Ben Green and Terence Tao, "An Inverse Theorem for the Gowers $U^3(G)$ Norm"。
