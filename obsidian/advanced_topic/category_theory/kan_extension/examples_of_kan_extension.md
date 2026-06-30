# Kan 扩张的例子

## 极限与余极限作为 Kan 扩张

<!-- kan_limit_colimit -->
> [!Example]+
> **极限与余极限作为 Kan 扩张 Limits and Colimits as Kan Extensions**：设 $K: \mathcal{C} \to \mathbf{1}$ 为唯一函子（$\mathbf{1}$ 为终范畴），$F: \mathcal{C} \to \mathcal{E}$ 为图表。限制函子 $K^*: \mathcal{E} \cong [\mathbf{1}, \mathcal{E}] \to [\mathcal{C}, \mathcal{E}]$ 即对角函子 $\Delta$（将每个对象 $E$ 映为常值函子）。则：
> $$
> \mathrm{Lan}_K F \cong \operatorname{colim}_{\mathcal{C}} F, \quad \mathrm{Ran}_K F \cong \lim_{\mathcal{C}} F.
> $$
> 逐点公式中，$(K \downarrow *) \cong \mathcal{C}$，故 $(\mathrm{Lan}_K F)(*) = \operatorname{colim}_{\mathcal{C}} F$；$(* \downarrow K) \cong \mathcal{C}$，故 $(\mathrm{Ran}_K F)(*) = \lim_{\mathcal{C}} F$。这说明极限与余极限均为 Kan 扩张的特例。

## 伴随函子作为 Kan 扩张

<!-- kan_adjoint_example -->
> [!Example]+
> **右伴随作为 Kan 扩张 Right Adjoint as a Kan Extension**：设 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{C}$）。则右伴随 $G$ 同构于 $\mathrm{Id}_{\mathcal{D}}$ 沿 $F$ 的右 Kan 扩张：
> $$
> G \cong \mathrm{Ran}_F \mathrm{Id}_{\mathcal{D}}: \mathcal{D} \to \mathcal{C}.
> $$
> 逐点公式：$G(d) = \lim_{(c,\, Fc \to d) \in (F \downarrow d)} c$（在 $\mathcal{C}$ 中对逗号范畴 $(F \downarrow d)$ 取极限，投影到 $\mathcal{C}$）。余单位 $\varepsilon: F \circ G \Rightarrow \mathrm{Id}_{\mathcal{D}}$ 即 Kan 扩张的结构自然变换。对偶地，左伴随 $F \cong \mathrm{Lan}_G \mathrm{Id}_{\mathcal{C}}$。

<!-- kan_free_forgetful_example -->
> [!Example]+
> **自由函子作为 Kan 扩张**：自由群函子 $F: \mathbf{Set} \to \mathbf{Grp}$ 是遗忘函子 $U: \mathbf{Grp} \to \mathbf{Set}$ 的左伴随，故 $F \cong \mathrm{Lan}_U \mathrm{Id}_{\mathbf{Grp}}$。逐点公式给出：$F(S) = \operatorname{colim}_{(G,\, U(G) \to S)} G$（对所有以 $S$ 为像的群取余极限）。这一余极限正是以 $S$ 为生成集的自由群。

## Yoneda 嵌入的 Kan 扩张（自由余完备化）

<!-- kan_free_cocompletion -->
> [!Example]+
> **自由余完备化 Free Cocompletion**：设 $\mathcal{C}$ 为小范畴，$\mathbf{よ}: \mathcal{C} \to [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 为 Yoneda 嵌入。对任意余完备范畴 $\mathcal{E}$ 与函子 $F: \mathcal{C} \to \mathcal{E}$，其沿 $\mathbf{よ}$ 的左 Kan 扩张
> $$
> \mathrm{Lan}_{\mathbf{よ}} F: [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}] \to \mathcal{E}
> $$
> 是 $F$ 的**唯一保余极限扩张**（即唯一满足 $\mathrm{Lan}_{\mathbf{よ}} F \circ \mathbf{よ} \cong F$ 且保余极限的函子）。因此，预层范畴 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 连同 Yoneda 嵌入 $\mathbf{よ}$ 构成 $\mathcal{C}$ 的**自由余完备化**：
> $$
> \mathrm{Fun}^{\mathrm{colim}}([\mathcal{C}^{\mathrm{op}}, \mathbf{Set}],\, \mathcal{E}) \simeq \mathrm{Fun}(\mathcal{C},\, \mathcal{E}),
> $$
> 其中左侧为保余极限函子范畴。

<!-- kan_free_completion -->
> [!Example]+
> **自由完备化 Free Completion**：对偶地，$[\mathcal{C}, \mathbf{Set}]$ 连同协变 Yoneda 嵌入 $h_{(-)}: \mathcal{C} \to [\mathcal{C}, \mathbf{Set}]^{\mathrm{op}}$（等价地，$\mathcal{C}^{\mathrm{op}}$ 的自由余完备化）构成 $\mathcal{C}$ 的**自由完备化**。任意 $F: \mathcal{C} \to \mathcal{E}$（$\mathcal{E}$ 完备）可唯一地扩张为保极限函子 $\mathrm{Ran}_{\mathbf{よ}^{\mathrm{op}}} F: [\mathcal{C}, \mathbf{Set}]^{\mathrm{op}} \to \mathcal{E}$。

## 神经定理（分类空间作为 Kan 扩张）

<!-- kan_nerve_realization -->
> [!Example]+
> **几何实现与奇异单纯形：Kan 扩张视角**：设 $\Delta$ 为单纯形范畴（对象为有限全序集 $[n]$），$\iota: \Delta \to \mathbf{Top}$ 为标准几何单纯形 $[n] \mapsto |\Delta^n|$。则**几何实现**函子
> $$
> |-|: \mathbf{sSet} = [\Delta^{\mathrm{op}}, \mathbf{Set}] \to \mathbf{Top}
> $$
> 是 $\iota$ 沿 Yoneda 嵌入的左 Kan 扩张 $\mathrm{Lan}_{\mathbf{よ}} \iota$，即 $\iota$ 的自由余连续扩张。**奇异复形**函子 $\mathrm{Sing}: \mathbf{Top} \to \mathbf{sSet}$，$\mathrm{Sing}(X)_n = \mathrm{Hom}_{\mathbf{Top}}(|\Delta^n|, X)$，是 $\iota$ 沿某函子的右 Kan 扩张。几何实现与奇异复形构成伴随对 $|-| \dashv \mathrm{Sing}$，这是同伦论的基础。
