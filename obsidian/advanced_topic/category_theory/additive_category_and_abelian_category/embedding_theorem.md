# 嵌入定理

## Freyd–Mitchell 嵌入定理

<!-- freyd_mitchell_embedding_theorem -->
> [!Theorem]
> **Freyd–Mitchell 嵌入定理 Freyd–Mitchell Embedding Theorem**：设 $\mathcal{A}$ 是**小**阿贝尔范畴。则存在环 $R$（一般为非交换环）与**全忠实正合函子**（fully faithful exact functor）
> $$
> \Phi: \mathcal{A} \hookrightarrow R\text{-}\mathbf{Mod},
> $$
> 即 $\Phi$ 满足：
> - **全忠实**：$\mathrm{Hom}_{\mathcal{A}}(A, B) \cong \mathrm{Hom}_R(\Phi(A), \Phi(B))$（作为集合的双射，对所有 $A, B$）；
> - **正合**：$\Phi$ 保持有限极限与有限余极限（等价地：保持有限正合列，即保持核、余核、正合性）。
>
> **证明思路**：
> 1. 嵌入到 $\mathbf{Ab}$-值函子范畴：考虑 Yoneda 嵌入 $\mathcal{A} \hookrightarrow [\mathcal{A}^{\mathrm{op}}, \mathbf{Ab}]$（反变 $\mathbf{Ab}$-值函子范畴），利用阿贝尔范畴的内部 Hom 结构；
> 2. 提取"正合函子"子范畴：在 $[\mathcal{A}^{\mathrm{op}}, \mathbf{Ab}]$ 中选取所有左正合函子构成的满子范畴，再利用 Gabriel-Popescu 定理（或直接构造）得到 $R\text{-}\mathbf{Mod}$ 的等价；
> 3. 复合上述嵌入即为所求 $\Phi$。环 $R$ 由 $\mathcal{A}$ 的自同态代数确定，具体构造较技术性。

> **注**：该定理由 Peter Freyd 与 Barry Mitchell 于 1960 年代独立证明，是同调代数的基础性结果。定理要求 $\mathcal{A}$ 为小范畴；对非小的阿贝尔范畴（如 $R\text{-}\mathbf{Mod}$ 本身），定理不直接适用，但可对任意集合大小的子范畴应用。

## 图追踪法的合法性

<!-- diagram_chasing_legality -->
> [!Theorem]
> **图追踪法的合法性 Legitimacy of Diagram Chasing**：在任意（小）阿贝尔范畴 $\mathcal{A}$ 中，涉及有限图（有限个对象与态射）的图追踪论证均合法，即可以像在 $R\text{-}\mathbf{Mod}$ 中一样对"元素"进行追踪。
>
> 精确叙述：若某命题可由以下操作有限次合成而得——
> - 取满足给定方程 $f(x) = y$ 的"元素" $x$（即从广义元素 $X \xrightarrow{x} A$ 出发）；
> - 将态射作用于"元素"（复合态射）；
> - 判断两个"元素"相等或为零；
>
> 则该命题在 $R\text{-}\mathbf{Mod}$ 中成立当且仅当在任意阿贝尔范畴中成立。
>
> **证明思路**：由 Freyd–Mitchell 嵌入定理，将 $\mathcal{A}$ 嵌入某个 $R\text{-}\mathbf{Mod}$：图追踪在 $R\text{-}\mathbf{Mod}$ 中以通常集合元素进行；由 $\Phi$ 的全忠实性与正合性，$R\text{-}\mathbf{Mod}$ 中的图追踪结论反映到 $\mathcal{A}$ 中；因此 $\mathcal{A}$ 中的图追踪论证是合法的。

<!-- diagram_chasing_applications -->
> [!Example]+
> **图追踪法的应用**：以下结论在任意阿贝尔范畴中均可通过图追踪证明（与在 $R\text{-}\mathbf{Mod}$ 中的证明完全平行）：
> 1. **蛇形引理**（见 [[exact_sequence|正合列]]）：连接态射 $\partial$ 的存在性与正合性；
> 2. **五引理**：$\alpha_3$ 的同构性；
> 3. **九引理**：第三行的正合性；
> 4. **马蹄引理**（Horseshoe Lemma）：短正合列的投射分解的存在性；
> 5. **四引理**（Four Lemma）：五引理的一半版本，单/满的传递性。

## 正合函子

<!-- exact_functor_def -->
> [!Definition]
> **正合函子 Exact Functor**：设 $F: \mathcal{A} \to \mathcal{B}$ 是阿贝尔范畴之间的加法函子。
> - $F$ 称为**左正合**（left exact），若它保持有限极限（等价地：保持核，即短正合列 $0 \to A \to B \to C$ 映到正合列 $0 \to FA \to FB \to FC$）；
> - $F$ 称为**右正合**（right exact），若它保持有限余极限（等价地：保持余核，即 $A \to B \to C \to 0$ 映到 $FA \to FB \to FC \to 0$ 正合）；
> - $F$ 称为**正合**（exact），若既左正合又右正合（即短正合列映到短正合列）。

> **注**：右伴随保持极限，故为左正合；左伴随保持余极限，故为右正合。Freyd–Mitchell 嵌入所用 $\Phi$ 是正合函子，这保证了图追踪的合法性。在同调代数中，正合函子的"不正合度"由导出函子（derived functor）$\mathrm{Ext}^n$、$\mathrm{Tor}_n$ 等度量。
