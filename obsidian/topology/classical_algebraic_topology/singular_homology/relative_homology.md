# 相对同调

## 相对链群与相对链复形

<!-- relative_chain_group_definition -->
> [!Definition]
> **相对链群 Relative Chain Group**：设 $A \subseteq X$ 是子空间，含入映射 $i: A \hookrightarrow X$ 诱导链映射 $i_\#: S_n(A) \to S_n(X)$（单射）。定义**相对 $n$-链群 Relative $n$-Chain Group**为商群：
> $$S_n(X, A) = S_n(X) \big/ S_n(A).$$
> $S_n(X, A)$ 的元素（**相对 $n$-链 Relative $n$-Chains**）是 $X$ 中奇异 $n$-链模去 $A$ 中奇异 $n$-链的陪集，记为 $[c] = c + S_n(A)$。

<!-- relative_chain_complex_definition -->
> [!Definition]
> **相对链复形 Relative Chain Complex**：$X$ 中的边界算子 $\partial_n: S_n(X) \to S_{n-1}(X)$ 将 $S_n(A)$ 映入 $S_{n-1}(A)$，从而诱导商群上良定义的**相对边界算子** $\partial_n: S_n(X,A) \to S_{n-1}(X,A)$，且 $\partial^2 = 0$。得到**相对链复形 Relative Chain Complex** $(S_*(X,A), \partial)$。

## 相对同调群

<!-- relative_homology_group_definition -->
> [!Definition]
> **相对同调群 Relative Homology Group**：对的**第 $n$ 个相对（奇异）同调群 $n$-th Relative Singular Homology Group** 定义为：
> $$H_n(X, A) = \ker(\partial_n: S_n(X,A) \to S_{n-1}(X,A)) \big/ \mathrm{Im}(\partial_{n+1}: S_{n+1}(X,A) \to S_n(X,A)).$$

> **注**：相对同调群 $H_n(X, A)$ 度量了"$X$ 相对于 $A$ 的 $n$ 维拓扑特征"——直观上，$H_n(X,A)$ 检测 $X$ 中以 $A$ 为边界的 $n$ 维"洞"。特别地，$H_n(X, \varnothing) = H_n(X)$；$H_n(X, \{*\}) \cong \tilde{H}_n(X)$（约化同调）。

## 对的长正合列

<!-- long_exact_sequence_of_pair -->
> [!Theorem]
> **对的长正合列 Long Exact Sequence of a Pair**：由短正合链复形序列：
> $$0 \to S_*(A) \xrightarrow{i_\#} S_*(X) \xrightarrow{j_\#} S_*(X, A) \to 0$$
> （其中 $j_\#(c) = c + S_*(A)$ 是商映射），通过蛇形引理（Snake Lemma）得到**长正合列**：
> $$\cdots \to H_n(A) \xrightarrow{i_*} H_n(X) \xrightarrow{j_*} H_n(X, A) \xrightarrow{\partial_*} H_{n-1}(A) \xrightarrow{i_*} H_{n-1}(X) \to \cdots \to H_0(X, A) \to 0,$$
> 其中**连接同态** $\partial_*: H_n(X, A) \to H_{n-1}(A)$ 定义为：对相对 $n$-循环 $[c] \in H_n(X,A)$（即 $\partial c \in S_{n-1}(A)$），令 $\partial_*([c]) = [\partial c] \in H_{n-1}(A)$。

<!-- long_exact_sequence_five_term -->
> [!Corollary]
> **五项正合列 Five-Term Exact Sequence**：当 $A$ 非空时，长正合列的后端给出（取 $n = 0, 1$）：
> $$H_1(X) \to H_1(X, A) \xrightarrow{\partial_*} H_0(A) \xrightarrow{i_*} H_0(X) \xrightarrow{j_*} H_0(X, A) \to 0.$$

## 好对与切除

<!-- good_pair_definition -->
> [!Definition]
> **好对 Good Pair**：称 $(X, A)$ 是**好对 Good Pair**（或说 $A$ 是 $X$ 的一个"良好"子空间），若 $A$ 非空且是 $X$ 中某开集的形变收缩核（或更一般地，$A \hookrightarrow X$ 是余纤维化）。

<!-- good_pair_homology -->
> [!Theorem]
> **好对的相对同调 Relative Homology of Good Pairs**：若 $(X, A)$ 是好对，则商映射 $q: X \to X/A$ 诱导同构：
> $$H_n(X, A) \cong \tilde{H}_n(X/A) \quad \text{对所有 } n.$$
>
> **证明思路**：由切除定理（下一节），$H_n(X, A) \cong H_n(X \setminus U, A \setminus U)$（取适当的 $U$），再结合形变收缩和同伦不变性化归为 $\tilde{H}_n(X/A)$ 的计算。
