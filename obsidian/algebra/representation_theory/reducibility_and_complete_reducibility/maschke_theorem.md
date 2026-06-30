# 马施克定理 Maschke's Theorem

<!-- maschke_theorem -->
> [!Theorem]
> **马施克定理 Maschke's Theorem**：设 $G$ 是有限群，$F$ 是域，且 $\mathrm{char}(F) \nmid |G|$（即域的特征不整除群的阶，包括 $\mathrm{char}(F) = 0$ 的情形）。则 $G$ 的每个有限维 $F$-表示均是完全可约的，即都能分解为不可约表示的直和。

> **证明思路**：设 $\rho: G \to GL(V)$ 是 $G$ 的表示，$W \leq V$ 是 $G$-不变子空间。只需构造 $G$-不变补空间 $W'$ 使得 $V = W \oplus W'$。
>
> 取 $V$ 上任意一个以 $W$ 为核的补投影 $\pi_0: V \to W$（不一定 $G$-等变），利用群上的平均构造：
> $$\pi = \frac{1}{|G|} \sum_{g \in G} \rho(g) \circ \pi_0 \circ \rho(g)^{-1}.$$
> 由 $\mathrm{char}(F) \nmid |G|$，$|G|$ 在 $F$ 中可逆，故 $\pi$ 有意义。可验证：
> - $\pi$ 是 $G$-等变的（即 $\pi \in \mathrm{End}_G(V)$）；
> - $\pi|_W = \mathrm{Id}_W$（因对每个 $g$，$\rho(g) \circ \pi_0 \circ \rho(g)^{-1}|_W = \mathrm{Id}_W$）；
> - $\pi^2 = \pi$（$\pi$ 是幂等算子，即投影）。
>
> 令 $W' = \ker \pi$，则 $W'$ 是 $G$-不变的，且 $V = W \oplus W'$。由完全可约的等价刻画（每个不变子空间都有不变补），递归可得 $\rho$ 的不可约分解。

<!-- maschke_counterexample -->
> [!Example]+
> **马施克定理的反例 Counterexample to Maschke's Theorem**：当 $\mathrm{char}(F) \mid |G|$ 时，定理不成立。取 $G = \mathbb{Z}/p\mathbb{Z}$，$F = \mathbb{F}_p$（特征 $p$），令
> $$\rho: G \to GL(2, \mathbb{F}_p), \quad \rho(1) = \begin{pmatrix} 1 & 1 \\ 0 & 1 \end{pmatrix}.$$
> 则 $W = \mathrm{span}(e_1)$ 是唯一的非平凡 $G$-不变子空间（因为 $\rho(1)^p = I$ 但 $(\rho(1) - I)^p = 0$），故 $W$ 无 $G$-不变补，$\rho$ 不可约分解不存在，这是**不完全可约（非半单）**表示。

<!-- maschke_corollary -->
> [!Corollary]
> **有限群在特征零或正特征（不整除群阶）域上的半单性**：设 $G$ 是有限群，$F = \mathbb{C}$（或更一般地 $\mathrm{char}(F) \nmid |G|$）。$G$ 的群代数 $FG$ 是半单代数，即每个 $FG$-模（即 $G$ 的 $F$-表示）都是完全可约的。

> **注**：马施克定理是有限群表示论中最基本的结构定理，它保证了特征标理论（半单情形下不可约特征标的正交性等）的成立，也是 Wedderburn 分解的前提。
