# 导出函子的长正合列

## 左导出函子的长正合列

<!-- long_exact_sequence_left_derived -->
> [!Theorem]
> **左导出函子的长正合列 Long Exact Sequence for Left Derived Functors**：设 $F: R\text{-}\mathbf{Mod}\to S\text{-}\mathbf{Mod}$ 是右正合加性函子，且
> $$
> 0 \to A' \xrightarrow{\alpha} A \xrightarrow{\beta} A'' \to 0
> $$
> 是左 $R$-模短正合列。则存在自然连接同态
> $$
> \delta_n: L_nF(A'') \to L_{n-1}F(A') \quad (n\ge1),
> $$
> 使得序列正合：
> $$
> \cdots \to L_nF(A') \to L_nF(A) \to L_nF(A'') \xrightarrow{\delta_n} L_{n-1}F(A') \to \cdots \to L_0F(A'') \to 0.
> $$
>
> **证明思路**：用马蹄引理取三者协调投射分解，得到链复形短正合列
> $$
> 0\to P'_\bullet\to P_\bullet\to P''_\bullet\to0.
> $$
> 施加 $F$ 后仍短正合（逐次分裂），对该短正合列应用同调长正合列定理即得结论。

## 右导出函子的长正合列

<!-- long_exact_sequence_right_derived -->
> [!Theorem]
> **右导出函子的长正合列 Long Exact Sequence for Right Derived Functors**：设 $G: R\text{-}\mathbf{Mod}\to S\text{-}\mathbf{Mod}$ 是左正合加性函子，且
> $$
> 0 \to A' \xrightarrow{\alpha} A \xrightarrow{\beta} A'' \to 0
> $$
> 是短正合列。则存在自然连接同态
> $$
> \delta^n: R^nG(A'') \to R^{n+1}G(A') \quad (n\ge0),
> $$
> 使得正合列
> $$
> 0\to G(A')\to G(A)\to G(A'')\xrightarrow{\delta^0}R^1G(A')\to R^1G(A)\to R^1G(A'')\xrightarrow{\delta^1}R^2G(A')\to\cdots.
> $$
>
> **证明思路**：对偶地，用入射版马蹄引理取协调入射分解，施加 $G$ 得上链复形短正合列，再取上同调长正合列。

## 自然性

<!-- long_exact_sequence_derived_naturality -->
> [!Proposition]
> **导出函子长正合列的自然性 Naturality of Long Exact Sequences of Derived Functors**：短正合列之间的交换态射
> $$
> \begin{align*}
> 0\to A'\to A\to A''\to0 \\
> \downarrow \quad \downarrow \quad \downarrow \\
> 0\to B'\to B\to B''\to0
> \end{align*}
> $$
> 诱导两条导出函子长正合列之间的交换态射，且连接同态与这些态射可交换。
>
> **证明思路**：协调分解层面可作交换链映射，连接同态来自链复形长正合列的连接同态，故自然性由后者的自然性继承。

> **注**：该自然性是 Ext、Tor 相关长正合列在计算与比较中的关键结构保证。