# 置换与置换群

## 置换的定义

<!-- permutation_def -->
> [!Definition]
> **置换 Permutation**：有限集合 $\{1, 2, \ldots, n\}$ 上的一个可逆变换（双射）称为一个 **$n$ 元置换**。

> **注**：与组合数学中**排列**（Arrangement）的区别：组合数学中的排列是从 $n$ 个元素中取 $k$ 个元素的有序排列（$k \leq n$），关注的是选取和排序；而置换是集合到自身的双射，关注的是元素之间的重排方式，是一个映射对象。

<!-- permutation_two_row_notation -->
> [!Definition]
> **置换的两行记法 Two-row Notation**：$n$ 元置换 $\sigma$ 可用两行记法表示为
> $$
> \sigma = \begin{pmatrix} 1 & 2 & \cdots & n \\ \sigma(1) & \sigma(2) & \cdots & \sigma(n) \end{pmatrix}
> $$
> 其中第一行为原象，第二行为对应的象。

<!-- permutation_cycle_notation -->
> [!Definition]
> **轮换记法与对换 Cycle Notation and Transposition**：置换 $\sigma$ 满足 $\sigma(i_1) = i_2, \sigma(i_2) = i_3, \ldots, \sigma(i_k) = i_1$ 且固定其余元素，则记 $\sigma = (i_1\ i_2\ \cdots\ i_k)$，称为一个 $k$-**轮换**（$k$-cycle）。特别地，$2$-轮换 $(i\ j)$ 称为**对换**（Transposition）。

<!-- permutation_decomposition -->
> [!Theorem]
> **置换的分解 Decomposition of Permutations**：
> 1. 任意置换均可分解为不相交轮换的复合，且在不计轮换顺序的意义下分解唯一；
> 2. 任意置换均可分解为对换的复合（分解不唯一，但所用对换个数的奇偶性唯一确定）。
>
> **证明思路**：对 $i_1$ 反复作用 $\sigma$ 直至回到 $i_1$，得一个轮换，对尚未出现的元素重复此过程；轮换 $(i_1\ i_2\ \cdots\ i_k) = (i_1\ i_k)\cdots(i_1\ i_3)(i_1\ i_2)$。

<!-- permutation_sign_def -->
> [!Definition]
> **置换的符号 Sign of a Permutation**：将置换 $\sigma$ 分解为对换之积，若对换个数为偶数，则称 $\sigma$ 为**偶置换**，符号 $\mathrm{sgn}(\sigma) = 1$；若为奇数，则称 $\sigma$ 为**奇置换**，符号 $\mathrm{sgn}(\sigma) = -1$。

## 对称群与置换群

<!-- symmetric_group_def -->
> [!Definition]
> **对称群 Symmetric Group**：$n$ 元集合 $\{1, 2, \ldots, n\}$ 上所有置换在复合运算下构成群，称为 **$n$ 元对称群**，记作 $S_n$。其阶为 $|S_n| = n!$。

<!-- alternating_group_def -->
> [!Definition]
> **交替群 Alternating Group**：$S_n$ 中所有偶置换的集合在复合运算下构成 $S_n$ 的子群，称为 **$n$ 元交替群**（交错群），记作 $A_n$。其阶为 $|A_n| = \dfrac{n!}{2}$（$n \geq 2$）。

<!-- permutation_group_def -->
> [!Definition]
> **置换群 Permutation Group**：$S_n$ 的任意子群称为 **$n$ 元置换群**。

## Cayley 定理

<!-- cayley_theorem -->
> [!Theorem]
> **Cayley 定理 Cayley's Theorem**：每个群都与某个置换群同构。具体地，阶为 $n$ 的有限群与 $S_n$ 的某个子群同构。
>
> **证明思路**：设 $G$ 为群，对每个 $g \in G$ 定义左乘映射 $\lambda_g: G \to G$，$\lambda_g(x) = g \cdot x$。$\lambda_g$ 是 $G$ 上的双射（置换），令 $\varphi: G \to \mathrm{Sym}(G)$，$g \mapsto \lambda_g$，验证 $\varphi$ 是单射群同态，故 $G \cong \varphi(G) \leq \mathrm{Sym}(G)$。当 $|G| = n$ 时，$\mathrm{Sym}(G) \cong S_n$。
