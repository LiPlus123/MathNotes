# 自然变换的复合

## 垂直复合

> **注**：垂直复合（Vertical Composition）已在 [[definition_of_natural_transformation|自然变换的定义]] 中给出：设 $\alpha: F \Rightarrow G$，$\beta: G \Rightarrow H$（$F, G, H: \mathcal{C} \to \mathcal{D}$），则 $(\beta \circ \alpha)_A = \beta_A \circ \alpha_A$。垂直复合赋予函子范畴 $[\mathcal{C}, \mathcal{D}]$ 的态射复合结构。

## 水平复合（Godement 乘积）

<!-- horizontal_composition_def -->
> [!Definition]
> **水平复合 Horizontal Composition / Godement Product**：设 $\alpha: F \Rightarrow G$（$F, G: \mathcal{C} \to \mathcal{D}$）与 $\beta: H \Rightarrow K$（$H, K: \mathcal{D} \to \mathcal{E}$）为自然变换。定义**水平复合** $\beta \ast \alpha: H \circ F \Rightarrow K \circ G$，其在 $A \in \mathrm{Ob}(\mathcal{C})$ 处的分量为
> $$
> (\beta \ast \alpha)_A = \beta_{G(A)} \circ H(\alpha_A) = K(\alpha_A) \circ \beta_{F(A)}.
> $$

<!-- horizontal_composition_well_defined -->
> [!Theorem]
> **水平复合是自然变换 Horizontal Composition is Natural**：上述两种定义方式给出相同结果（即 $\beta_{G(A)} \circ H(\alpha_A) = K(\alpha_A) \circ \beta_{F(A)}$），且 $\beta \ast \alpha$ 满足自然性。
>
> **证明思路**：等式 $\beta_{G(A)} \circ H(\alpha_A) = K(\alpha_A) \circ \beta_{F(A)}$ 即 $\beta$ 在 $\alpha_A: F(A) \to G(A)$ 上的自然性方块（将 $\alpha_A$ 视为 $\mathcal{D}$ 中的态射）。对自然性，取 $f: A \to B$，展开两侧并利用 $\alpha, \beta$ 的自然性及函子 $H, K$ 保持复合即得。

## Whiskering

<!-- whiskering_def -->
> [!Definition]
> **Whiskering**：设 $\alpha: F \Rightarrow G$（$F, G: \mathcal{C} \to \mathcal{D}$）为自然变换，$H: \mathcal{D} \to \mathcal{E}$ 与 $K: \mathcal{B} \to \mathcal{C}$ 为函子。
> - **右 whiskering**（post-whiskering）：$H \ast \alpha: H \circ F \Rightarrow H \circ G$，分量为 $(H \ast \alpha)_A = H(\alpha_A)$；
> - **左 whiskering**（pre-whiskering）：$\alpha \ast K: F \circ K \Rightarrow G \circ K$，分量为 $(\alpha \ast K)_B = \alpha_{K(B)}$。
>
> 两者均为水平复合的特例（令 $\beta = \mathrm{id}_H$ 或 $\alpha' = \mathrm{id}_K$）。

## 交换律（interchange law）

<!-- interchange_law -->
> [!Theorem]
> **交换律 Interchange Law**：设
> $$
> \alpha: F \Rightarrow G, \quad \alpha': G \Rightarrow H \quad (F, G, H: \mathcal{C} \to \mathcal{D}),
> $$
> $$
> \beta: F' \Rightarrow G', \quad \beta': G' \Rightarrow H' \quad (F', G', H': \mathcal{D} \to \mathcal{E}).
> $$
> 则水平复合与垂直复合满足**交换律**：
> $$
> (\beta' \circ \beta) \ast (\alpha' \circ \alpha) = (\beta' \ast \alpha') \circ (\beta \ast \alpha).
> $$
>
> **证明思路**：在对象 $A$ 处展开两侧，均等于
> $$
> \beta'_{H(A)} \circ G'(\alpha'_A) \circ \beta_{G(A)} \circ F'(\alpha_A).
> $$
> 利用 $\beta'$ 在 $\alpha'_A$ 上的自然性（$\beta'_{H(A)} \circ G'(\alpha'_A) = H'(\alpha'_A) \circ \beta'_{G(A)}$）与垂直复合定义，可证两侧相等。

> **注**：交换律表明水平复合与垂直复合相容，这正是"2-范畴"公理的核心（见 [[two_category|2-范畴初步]]）。

## 恒等自然变换的水平复合

<!-- horizontal_comp_identities -->
> [!Theorem]
> **恒等的水平复合**：对函子 $F: \mathcal{C} \to \mathcal{D}$ 与 $G: \mathcal{D} \to \mathcal{E}$，
> $$
> \mathrm{id}_G \ast \mathrm{id}_F = \mathrm{id}_{G \circ F}.
> $$
>
> **证明思路**：$(\mathrm{id}_G \ast \mathrm{id}_F)_A = \mathrm{id}_{G(F(A))} = (\mathrm{id}_{G \circ F})_A$。

<!-- whiskering_associativity -->
> [!Theorem]
> **水平复合的结合律 Associativity of Horizontal Composition**：水平复合在自然变换上满足结合律（与函子复合结合律相容）：$(\gamma \ast \beta) \ast \alpha = \gamma \ast (\beta \ast \alpha)$（括号两侧的结合方式对应函子复合的结合方式）。
>
> **证明思路**：分量级别归结为态射的复合，再由函子保持复合和 $\mathcal{E}$ 中复合的结合律得出。
