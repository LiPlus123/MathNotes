# 丰富范畴

## 丰富范畴的定义

<!-- enriched_category_def -->
> [!Definition]
> **丰富范畴 Enriched Category**：设 $(\mathcal{V}, \otimes, I, \alpha, \lambda, \rho)$ 是幺半范畴。一个 **$\mathcal{V}$-丰富范畴**（$\mathcal{V}$-enriched category），也称**丰富在 $\mathcal{V}$ 上的范畴**，是数据 $\mathcal{C}$，包含：
> - 一个**对象类** $\mathrm{Ob}(\mathcal{C})$；
> - 对每对对象 $A, B \in \mathrm{Ob}(\mathcal{C})$，一个**态射对象** $\mathcal{C}(A, B) \in \mathrm{Ob}(\mathcal{V})$（取值在 $\mathcal{V}$ 中，而非集合）；
> - 对每三个对象 $A, B, C$，一个 $\mathcal{V}$-态射（**复合**）：
> $$
> \circ_{A,B,C}: \mathcal{C}(B, C) \otimes \mathcal{C}(A, B) \to \mathcal{C}(A, C);
> $$
> - 对每个对象 $A$，一个 $\mathcal{V}$-态射（**恒等**）：
> $$
> j_A: I \to \mathcal{C}(A, A);
> $$
>
> 满足以下相容条件：
>
> **结合律**（associativity）：
> $$
> \circ_{A,B,D} \circ (\circ_{B,C,D} \otimes \mathrm{id}) = \circ_{A,C,D} \circ (\mathrm{id} \otimes \circ_{A,B,C}) \circ \alpha_{\mathcal{C}(C,D), \mathcal{C}(B,C), \mathcal{C}(A,B)};
> $$
>
> **左单位律**（left unit law）：
> $$
> \circ_{A,A,B} \circ (j_A \otimes \mathrm{id}_{\mathcal{C}(A,B)}) = \lambda_{\mathcal{C}(A,B)};
> $$
>
> **右单位律**（right unit law）：
> $$
> \circ_{A,B,B} \circ (\mathrm{id}_{\mathcal{C}(A,B)} \otimes j_B) = \rho_{\mathcal{C}(A,B)}.
> $$

> **注**：普通（局部小）范畴恰好是 $(\mathbf{Set}, \times, \{*\})$-丰富范畴——$\mathrm{Ob}(\mathcal{C})$ 取通常意义，$\mathcal{C}(A, B) = \mathrm{Hom}_{\mathcal{C}}(A, B)$ 为集合，复合为通常复合，恒等由 $j_A(*) = \mathrm{id}_A$ 给出。

## 丰富函子

<!-- enriched_functor_def -->
> [!Definition]
> **丰富函子 Enriched Functor**：设 $\mathcal{C}$ 与 $\mathcal{D}$ 是 $\mathcal{V}$-丰富范畴。一个 **$\mathcal{V}$-丰富函子**（$\mathcal{V}$-enriched functor） $F: \mathcal{C} \to \mathcal{D}$ 是：
> - 对每个 $A \in \mathrm{Ob}(\mathcal{C})$，一个 $F(A) \in \mathrm{Ob}(\mathcal{D})$；
> - 对每对 $A, B \in \mathrm{Ob}(\mathcal{C})$，一个 $\mathcal{V}$-态射（**态射映射**）：
> $$
> F_{A,B}: \mathcal{C}(A, B) \to \mathcal{D}(F(A), F(B));
> $$
>
> 满足与复合和恒等相容：
> $$
> F_{A,C} \circ \circ_{A,B,C}^{\mathcal{C}} = \circ_{F(A),F(B),F(C)}^{\mathcal{D}} \circ (F_{B,C} \otimes F_{A,B}), \qquad F_{A,A} \circ j_A^{\mathcal{C}} = j_{F(A)}^{\mathcal{D}}.
> $$

## 主要例子

<!-- set_enriched -->
> [!Example]+
> **$\mathbf{Set}$-丰富范畴**：$\mathbf{Set}$-丰富范畴与普通（局部小）范畴等同。$\mathcal{C}(A, B)$ 是集合，复合是集合映射。

<!-- ab_enriched -->
> [!Definition]
> **预加法范畴（$\mathbf{Ab}$-丰富范畴）Preadditive Category**：一个**预加法范畴**（preadditive category），也称 **$\mathbf{Ab}$-丰富范畴**（$\mathbf{Ab}$-enriched category），是丰富在 $(\mathbf{Ab}, \otimes_{\mathbb{Z}}, \mathbb{Z})$ 上的范畴：
> - $\mathcal{C}(A, B)$ 是阿贝尔群；
> - 复合 $\circ_{A,B,C}: \mathcal{C}(B,C) \otimes_{\mathbb{Z}} \mathcal{C}(A,B) \to \mathcal{C}(A,C)$ 是阿贝尔群同态；
>
> 等价地（利用 $\mathbf{Ab}$ 的对称闭结构），预加法范畴是满足以下条件的范畴：任意两对象间的 Hom 集 $\mathrm{Hom}(A, B)$ 是阿贝尔群，且复合关于加法双线性：
> $$
> h \circ (f + g) = h \circ f + h \circ g, \qquad (f + g) \circ h = f \circ h + g \circ h.
> $$

> **注**：左 $R$-模范畴 $R\text{-}\mathbf{Mod}$、阿贝尔群范畴 $\mathbf{Ab}$ 均是预加法范畴。预加法范畴上配以零对象与有限双积，即成加法范畴。

<!-- vect_enriched -->
> [!Example]+
> **$\mathbf{Vect}_F$-丰富范畴**：丰富在 $(\mathbf{Vect}_F, \otimes_F, F)$ 上的范畴称为 **$F$-线性范畴**（$F$-linear category）：$\mathcal{C}(A, B)$ 是 $F$-向量空间，复合 $F$-双线性。$F$-代数（$F$ 上的结合单位代数）可等同于具有单个对象的 $\mathbf{Vect}_F$-丰富范畴。

<!-- enriched_hom_functor -->
> [!Theorem]
> **丰富 Hom 函子与 Yoneda 引理**：设 $\mathcal{C}$ 是 $\mathcal{V}$-丰富范畴（$\mathcal{V}$ 为对称闭幺半范畴）。则存在 $\mathcal{V}$-丰富版 Yoneda 引理：
> $$
> \mathcal{V}\text{-}\mathrm{Nat}(\mathcal{C}(A, -), F) \cong F(A) \qquad \text{（在 } \mathcal{V} \text{ 中自然同构）},
> $$
> 其中 $\mathcal{V}\text{-}\mathrm{Nat}$ 表示 $\mathcal{V}$-丰富自然变换的 $\mathcal{V}$-对象。
>
> **证明思路**：类比普通 Yoneda 引理的证明，将所有"集合值"替换为"$\mathcal{V}$-对象值"，利用 $\mathcal{V}$ 的闭结构（内部 Hom）完成构造。
