# 同态与同构

## 群同态

<!-- group_homomorphism_def -->
> [!Definition]
> **群同态 Group Homomorphism**：设 $(G, \cdot)$ 和 $(H, \ast)$ 为两个群。若映射 $\varphi: G \to H$ 满足：对所有 $a, b \in G$，
> $$
> \varphi(a \cdot b) = \varphi(a) \ast \varphi(b)
> $$
> 则称 $\varphi$ 为从 $G$ 到 $H$ 的**群同态**。

> **注**：根据映射的性质，群同态可进一步分类：单同态（单射同态）、满同态（满射同态）、自同态（$G = H$ 时）等。

<!-- group_homomorphism_properties -->
> [!Theorem]
> **同态的基本性质 Basic Properties of Homomorphism**：设 $\varphi: G \to H$ 为群同态，则：
> 1. $\varphi(e_G) = e_H$；
> 2. 对所有 $a \in G$，$\varphi(a^{-1}) = \varphi(a)^{-1}$；
> 3. 对所有 $n \in \mathbb{Z}$ 及 $a \in G$，$\varphi(a^n) = \varphi(a)^n$。
>
> **证明思路**：对 1，$\varphi(e_G) = \varphi(e_G \cdot e_G) = \varphi(e_G) \ast \varphi(e_G)$，两边右乘 $\varphi(e_G)^{-1}$ 得 $e_H = \varphi(e_G)$；对 2，由 $\varphi(a \cdot a^{-1}) = e_H$ 及性质 1 即得。

<!-- group_homomorphism_subgroup_image -->
> [!Theorem]
> **同态保子群 Homomorphism Preserves Subgroups**：设 $\varphi: G \to H$ 为群同态。
> 1. 若 $K \leq G$，则 $\varphi(K) \leq H$；
> 2. 若 $L \leq H$，则 $\varphi^{-1}(L) \leq G$。
>
> **证明思路**：分别用子群判定法则验证封闭性和逆元存在性。

## 群同态的核与像

<!-- group_kernel_def -->
> [!Definition]
> **同态的核 Kernel of Homomorphism**：设 $\varphi: G \to H$ 为群同态，定义 $\varphi$ 的**核**为
> $$
> \ker\varphi = \{a \in G \mid \varphi(a) = e_H\}
> $$
> 即 $G$ 中映射到 $H$ 的单位元的所有元素的集合。

<!-- group_image_def -->
> [!Definition]
> **同态的像 Image of Homomorphism**：设 $\varphi: G \to H$ 为群同态，定义 $\varphi$ 的**像**为
> $$
> \mathrm{Im}\,\varphi = \varphi(G) = \{\varphi(a) \mid a \in G\}
> $$

<!-- kernel_is_subgroup -->
> [!Theorem]
> **核是子群 Kernel is a Subgroup**：设 $\varphi: G \to H$ 为群同态，则 $\ker\varphi \leq G$，且 $\mathrm{Im}\,\varphi \leq H$。
>
> **证明思路**：用子群判定法则验证，利用同态的基本性质。

<!-- homomorphism_injective_iff_trivial_kernel -->
> [!Theorem]
> **单同态的刻画 Characterization of Injective Homomorphism**：群同态 $\varphi: G \to H$ 为单射当且仅当 $\ker\varphi = \{e_G\}$。
>
> **证明思路**：若 $\ker\varphi = \{e_G\}$，设 $\varphi(a) = \varphi(b)$，则 $\varphi(a \cdot b^{-1}) = e_H$，故 $a \cdot b^{-1} = e_G$，即 $a = b$。

## 群同构

<!-- group_isomorphism_def -->
> [!Definition]
> **群同构 Group Isomorphism**：若群同态 $\varphi: G \to H$ 是双射，则称 $\varphi$ 为从 $G$ 到 $H$ 的**群同构**，记作 $G \cong H$。

<!-- isomorphism_inverse -->
> [!Theorem]
> **同构的逆仍是同构 Inverse of Isomorphism**：若 $\varphi: G \to H$ 为群同构，则其逆映射 $\varphi^{-1}: H \to G$ 也是群同构。
>
> **证明思路**：设 $c = \varphi(a), d = \varphi(b)$，则 $\varphi^{-1}(c \ast d) = \varphi^{-1}(\varphi(a) \ast \varphi(b)) = \varphi^{-1}(\varphi(a \cdot b)) = a \cdot b = \varphi^{-1}(c) \cdot \varphi^{-1}(d)$。

<!-- isomorphism_preserves_order -->
> [!Theorem]
> **同构保持元素的阶 Isomorphism Preserves Order of Elements**：若 $\varphi: G \to H$ 为群同构，则对所有 $a \in G$，$\mathrm{ord}(a) = \mathrm{ord}(\varphi(a))$。
>
> **证明思路**：由 $\varphi(a^n) = \varphi(a)^n$ 及双射性，$a^n = e_G$ 当且仅当 $\varphi(a)^n = e_H$。

## 例子

<!-- homomorphism_example_det -->
> [!Example]+
> **行列式同态 Determinant Homomorphism**：映射 $\det: GL(n, \mathbb{R}) \to (\mathbb{R}^+, \cdot)$，$A \mapsto |\det A|$ 为群同态，因为 $\det(AB) = \det(A)\det(B)$。其核为 $SL(n, \mathbb{R}) = \{A \in GL(n, \mathbb{R}) \mid \det A = 1\}$。

<!-- homomorphism_example_exp -->
> [!Example]+
> **指数同态 Exponential Homomorphism**：映射 $\exp: (\mathbb{R}, +) \to (\mathbb{R}^+, \cdot)$，$x \mapsto e^x$ 为群同构，其逆为 $\ln: (\mathbb{R}^+, \cdot) \to (\mathbb{R}, +)$，$x \mapsto \ln x$。
