# 伴随的唯一性

## 右伴随的唯一性

<!-- right_adjoint_unique -->
> [!Theorem]
> **右伴随在自然同构意义下唯一 Right Adjoint is Unique up to Natural Isomorphism**：设 $F: \mathcal{C} \to \mathcal{D}$，若 $G, G': \mathcal{D} \to \mathcal{C}$ 均为 $F$ 的右伴随（即 $F \dashv G$ 且 $F \dashv G'$），则 $G \cong G'$（存在自然同构 $G \xRightarrow{\sim} G'$）。
>
> **证明思路**：由 Yoneda 引理，$G$ 与 $G'$ 均将 $B$ 表示函子 $\mathrm{Hom}_{\mathcal{D}}(F(-), B): \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$：
> $$
> \mathrm{Hom}_{\mathcal{C}}(-, G(B)) \cong \mathrm{Hom}_{\mathcal{D}}(F(-), B) \cong \mathrm{Hom}_{\mathcal{C}}(-, G'(B)).
> $$
> 由可表函子的表示对象唯一性（见 [[density_and_consequences|稠密性与推论]]），$G(B) \cong G'(B)$ 自然地对所有 $B$ 成立，从而 $G \cong G'$ 为自然同构。

## 左伴随的唯一性

<!-- left_adjoint_unique -->
> [!Theorem]
> **左伴随在自然同构意义下唯一 Left Adjoint is Unique up to Natural Isomorphism**：设 $G: \mathcal{D} \to \mathcal{C}$，若 $F, F': \mathcal{C} \to \mathcal{D}$ 均为 $G$ 的左伴随，则 $F \cong F'$（自然同构）。
>
> **证明思路**：对偶地，$F(A)$ 与 $F'(A)$ 均表示函子 $\mathrm{Hom}_{\mathcal{C}}(A, G(-)): \mathcal{D} \to \mathbf{Set}$，由可表函子的唯一性得 $F(A) \cong F'(A)$ 关于 $A$ 自然，从而 $F \cong F'$。

## 推论

<!-- adjunction_unique -->
> [!Corollary]
> **伴随在自然同构意义下唯一 Uniqueness of Adjunction**：若 $(F, G, \varphi)$ 与 $(F, G', \varphi')$ 均为 $F$ 的伴随对（即 $F \dashv G$ 且 $F \dashv G'$），则存在唯一的自然同构 $\tau: G \xRightarrow{\sim} G'$ 使得 $\varphi' = (\tau \circ -) \circ \varphi$（即两个伴随同构由 $\tau$ 共轭）。
>
> **证明思路**：由右伴随唯一性定理，$\tau$ 的存在性与唯一性来自 Yoneda 引理的唯一性部分。

<!-- adjoint_unique_example -->
> [!Example]+
> **自由群函子的唯一性**：满足"自由群泛性质"的函子 $F: \mathbf{Set} \to \mathbf{Grp}$ 在自然同构意义下唯一（即由伴随 $F \dashv U$ 唯一确定），因此"以集合 $X$ 为生成集的自由群"在同构意义下唯一确定。这是伴随唯一性的直接应用。
