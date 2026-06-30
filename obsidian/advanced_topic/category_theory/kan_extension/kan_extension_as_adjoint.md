# Kan 扩张作为伴随

## 限制-扩张伴随三元组

<!-- kan_as_adjoint -->
> [!Theorem]
> **Kan 扩张作为伴随 Kan Extensions as Adjoints**：设 $K: \mathcal{C} \to \mathcal{D}$，$\mathcal{C}$ 小，$\mathcal{E}$ 完备且余完备。定义**限制函子**（预复合函子）
> $$
> K^*: [\mathcal{D}, \mathcal{E}] \to [\mathcal{C}, \mathcal{E}], \quad K^*(H) = H \circ K.
> $$
> 则存在伴随三元组：
> $$
> \mathrm{Lan}_K \dashv K^* \dashv \mathrm{Ran}_K,
> $$
> 即 $\mathrm{Lan}_K$ 是 $K^*$ 的左伴随，$\mathrm{Ran}_K$ 是 $K^*$ 的右伴随。具体地：
> $$
> \mathrm{Nat}(\mathrm{Lan}_K F,\, H) \cong \mathrm{Nat}(F,\, H \circ K) = \mathrm{Nat}(F,\, K^*(H)),
> $$
> $$
> \mathrm{Nat}(H,\, \mathrm{Ran}_K F) \cong \mathrm{Nat}(H \circ K,\, F) = \mathrm{Nat}(K^*(H),\, F).
> $$
>
> **证明思路**：左伴随的同构即 $\mathrm{Lan}_K F$ 的泛性质（见 [[definition_of_kan_extension|Kan 扩张的定义]]），对应单位为 $\eta: F \Rightarrow K^*(\mathrm{Lan}_K F)$。右伴随类似。由于 $\mathcal{C}$ 小、$\mathcal{E}$ 余完备，逐点余极限公式（见 [[pointwise_kan_extension|逐点 Kan 扩张]]）保证了左 Kan 扩张的存在性，从而 $K^*$ 的左伴随 $\mathrm{Lan}_K$ 整体存在。

> **注**：当 $\mathcal{E} = \mathbf{Set}$ 且 $\mathcal{C}$、$\mathcal{D}$ 均小时，$K^*$ 是预层范畴之间的预复合函子，$\mathrm{Lan}_K \dashv K^* \dashv \mathrm{Ran}_K$ 即预层范畴之间的几何态射结构的范畴论基础。

## 沿全忠实函子的 Kan 扩张是真扩张

<!-- kan_extension_along_ff -->
> [!Theorem]
> **沿全忠实函子的 Kan 扩张 Kan Extension along Fully Faithful Functor**：设 $K: \mathcal{C} \to \mathcal{D}$ 为**全忠实函子**，$F: \mathcal{C} \to \mathcal{E}$。若左 Kan 扩张 $\mathrm{Lan}_K F$ 存在，则单位
> $$
> \eta: F \xRightarrow{\sim} (\mathrm{Lan}_K F) \circ K
> $$
> 是**自然同构**（即 $\mathrm{Lan}_K F$ 确实是 $F$ 的扩张：限制到 $K(\mathcal{C})$ 上时恢复 $F$）。
>
> **证明思路**：当 $K$ 全忠实时，逗号范畴 $(K \downarrow K(c))$ 有终对象 $(c, \mathrm{id}_{K(c)})$，故逐点余极限 $(\mathrm{Lan}_K F)(K(c)) \cong F(c)$ 自然成立（终对象处的余极限即该对象自身）。

<!-- kan_extension_along_yoneda -->
> [!Corollary]
> **沿 Yoneda 嵌入的 Kan 扩张 Kan Extension along Yoneda Embedding**：设 $F: \mathcal{C} \to \mathcal{E}$（$\mathcal{C}$ 小，$\mathcal{E}$ 余完备），$\mathbf{よ}: \mathcal{C} \to [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 为 Yoneda 嵌入（全忠实）。则 $\mathrm{Lan}_{\mathbf{よ}} F: [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}] \to \mathcal{E}$ 是 $F$ 的**唯一保余极限（余连续）扩张**：
> $$
> \mathrm{Lan}_{\mathbf{よ}} F \circ \mathbf{よ} \cong F \quad \text{且} \quad \mathrm{Lan}_{\mathbf{よ}} F \text{ 保持所有余极限}.
> $$
> 这使 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 成为 $\mathcal{C}$ 的**自由余完备化**（见 [[examples_of_kan_extension|Kan 扩张的例子]]）。

## 与 §6 伴随理论的统一视角

<!-- kan_adjoint_unified -->
> [!Theorem]
> **Kan 扩张统一伴随与极限 Kan Extensions Unify Adjoints and Limits**：
> - **极限/余极限**：设 $K: \mathcal{C} \to \mathbf{1}$ 为常值函子（$\mathbf{1}$ 为终范畴），$K^*: [\mathbf{1}, \mathcal{E}] \cong \mathcal{E} \to [\mathcal{C}, \mathcal{E}]$ 为对角函子 $\Delta$。则 $\mathrm{Lan}_K = \operatorname{colim}$（余极限）为 $\Delta$ 的左伴随，$\mathrm{Ran}_K = \lim$（极限）为 $\Delta$ 的右伴随，即 $\operatorname{colim} \dashv \Delta \dashv \lim$；
> - **伴随函子**：设 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$），则 $F \cong \mathrm{Lan}_{\mathrm{Id}_{\mathcal{C}}} F$（沿恒等函子的 Kan 扩张），且 $G$ 可表述为 $F$ 的右 Kan 扩张：$G \cong \mathrm{Ran}_F \mathrm{Id}_{\mathcal{D}}$（或 $F \cong \mathrm{Lan}_G \mathrm{Id}_{\mathcal{C}}$ 对应余单位）。

> **注**：$\mathrm{Ran}_F \mathrm{Id}_{\mathcal{D}} \cong G$ 的含义为：$G$ 将 $d$ 映到 $(\mathrm{Ran}_F \mathrm{Id})(d) = \lim_{(c, Fc \to d)} c$，这正是 $F \dashv G$ 通过 Hom 集同构给出的对象。
