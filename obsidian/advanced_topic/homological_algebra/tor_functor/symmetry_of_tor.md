# Tor 的对称性

## 交换环上的对称性

<!-- tor_symmetry_commutative_ring -->
> [!Theorem]
> **Tor 的对称性 Symmetry of Tor**：设 $R$ 是交换环，$A,B$ 是左 $R$-模。则对任意 $n\ge0$，存在自然同构
> $$
> \mathrm{Tor}_n^R(A,B) \cong \mathrm{Tor}_n^R(B,A).
> $$
>
> **证明思路**：在交换环上，左模可视作右模，张量积满足自然交换同构 $A\otimes_R B\cong B\otimes_R A$。取 $A$、$B$ 的投射分解并考虑双复形 $P_\bullet\otimes_R Q_\bullet$，交换两个方向后同调自然一致。

## 零次情形

<!-- tor_symmetry_degree_zero -->
> [!Corollary]
> **零次对称性 Degree-zero Symmetry**：当 $n=0$ 时，上述同构退化为张量积的标准交换同构：
> $$
> \mathrm{Tor}_0^R(A,B)=A\otimes_R B\cong B\otimes_R A=\mathrm{Tor}_0^R(B,A).
> $$

## 自然性

<!-- tor_symmetry_naturality -->
> [!Proposition]
> **Tor 对称同构的自然性 Naturality of the Symmetry Isomorphism**：对任意模同态 $f:A\to A'$、$g:B\to B'$，下图交换：
> $$
> \begin{align*}
> \mathrm{Tor}_n^R(A,B) &\to \mathrm{Tor}_n^R(B,A) \\
> \downarrow && \downarrow \\
> \mathrm{Tor}_n^R(A',B') &\to \mathrm{Tor}_n^R(B',A')
> \end{align*}
> $$
> 即 Tor 的对称同构在两个变量上都是自然的。

> **注**：该对称性仅在交换环或更一般满足适当双模结构的情形下成立；对一般非交换环，两个变量分属右模与左模，不能简单互换。