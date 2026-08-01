# 向量值函数的极限与连续

<!-- real_analysis_vector_valued_limit_definition -->
> [!Definition]
> **向量值函数的极限 Limit of a Vector-Valued Function**：设 $a$ 是 $D\subseteq\mathbb{R}^n$ 的聚点，$F:D\to\mathbb{R}^m$。若对任意 $\varepsilon>0$，存在 $\delta>0$，使
> $$
> 0<\|x-a\|<\delta\Longrightarrow\|F(x)-L\|<\varepsilon,
> $$
> 则称 $\lim_{x\to a}F(x)=L\in\mathbb{R}^m$。

<!-- real_analysis_vector_valued_limit_componentwise_criterion -->
> [!Theorem]
> **向量值极限的分量刻画 Componentwise Criterion for Vector-Valued Limits**：对 $F=(F_1,\ldots,F_m)$，有
> $$
> \lim_{x\to a}F(x)=L=(L_1,\ldots,L_m)
> $$
> 当且仅当对每个 $i$，$\lim_{x\to a}F_i(x)=L_i$。
>
> **证明思路**：必要性由 $|F_i(x)-L_i|\leq\|F(x)-L\|$。充分性中有限个分量的误差可同时控制，再利用欧氏范数。

<!-- real_analysis_vector_valued_continuity_definition -->
> [!Definition]
> **向量值函数的连续性 Continuity of a Vector-Valued Function**：若 $a\in D$ 且
> $$
> \lim_{x\to a}F(x)=F(a),
> $$
> 则称 $F$ 在 $a$ 处连续。

<!-- real_analysis_vector_valued_continuity_componentwise_criterion -->
> [!Theorem]
> **向量值连续性的分量刻画 Componentwise Criterion for Continuity**：$F=(F_1,\ldots,F_m):D\to\mathbb{R}^m$ 在 $a$ 处连续，当且仅当每个分量函数 $F_i$ 在 $a$ 处连续。
>
> **证明思路**：将向量值极限的分量刻画应用于 $L=F(a)$。

<!-- real_analysis_vector_valued_continuous_on_compact_set -->
> [!Theorem]
> **紧集上连续向量函数的性质 Properties on Compact Sets**：若 $K\subseteq\mathbb{R}^n$ 紧且 $F:K\to\mathbb{R}^m$ 连续，则 $F(K)$ 紧，因而有界；并且 $F$ 在 $K$ 上一致连续。
>
> **证明思路**：连续像保持紧致性，欧氏空间中紧集有界；一致连续性由 Heine-Cantor 定理。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 4。