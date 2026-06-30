# 逐点 Kan 扩张

## 左 Kan 扩张的逐点公式

<!-- pointwise_left_kan_extension -->
> [!Theorem]
> **左 Kan 扩张的逐点公式 Pointwise Formula for Left Kan Extension**：设 $K: \mathcal{C} \to \mathcal{D}$，$F: \mathcal{C} \to \mathcal{E}$，$\mathcal{C}$ 小，$\mathcal{E}$ 余完备。则 $F$ 沿 $K$ 的左 Kan 扩张逐点由余极限给出：
> $$
> (\mathrm{Lan}_K F)(d) = \operatorname{colim}_{(c,\, k) \in (K \downarrow d)} F(c),
> $$
> 其中 $(K \downarrow d)$ 是**逗号范畴**（对象为二元组 $(c, k: K(c) \to d)$，$c \in \mathrm{Ob}(\mathcal{C})$，$k \in \mathrm{Hom}_{\mathcal{D}}(K(c), d)$），余极限的图表为合成
> $$
> (K \downarrow d) \xrightarrow{\pi_c} \mathcal{C} \xrightarrow{F} \mathcal{E}.
> $$
> 对 $\mathcal{D}$ 中的态射 $f: d \to d'$，$(\mathrm{Lan}_K F)(f)$ 由余极限的泛性质（沿 $(c, k) \mapsto (c, f \circ k)$ 诱导）定义。

> **注**：单位 $\eta: F \Rightarrow (\mathrm{Lan}_K F) \circ K$ 的分量 $\eta_c: F(c) \to (\mathrm{Lan}_K F)(K(c))$ 是将 $F(c)$ 包含到余极限中的典范态射，对应于 $(K \downarrow K(c))$ 中的典范对象 $(c, \mathrm{id}_{K(c)})$。

## 右 Kan 扩张的逐点公式

<!-- pointwise_right_kan_extension -->
> [!Theorem]
> **右 Kan 扩张的逐点公式 Pointwise Formula for Right Kan Extension**：设 $K: \mathcal{C} \to \mathcal{D}$，$F: \mathcal{C} \to \mathcal{E}$，$\mathcal{C}$ 小，$\mathcal{E}$ 完备。则 $F$ 沿 $K$ 的右 Kan 扩张逐点由极限给出：
> $$
> (\mathrm{Ran}_K F)(d) = \lim_{(c,\, k) \in (d \downarrow K)} F(c),
> $$
> 其中 $(d \downarrow K)$ 是逗号范畴（对象为二元组 $(c, k: d \to K(c))$，$c \in \mathrm{Ob}(\mathcal{C})$），极限的图表为
> $$
> (d \downarrow K) \xrightarrow{\pi_c} \mathcal{C} \xrightarrow{F} \mathcal{E}.
> $$

## 逐点性的判定

<!-- pointwise_kan_extension_characterization -->
> [!Definition]
> **逐点 Kan 扩张 Pointwise Kan Extension**：称左 Kan 扩张 $(\mathrm{Lan}_K F, \eta)$ 是**逐点的**（pointwise），若对每个 $d \in \mathrm{Ob}(\mathcal{D})$，$(\mathrm{Lan}_K F)(d)$ 是上述逐点余极限。等价地，若对所有 $E \in \mathrm{Ob}(\mathcal{E})$，$\mathrm{Hom}_{\mathcal{E}}(-, E)$ 将 $\mathrm{Lan}_K F$ 保持为 $\mathrm{Ran}_K \mathrm{Hom}(F(-), E)$（Hom 函子将左 Kan 扩张变为右 Kan 扩张）。

> **注**：逐点 Kan 扩张与"绝对 Kan 扩张"（被任何函子保持的 Kan 扩张）不同。前者以余极限显式给出，性质更好；后者无需余极限即可定义，适用范围更广。

<!-- pointwise_preservation -->
> [!Theorem]
> **逐点 Kan 扩张被表示函子保持 Pointwise Kan Extension Preserved by Representables**：设 $\mathrm{Lan}_K F$ 是逐点左 Kan 扩张。则对任意保持余极限的函子 $G: \mathcal{E} \to \mathcal{E}'$，$G \circ \mathrm{Lan}_K F \cong \mathrm{Lan}_K (G \circ F)$（$G$ 与左 Kan 扩张交换）。特别地，逐点左 Kan 扩张被所有保余极限函子保持。
>
> **证明思路**：$G$ 保持余极限，故逐点公式中的余极限在 $G$ 作用下变为 $G \circ F$ 的相应逐点余极限。

## 逐点公式的例子

<!-- pointwise_kan_colimit_example -->
> [!Example]+
> **离散情形：余积作为逐点 Kan 扩张**：设 $\mathcal{C}$ 为离散范畴（仅有恒等态射），$K: \mathcal{C} \to \mathbf{1}$（终范畴），$F: \mathcal{C} \to \mathcal{E}$（选取一族对象 $\{F(c)\}_{c \in \mathcal{C}}$）。则逗号范畴 $(K \downarrow *)$ 等价于 $\mathcal{C}$（每个对象 $c$ 对应唯一态射 $K(c) = * \to *$），故
> $$
> (\mathrm{Lan}_K F)(*) = \operatorname{colim}_{\mathcal{C}} F = \coprod_{c \in \mathcal{C}} F(c).
> $$
> 即余积是沿常值函子 $K: \mathcal{C} \to \mathbf{1}$ 的左 Kan 扩张。

<!-- pointwise_kan_end_example -->
> [!Example]+
> **预层上的逐点左 Kan 扩张（Yoneda 情形）**：设 $K = \mathbf{よ}: \mathcal{C} \to [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 为 Yoneda 嵌入，$F: \mathcal{C} \to \mathcal{E}$，$\mathcal{E}$ 余完备。则逐点公式给出：
> $$
> (\mathrm{Lan}_{\mathbf{よ}} F)(P) = \operatorname{colim}_{(c,\, h^c \to P) \in (\mathbf{よ} \downarrow P)} F(c),
> $$
> 其中 $h^c = \mathrm{Hom}(-, c)$。这与预层的余极限分解（密度定理）一致：$P \cong \operatorname{colim}_{(c, h^c \to P)} h^c$（见 [[density_and_universality|密度定理]]）。$\mathrm{Lan}_{\mathbf{よ}} F$ 是 $F$ 的"自由余连续扩张"（见 [[kan_extension_as_adjoint|Kan 扩张作为伴随]]）。
