# 自然同构

## 自然同构的定义

<!-- natural_isomorphism_def -->
> [!Definition]
> **自然同构 Natural Isomorphism**：自然变换 $\alpha: F \Rightarrow G$（$F, G: \mathcal{C} \to \mathcal{D}$）称为**自然同构**，若存在自然变换 $\alpha^{-1}: G \Rightarrow F$ 使得
> $$
> \alpha^{-1} \circ \alpha = \mathrm{id}_F, \qquad \alpha \circ \alpha^{-1} = \mathrm{id}_G.
> $$
> 当存在自然同构 $\alpha: F \Rightarrow G$ 时，称 $F$ 与 $G$ **自然同构**，记作 $F \cong G$。

## 逐分量同构判定

<!-- natural_iso_componentwise -->
> [!Theorem]
> **逐分量同构判定 Componentwise Characterization**：自然变换 $\alpha: F \Rightarrow G$ 是自然同构，当且仅当对每个对象 $A \in \mathrm{Ob}(\mathcal{C})$，分量 $\alpha_A: F(A) \to G(A)$ 都是 $\mathcal{D}$ 中的同构。
>
> **证明思路**：
> - "$\Rightarrow$"：若 $\alpha^{-1}$ 是 $\alpha$ 的逆，则 $(\alpha^{-1})_A \circ \alpha_A = \mathrm{id}_{F(A)}$ 与 $\alpha_A \circ (\alpha^{-1})_A = \mathrm{id}_{G(A)}$，故 $\alpha_A$ 为同构，$(\alpha^{-1})_A = (\alpha_A)^{-1}$。
> - "$\Leftarrow$"：设每个 $\alpha_A$ 均为同构，令 $\beta_A = (\alpha_A)^{-1}: G(A) \to F(A)$。对 $f: A \to B$，由 $\alpha$ 的自然性 $G(f) \circ \alpha_A = \alpha_B \circ F(f)$，两边以 $\alpha_B^{-1}$ 左乘、$\alpha_A^{-1}$ 右乘，得 $\beta_B \circ G(f) = F(f) \circ \beta_A$，即 $\beta$ 也是自然变换。

## 自然同构的例子

<!-- natural_iso_example_double_dual -->
> [!Example]+
> **有限维向量空间的双对偶自然同构 Double Dual Natural Isomorphism**：限制到有限维向量空间范畴 $\mathbf{Vect}_F^{\mathrm{fd}}$，赋值映射 $\varepsilon_V: V \to V^{**}$，$v \mapsto \mathrm{ev}_v$ 在每个 $V$ 处是同构（$\dim V = \dim V^{**}$ 且 $\varepsilon_V$ 单射从而双射）。由逐分量同构判定，$\varepsilon: \mathrm{Id} \Rightarrow (-)^{**}$ 是自然同构，即 $\mathrm{Id}_{\mathbf{Vect}_F^{\mathrm{fd}}} \cong (-)^{**}$。
>
> **证明思路**：$\varepsilon_V$ 是单射（因 $\ker \varepsilon_V = 0$：若 $\mathrm{ev}_v = 0$ 则取 $\varphi: V \to F$ 使 $\varphi(v) \neq 0$ 矛盾），有限维时 $\dim V = \dim V^{**}$ 故为同构。

> **注**：对无限维向量空间，$\varepsilon_V$ 仍为单射但一般不是满射，故只有自然变换而无自然同构。这说明自然性不仅描述"同构"，更描述"自然地给出"这一概念——双对偶嵌入是自然的，而非"自然同构"。

<!-- natural_iso_example_det -->
> [!Example]+
> **行列式诱导的自然同构（$n = 1$）**：当 $n = 1$ 时，$\mathrm{GL}_1(R) = R^\times$，行列式退化为恒等，$\det: \mathrm{GL}_1 \Rightarrow \mathbb{G}_m$ 在每个环上给出群同构 $\mathrm{GL}_1(R) \cong R^\times$，故 $\det$ 是自然同构 $\mathrm{GL}_1 \cong \mathbb{G}_m$。

<!-- natural_iso_example_hom_set -->
> [!Example]+
> **curry 化自然同构**：在 $\mathbf{Set}$ 中，对固定集合 $A, B, C$，映射
> $$
> \mathrm{Hom}(A \times B, C) \xrightarrow{\sim} \mathrm{Hom}(A, \mathrm{Hom}(B, C)), \quad f \mapsto (a \mapsto f(a, -))
> $$
> 是双射，且关于 $A, B, C$ 均自然，从而构成自然同构。
