# 环同态与同构

## 环同态

<!-- ring_hom_def -->
> [!Definition]
> **环同态 Ring Homomorphism**：设 $R, S$ 为环，映射 $\varphi: R \to S$ 称为**环同态**，若对所有 $a, b \in R$，有：
> 1. $\varphi(a + b) = \varphi(a) + \varphi(b)$；
> 2. $\varphi(a \cdot b) = \varphi(a) \cdot \varphi(b)$。
>
> 若 $R, S$ 均为含幺环，还额外要求 $\varphi(1_R) = 1_S$。若 $\varphi$ 为满射，称为**满同态**；若 $\varphi$ 为单射，称为**单同态**（或**嵌入**）。

<!-- ring_hom_kernel_def -->
> [!Definition]
> **环同态的核 Kernel**：设 $\varphi: R \to S$ 为环同态，称
> $$
> \ker\varphi = \{a \in R \mid \varphi(a) = 0_S\}
> $$
> 为 $\varphi$ 的**核**。

<!-- ring_hom_image_def -->
> [!Definition]
> **环同态的像 Image**：设 $\varphi: R \to S$ 为环同态，称
> $$
> \mathrm{Im}\,\varphi = \{\varphi(a) \mid a \in R\}
> $$
> 为 $\varphi$ 的**像**。

## 环同态的性质

<!-- ring_hom_preserves_zero -->
> [!Theorem]
> **同态保零元与负元**：设 $\varphi: R \to S$ 为环同态，则 $\varphi(0_R) = 0_S$，且对所有 $a \in R$，$\varphi(-a) = -\varphi(a)$。
>
> **证明思路**：由 $\varphi(0_R) = \varphi(0_R + 0_R) = \varphi(0_R) + \varphi(0_R)$，两侧减 $\varphi(0_R)$ 得 $0_S = \varphi(0_R)$；由 $0_S = \varphi(0_R) = \varphi(a + (-a)) = \varphi(a) + \varphi(-a)$，得 $\varphi(-a) = -\varphi(a)$。

<!-- ring_hom_kernel_is_ideal -->
> [!Theorem]
> **核是理想，像是子环**：设 $\varphi: R \to S$ 为环同态，则 $\ker\varphi$ 是 $R$ 的双边理想，$\mathrm{Im}\,\varphi$ 是 $S$ 的子环。
>
> **证明思路**：对 $\ker\varphi$：若 $a, b \in \ker\varphi$，则 $\varphi(a-b) = \varphi(a) - \varphi(b) = 0$，故 $a - b \in \ker\varphi$；对任意 $r \in R$，$\varphi(ra) = \varphi(r)\varphi(a) = \varphi(r) \cdot 0 = 0$，故 $ra \in \ker\varphi$，右乘类似。对 $\mathrm{Im}\,\varphi$：用子环判定定理验证加法和乘法封闭性。

<!-- ring_hom_inject_crit -->
> [!Theorem]
> **单同态判定**：环同态 $\varphi: R \to S$ 是单射当且仅当 $\ker\varphi = \{0_R\}$。
>
> **证明思路**：若 $\ker\varphi = \{0\}$，设 $\varphi(a) = \varphi(b)$，则 $\varphi(a - b) = 0$，故 $a - b \in \ker\varphi = \{0\}$，即 $a = b$；反之若 $\varphi$ 单射，$\ker\varphi$ 显然只含 $0$。

## 环同构

<!-- ring_iso_def -->
> [!Definition]
> **环同构 Ring Isomorphism**：若环同态 $\varphi: R \to S$ 是双射，则称 $\varphi$ 为**环同构**，称 $R$ 与 $S$ **同构**，记作 $R \cong S$。

<!-- ring_iso_equivalence -->
> [!Theorem]
> **同构是等价关系**：环同构关系满足自反性（恒等映射）、对称性（同构的逆映射也是同构）、传递性（两个同构的合成是同构）。

## 例子

<!-- ring_hom_example_projection -->
> [!Example]+
> **自然投影**：映射 $\pi: \mathbb{Z} \to \mathbb{Z}/n\mathbb{Z}$，$\pi(a) = \bar{a}$，是环满同态，核为 $\ker\pi = n\mathbb{Z}$。

<!-- ring_hom_example_eval -->
> [!Example]+
> **赋值同态**：固定 $r \in R$，赋值映射 $\mathrm{ev}_r: R[x] \to R$，$f(x) \mapsto f(r)$，是环满同态（称为以 $r$ 为值的**赋值映射**）。

<!-- ring_hom_example_inclusion -->
> [!Example]+
> **嵌入同态**：若 $S \leq R$ 是子环，则包含映射 $\iota: S \hookrightarrow R$，$s \mapsto s$，是单同态。
