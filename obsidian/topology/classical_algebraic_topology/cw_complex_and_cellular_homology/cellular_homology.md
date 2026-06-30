# 胞腔同调

## 胞腔同调群的定义

<!-- cellular_homology_group_definition -->
> [!Definition]
> **胞腔同调群 Cellular Homology Group**：CW 复形 $X$ 的**第 $n$ 个胞腔同调群 $n$-th Cellular Homology Group** 定义为胞腔链复形的同调：
> $$H_n^{CW}(X) = \ker d_n \big/ \mathrm{Im}\, d_{n+1}.$$

## 胞腔同调与奇异同调的同构

<!-- cellular_singular_isomorphism -->
> [!Theorem]
> **胞腔同调与奇异同调同构 Cellular Homology Equals Singular Homology**：对 CW 复形 $X$，存在自然的群同构：
> $$H_n^{CW}(X) \cong H_n(X) \quad \text{对所有 } n \geq 0.$$
>
> **证明思路**：利用骨架滤过 $X^0 \subseteq X^1 \subseteq \cdots \subseteq X^n \subseteq \cdots \subseteq X$，对每对 $(X^n, X^{n-1})$ 和 $(X^{n+1}, X^n)$ 写出长正合列，得到交错图表。关键事实（由长正合列和归纳可证）：
> - $H_k(X^n) = 0$ 对 $k > n$；
> - $H_n(X^n) \to H_n(X^{n+1})$ 是同构（当 $n < n+1-1$，即 $k < n$）；
> - $H_n(X^{n-1}) = 0$（由第一条）。
>
> 将这些信息代入对 $(X^n, X^{n-1})$ 的长正合列，对各段整理，得到：
> $$H_n(X^n, X^{n-1}) = C_n^{CW}(X), \quad H_n(X) \cong H_n(X^n) \cong \ker d_n / \mathrm{Im}\, d_{n+1} = H_n^{CW}(X).$$

## 胞腔同调的计算优势

<!-- cellular_homology_advantage -->
> [!Corollary]
> **计算优势 Computational Advantage**：胞腔同调提供了高效计算 CW 复形同调群的方法：
> - 链群 $C_n^{CW}(X)$ 是有限秩自由阿贝尔群（一个生成元对应一个 $n$-胞腔），通常远小于奇异链群；
> - 边界矩阵由次数公式给出，可以显式计算；
> - 通过整数矩阵的 Smith 标准形可直接读出同调群（含扭转部分）。
>
> 对于具有少量胞腔的 CW 复形（如只有每维一个胞腔的情形），计算极为简便。

<!-- cellular_homology_exact_sequence -->
> [!Theorem]
> **胞腔同调的长正合列 Long Exact Sequence in Cellular Homology**：对 CW 对 $(X, A)$（$A$ 是 $X$ 的子复形），胞腔相对同调群 $H_n^{CW}(X, A) = H_n(C_*^{CW}(X)/C_*^{CW}(A))$ 满足自然长正合列：
> $$\cdots \to H_n^{CW}(A) \to H_n^{CW}(X) \to H_n^{CW}(X, A) \xrightarrow{\partial_*} H_{n-1}^{CW}(A) \to \cdots$$
