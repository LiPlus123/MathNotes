# Sylow 定理

## Sylow $p$-子群

<!-- p_group_def -->
> [!Definition]
> **$p$-群 $p$-Group**：设 $p$ 为素数。若群 $G$ 的阶为 $p$ 的幂次（$|G| = p^k$，$k \geq 1$），则称 $G$ 为 **$p$-群**。

<!-- sylow_p_subgroup_def -->
> [!Definition]
> **Sylow $p$-子群 Sylow $p$-Subgroup**：设 $G$ 为有限群，$p$ 为素数，设 $|G| = p^m \cdot n$ 其中 $p \nmid n$（即 $p^m \| |G|$）。$G$ 的阶为 $p^m$ 的子群称为 **Sylow $p$-子群**，即 $G$ 中阶最大的 $p$-子群。$G$ 的全体 Sylow $p$-子群的集合记作 $\mathrm{Syl}_p(G)$，其元素个数记作 $n_p(G)$（简记 $n_p$）。

## Sylow 定理

<!-- sylow_first_theorem -->
> [!Theorem]
> **Sylow 第一定理 Sylow's First Theorem**：设 $G$ 为有限群，$p$ 为素数，$p^k \mid |G|$，则 $G$ 含有阶为 $p^k$ 的子群。特别地，$G$ 含有 Sylow $p$-子群，即 $\mathrm{Syl}_p(G) \neq \varnothing$。
>
> **证明思路**：对 $|G|$ 做归纳。利用类方程：若 $p \mid |Z(G)|$，由 Cauchy 定理 $Z(G)$ 中有阶为 $p$ 的元素 $z$，$\langle z \rangle \trianglelefteq G$，对商群 $G/\langle z \rangle$ 归纳；若 $p \nmid |Z(G)|$，则类方程中某个 $[G : C_G(x_i)]$ 不被 $p$ 整除，故 $p^m \mid |C_G(x_i)|$，对 $C_G(x_i)$ 归纳。

<!-- cauchy_theorem -->
> [!Theorem]
> **Cauchy 定理 Cauchy's Theorem**：设 $G$ 为有限群，$p$ 为素数，若 $p \mid |G|$，则 $G$ 含有阶为 $p$ 的元素。
>
> **证明思路**：考虑集合 $S = \{(g_1, \ldots, g_p) \in G^p \mid g_1 g_2 \cdots g_p = e\}$，$|S| = |G|^{p-1}$；群 $\mathbb{Z}/p\mathbb{Z}$ 通过循环置换作用于 $S$，固定点为 $(g, g, \ldots, g)$ 满足 $g^p = e$；由 $p \mid |S|$ 及轨道大小只能是 $1$ 或 $p$，固定点个数 $\equiv 0 \pmod{p}$，除 $(e, \ldots, e)$ 外还有其他固定点，对应的 $g$ 即为 $p$ 阶元素。

<!-- sylow_second_theorem -->
> [!Theorem]
> **Sylow 第二定理 Sylow's Second Theorem**：设 $G$ 为有限群，$p$ 为素数，则 $G$ 的任意两个 Sylow $p$-子群彼此共轭。即若 $P, Q \in \mathrm{Syl}_p(G)$，则存在 $g \in G$ 使 $Q = gPg^{-1}$。
>
> **证明思路**：令 $P$ 通过共轭作用于 $G/Q$（左陪集集合），由于 $|G/Q|$ 不被 $p$ 整除（因 $|G/Q| = [G:Q] = n$），作用中存在大小为 $1$ 的轨道，即存在陪集 $gQ$ 使得对所有 $h \in P$ 有 $hgQ = gQ$，即 $g^{-1}Pg \leq Q$；由 $|g^{-1}Pg| = |P| = |Q|$ 得 $g^{-1}Pg = Q$。

<!-- sylow_third_theorem -->
> [!Theorem]
> **Sylow 第三定理 Sylow's Third Theorem**：设 $|G| = p^m n$（$p \nmid n$），则 Sylow $p$-子群的个数 $n_p$ 满足：
> 1. $n_p \mid n$（即 $n_p \mid [G : P]$ 对任意 $P \in \mathrm{Syl}_p(G)$）；
> 2. $n_p \equiv 1 \pmod{p}$。
>
> **证明思路**：$G$ 通过共轭作用于 $\mathrm{Syl}_p(G)$，由第二定理此作用传递，故 $n_p = [G : N_G(P)]$（其中 $N_G(P)$ 为 $P$ 的正规化子），从而 $n_p \mid |G|$；又 $P \leq N_G(P)$，故 $n_p \mid n$。令 $P$ 共轭作用于 $\mathrm{Syl}_p(G)$，固定点只有 $P$ 本身（否则可导出矛盾），故轨道大小均为 $p$ 的幂或 $1$，从而 $n_p \equiv 1 \pmod{p}$。

## 例子

<!-- sylow_example_order_12 -->
> [!Example]+
> **阶为 $12$ 的群 Groups of Order 12**：设 $|G| = 12 = 2^2 \cdot 3$。则 $n_3 \mid 4$ 且 $n_3 \equiv 1 \pmod{3}$，故 $n_3 \in \{1, 4\}$；$n_2 \mid 3$ 且 $n_2 \equiv 1 \pmod{2}$，故 $n_2 \in \{1, 3\}$。若 $n_3 = 4$，则 $G$ 中有 $4 \times 2 = 8$ 个 $3$ 阶元素，剩余 $4$ 个元素构成唯一的 Sylow $2$-子群（故 $n_2 = 1$）。阶为 $12$ 的群（在同构意义下）恰有 $5$ 个：$\mathbb{Z}/12\mathbb{Z}$，$\mathbb{Z}/2\mathbb{Z} \times \mathbb{Z}/6\mathbb{Z}$，$A_4$，$D_6$，$\mathrm{Dic}_3$（二次中心扩张）。

<!-- sylow_example_simple_group -->
> [!Example]+
> **简单群的判断 Determining Simple Groups**：利用 Sylow 定理可证某些阶的群不是单群（不存在非平凡正规子群）。例如，设 $|G| = 30 = 2 \cdot 3 \cdot 5$，则 $n_5 \mid 6$ 且 $n_5 \equiv 1 \pmod{5}$，故 $n_5 \in \{1, 6\}$；$n_3 \mid 10$ 且 $n_3 \equiv 1 \pmod{3}$，故 $n_3 \in \{1, 10\}$。若 $n_5 = 6$ 且 $n_3 = 10$，则 $5$ 阶元有 $24$ 个，$3$ 阶元有 $20$ 个，共超过 $30$ 个，矛盾。故 $n_5 = 1$ 或 $n_3 = 1$，存在正规 Sylow 子群，$G$ 不是单群。
