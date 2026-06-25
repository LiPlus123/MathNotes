# 群作用

## 群作用的定义

<!-- group_action_def -->
> [!Definition]
> **群作用 Group Action**：设 $G$ 为群，$X$ 为非空集合。$G$ 在 $X$ 上的一个**（左）群作用**是映射
> $$
> \cdot: G \times X \to X,\quad (g, x) \mapsto g \cdot x
> $$
> 满足：
> 1. **单位元公理**：$e \cdot x = x$，对所有 $x \in X$；
> 2. **相容性公理**：$(gh) \cdot x = g \cdot (h \cdot x)$，对所有 $g, h \in G$，$x \in X$。
>
> 称 $X$ 为一个 **$G$-集**（$G$-set）。

<!-- group_action_homomorphism -->
> [!Theorem]
> **群作用等价于同态 Group Action Equivalent to Homomorphism**：$G$ 在 $X$ 上的群作用等价于群同态 $\varphi: G \to \mathrm{Sym}(X)$（其中 $\varphi(g)(x) = g \cdot x$）。
>
> **证明思路**：由群作用的两条公理恰好保证每个 $\varphi(g)$ 是双射（逆为 $\varphi(g^{-1})$），且 $\varphi$ 是同态。

<!-- faithful_transitive_action_def -->
> [!Definition]
> **忠实作用与传递作用 Faithful and Transitive Actions**：
> - 若对应的同态 $\varphi: G \to \mathrm{Sym}(X)$ 是单射，即 $g \cdot x = x$（对所有 $x \in X$）蕴含 $g = e$，则称作用是**忠实的**；
> - 若对任意 $x, y \in X$ 均存在 $g \in G$ 使 $g \cdot x = y$，则称作用是**传递的**。

## 轨道与稳定子

<!-- orbit_def -->
> [!Definition]
> **轨道 Orbit**：设 $G$ 作用于 $X$，$x \in X$，定义 $x$ 的**轨道**为
> $$
> G \cdot x = \{g \cdot x \mid g \in G\}
> $$
> 即 $G$ 中所有元素作用在 $x$ 上所得元素的集合。

<!-- stabilizer_def -->
> [!Definition]
> **稳定子 Stabilizer**（也称**迷向子群**）：设 $G$ 作用于 $X$，$x \in X$，定义 $x$ 的**稳定子**为
> $$
> G_x = \mathrm{Stab}_G(x) = \{g \in G \mid g \cdot x = x\}
> $$
> $G_x$ 是 $G$ 的子群。

<!-- orbit_partition -->
> [!Theorem]
> **轨道划分 Orbit Partition**：不同的轨道构成 $X$ 的划分：对任意 $x, y \in X$，要么 $G \cdot x = G \cdot y$，要么 $G \cdot x \cap G \cdot y = \varnothing$。
>
> **证明思路**：在 $X$ 上定义关系 $x \sim y \Leftrightarrow \exists g \in G,\ g \cdot x = y$，验证这是等价关系，轨道即为等价类。

## 轨道-稳定子定理

<!-- orbit_stabilizer_theorem -->
> [!Theorem]
> **轨道-稳定子定理 Orbit-Stabilizer Theorem**：设有限群 $G$ 作用于集合 $X$，$x \in X$，则
> $$
> |G| = |G \cdot x| \cdot |G_x|
> $$
> 即轨道的大小乘以稳定子的大小等于群的阶。等价地，$|G \cdot x| = [G : G_x]$。
>
> **证明思路**：定义映射 $G/G_x \to G \cdot x$，$gG_x \mapsto g \cdot x$，验证这是良定义的双射（$gG_x = hG_x \Leftrightarrow h^{-1}g \in G_x \Leftrightarrow g \cdot x = h \cdot x$）。

<!-- burnside_lemma -->
> [!Theorem]
> **Burnside 引理 Burnside's Lemma**（也称**Cauchy-Frobenius 引理**）：设有限群 $G$ 作用于有限集合 $X$，则 $X$ 的轨道个数等于
> $$
> |\text{轨道集}| = \frac{1}{|G|} \sum_{g \in G} |X^g|
> $$
> 其中 $X^g = \{x \in X \mid g \cdot x = x\}$ 为被 $g$ 固定的元素集合。
>
> **证明思路**：对集合 $\{(g, x) \in G \times X \mid g \cdot x = x\}$ 以两种方式计数，并利用轨道-稳定子定理。

## 例子

<!-- group_action_example_conjugation -->
> [!Example]+
> **共轭作用 Conjugation Action**：群 $G$ 通过共轭作用于自身：$g \cdot x = gxg^{-1}$。轨道为共轭类 $\mathrm{Cl}(x)$，稳定子为**中心化子** $C_G(x) = \{g \in G \mid gx = xg\}$。由轨道-稳定子定理：$|\mathrm{Cl}(x)| = [G : C_G(x)]$。

<!-- group_action_example_left_multiplication -->
> [!Example]+
> **左乘作用 Left Multiplication Action**：$G$ 通过左乘作用于自身：$g \cdot x = gx$。此作用是忠实且传递的，只有一个轨道（整个 $G$），每个点的稳定子为平凡群。此即 Cayley 定理的本质。

<!-- class_equation -->
> [!Theorem]
> **类方程 Class Equation**：设 $G$ 为有限群，则
> $$
> |G| = |Z(G)| + \sum_{i} [G : C_G(x_i)]
> $$
> 其中求和遍及所有大小大于 $1$ 的共轭类的代表元 $x_i$。
>
> **证明思路**：由共轭作用的轨道划分，$G$ 分解为共轭类之并；$Z(G)$ 中每个元素自成大小为 $1$ 的共轭类；其余类的大小由轨道-稳定子定理给出。
