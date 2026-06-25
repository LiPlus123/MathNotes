# 正规子群与商群

## 共轭

<!-- conjugate_element_def -->
> [!Definition]
> **共轭元素 Conjugate Elements**：设 $G$ 为群，$a, b \in G$。若存在 $g \in G$ 使得 $b = g a g^{-1}$，则称 $b$ 是 $a$ 的一个**共轭元素**，记作 $b \sim a$。共轭关系是 $G$ 上的等价关系，$a$ 的等价类称为 $a$ 的**共轭类**：
> $$
> \mathrm{Cl}(a) = \{gag^{-1} \mid g \in G\}
> $$

<!-- conjugate_subgroup_def -->
> [!Definition]
> **共轭子群 Conjugate Subgroup**：设 $G$ 为群，$H \leq G$，$g \in G$。集合
> $$
> gHg^{-1} = \{ghg^{-1} \mid h \in H\}
> $$
> 称为 $H$ 的一个**共轭子群**。$gHg^{-1} \leq G$。

## 正规子群

<!-- normal_subgroup_def -->
> [!Definition]
> **正规子群 Normal Subgroup**：设 $G$ 为群，$N \leq G$。若对所有 $g \in G$ 有 $gNg^{-1} = N$（等价地，$gN = Ng$），则称 $N$ 为 $G$ 的**正规子群**，记作 $N \trianglelefteq G$。若 $N \neq G$，则记作 $N \triangleleft G$。

<!-- normal_subgroup_criteria -->
> [!Theorem]
> **正规子群的等价刻画 Equivalent Characterizations of Normal Subgroup**：设 $G$ 为群，$N \leq G$，则以下条件等价：
> 1. $N \trianglelefteq G$；
> 2. 对所有 $g \in G$，$gNg^{-1} \subseteq N$；
> 3. 对所有 $g \in G$，$gN = Ng$（左陪集等于右陪集）；
> 4. 对所有 $g \in G$，$n \in N$，$gng^{-1} \in N$。
>
> **证明思路**：条件 2 与 1 的等价性：由 $gNg^{-1} \subseteq N$ 对所有 $g$ 成立，取 $g^{-1}$ 代入得 $g^{-1}Ng \subseteq N$，即 $N \subseteq gNg^{-1}$，故 $gNg^{-1} = N$。

<!-- normal_subgroup_examples -->
> [!Example]+
> **正规子群的基本例子 Basic Examples of Normal Subgroups**：
> 1. $\{e\}$ 和 $G$ 本身均为 $G$ 的正规子群；
> 2. 阿贝尔群的每个子群均为正规子群；
> 3. 群的中心 $Z(G)$ 是 $G$ 的正规子群；
> 4. 群同态 $\varphi: G \to H$ 的核 $\ker\varphi$ 是 $G$ 的正规子群；
> 5. $A_n \trianglelefteq S_n$（$n \geq 2$）。

<!-- kernel_is_normal -->
> [!Theorem]
> **核是正规子群 Kernel is Normal**：设 $\varphi: G \to H$ 为群同态，则 $\ker\varphi \trianglelefteq G$。
>
> **证明思路**：设 $n \in \ker\varphi$，$g \in G$，则 $\varphi(gng^{-1}) = \varphi(g)\varphi(n)\varphi(g)^{-1} = \varphi(g) e_H \varphi(g)^{-1} = e_H$，故 $gng^{-1} \in \ker\varphi$。

## 商群

<!-- quotient_group_def -->
> [!Definition]
> **商群 Quotient Group**：设 $G$ 为群，$N \trianglelefteq G$。$G$ 关于 $N$ 的所有左陪集的集合 $G/N = \{aN \mid a \in G\}$，在运算
> $$
> (aN) \cdot (bN) = (ab)N
> $$
> 下构成群，称为 $G$ 关于 $N$ 的**商群**。商群的单位元为 $eN = N$，$aN$ 的逆元为 $a^{-1}N$。

> **注**：定义商群的运算时必须验证其与陪集代表元的选取无关（良定义性）。设 $aN = a'N$，$bN = b'N$，即 $a' = an$，$b' = bm$（$n, m \in N$），则 $a'b' = anb m = ab(b^{-1}nb)m$；由 $N \trianglelefteq G$ 知 $b^{-1}nb \in N$，故 $a'b' \equiv ab \pmod{N}$，运算良定义。

<!-- quotient_group_order -->
> [!Theorem]
> **商群的阶 Order of Quotient Group**：若 $G$ 为有限群，$N \trianglelefteq G$，则 $|G/N| = [G : N] = |G| / |N|$。

<!-- natural_projection -->
> [!Definition]
> **自然同态 Natural Homomorphism**：设 $N \trianglelefteq G$，映射 $\pi: G \to G/N$，$a \mapsto aN$ 是从 $G$ 到商群 $G/N$ 的满射群同态，称为**自然同态**（或**典范投影**）。其核为 $\ker\pi = N$。

## 例子

<!-- quotient_group_example_integers -->
> [!Example]+
> **整数模 $n$ 的商群 Quotient Group of Integers mod n**：$n\mathbb{Z} \trianglelefteq (\mathbb{Z}, +)$，商群 $\mathbb{Z}/n\mathbb{Z}$ 即为整数模 $n$ 的加法群，阶为 $n$。

<!-- quotient_group_example_An -->
> [!Example]+
> **商群 $S_n / A_n$ Quotient Group $S_n/A_n$**：$A_n \trianglelefteq S_n$，商群 $S_n/A_n$ 的阶为 $2$，与 $\mathbb{Z}/2\mathbb{Z}$ 同构，偶置换构成单位陪集，奇置换构成另一陪集。
