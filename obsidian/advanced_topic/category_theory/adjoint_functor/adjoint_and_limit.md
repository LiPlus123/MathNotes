# 伴随与极限

## 右伴随保持极限（RAPL）

<!-- rapl -->
> [!Theorem]
> **右伴随保持极限 RAPL：Right Adjoints Preserve Limits**：设 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{C}$）。则 $G$ 保持所有（小）极限：对任意图表 $D: \mathcal{I} \to \mathcal{D}$，若 $\lim D$ 在 $\mathcal{D}$ 中存在，则 $G(\lim D) \cong \lim(G \circ D)$ 在 $\mathcal{C}$ 中存在。
>
> **证明思路**：对任意 $X \in \mathrm{Ob}(\mathcal{C})$，利用伴随的 Hom 集同构与极限的 Yoneda 刻画：
> $$
> \mathrm{Hom}_{\mathcal{C}}(X, G(\lim D)) \cong \mathrm{Hom}_{\mathcal{D}}(F(X), \lim D) \cong \mathrm{Nat}(\Delta_{F(X)}, D).
> $$
> 又，$\mathrm{Nat}(\Delta_{F(X)}, D)$ 即以 $F(X)$ 为顶、$D$ 为底的锥集；由伴随自然性知此锥集自然同构于以 $X$ 为顶、$G \circ D$ 为底的锥集 $\mathrm{Nat}(\Delta_X, G \circ D) \cong \mathrm{Hom}(X, \lim(G \circ D))$。由 Yoneda 引理得 $G(\lim D) \cong \lim(G \circ D)$。

## 左伴随保持余极限（LAPC）

<!-- lapc -->
> [!Theorem]
> **左伴随保持余极限 LAPC：Left Adjoints Preserve Colimits**：设 $F \dashv G$。则 $F$ 保持所有（小）余极限：$F(\operatorname{colim} D) \cong \operatorname{colim}(F \circ D)$。
>
> **证明思路**：由对偶原理：$F: \mathcal{C} \to \mathcal{D}$ 有右伴随 $G$，等价于 $F^{\mathrm{op}}: \mathcal{C}^{\mathrm{op}} \to \mathcal{D}^{\mathrm{op}}$ 有左伴随 $G^{\mathrm{op}}$；由 RAPL 对 $\mathcal{D}^{\mathrm{op}}$ 中的极限（即 $\mathcal{D}$ 中的余极限）应用即得。

## 推论

<!-- rapl_consequences -->
> [!Corollary]
> **右伴随的正合性推论 Exactness Consequences**：
> - 右伴随 $G$ 保持极限，特别地保持：终对象、二元积、等化子、拉回；
> - 在阿贝尔范畴中，保持极限的函子等价于**左正合**（left exact）函子（保持有限极限即保持核）。
>
> **例子**：$\mathrm{Hom}_R(M, -)$ 是 $- \otimes_R M$ 的右伴随，故 $\mathrm{Hom}_R(M, -)$ 保持极限（左正合）；$- \otimes_R M$ 是左伴随，故保持余极限（右正合）。

<!-- lapc_consequences -->
> [!Corollary]
> **左伴随的正合性推论**：
> - 左伴随 $F$ 保持余极限，特别地保持：初对象、余积、余等化子、推出；
> - 在阿贝尔范畴中，保持余极限的函子等价于**右正合**（right exact）函子。

## 例子

<!-- rapl_example_hom -->
> [!Example]+
> **Hom 函子保持极限**：固定 $A$，$\mathrm{Hom}(A, -)$ 是其左伴随（若存在，如自由函子）的右伴随，故 $\mathrm{Hom}(A, -)$ 保持极限：$\mathrm{Hom}(A, \lim D) \cong \lim \mathrm{Hom}(A, D(-))$，即 Hom 函子保持乘积、等化子等。

<!-- lapc_example_free -->
> [!Example]+
> **自由函子保持余积**：自由群函子 $F: \mathbf{Set} \to \mathbf{Grp}$ 保持余积（不相交并 $\mapsto$ 自由积）：$F(X \sqcup Y) \cong F(X) * F(Y)$。类似地，自由模函子保持余积（直和）：$R^{\oplus(I \sqcup J)} \cong R^{\oplus I} \oplus R^{\oplus J}$。

<!-- rapl_example_sheafification -->
> [!Example]+
> **层化函子与包含函子**：包含 $\iota: \mathrm{Sh}(\mathcal{C}) \hookrightarrow \mathrm{PSh}(\mathcal{C})$ 是层化 $\mathbf{a}$ 的右伴随（$\mathbf{a} \dashv \iota$），故 $\iota$ 保持极限：层范畴中的极限可在预层范畴中逐点计算（结果自动是层）。而 $\mathbf{a}$ 保持余极限：层范畴中的余积、推出等通过层化预层来的余极限来计算。
