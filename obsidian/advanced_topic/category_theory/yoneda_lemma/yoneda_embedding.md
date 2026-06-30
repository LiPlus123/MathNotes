# Yoneda 嵌入

## Yoneda 嵌入的定义

<!-- yoneda_embedding_def -->
> [!Definition]
> **Yoneda 嵌入 Yoneda Embedding**：设 $\mathcal{C}$ 为局部小范畴。定义函子
> $$
> \mathbf{よ}: \mathcal{C} \to [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]
> $$
> 如下：
> - **对象映射**：$\mathbf{よ}(A) = \mathrm{Hom}_{\mathcal{C}}(-, A): \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$，即反变 Hom 函子；
> - **态射映射**：对 $f: A \to B$，$\mathbf{よ}(f): \mathrm{Hom}(-, A) \Rightarrow \mathrm{Hom}(-, B)$，分量为后复合 $(\mathbf{よ}(f))_C = (- \circ f)^{\mathrm{op}} \cdot (\text{即} f_*): g \mapsto f \circ g$。
>
> $\mathbf{よ}$ 称为 $\mathcal{C}$ 的 **Yoneda 嵌入**，也记作 $h_{(-)}$，其中 $h_A = \mathrm{Hom}(-, A)$。目标范畴 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 称为 $\mathcal{C}$ 上的**预层范畴** $\widehat{\mathcal{C}}$。

> **注**：对偶地，协变版 Yoneda 嵌入 $\mathbf{よ}^{\mathrm{op}}: \mathcal{C}^{\mathrm{op}} \to [\mathcal{C}, \mathbf{Set}]$ 由 $A \mapsto \mathrm{Hom}(A, -)$ 给出，满足 Yoneda 引理的协变形式 $\mathrm{Nat}(\mathrm{Hom}(A,-), F) \cong F(A)$。本节以反变版 $\mathbf{よ}$ 为主，因为预层范畴 $\widehat{\mathcal{C}} = [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 在代数几何与拓扑斯理论中更为基础。

## 全忠实性

<!-- yoneda_embedding_fully_faithful -->
> [!Theorem]
> **Yoneda 嵌入全忠实 Yoneda Embedding is Fully Faithful**：Yoneda 嵌入 $\mathbf{よ}: \mathcal{C} \to [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 是全忠实函子，即对任意 $A, B \in \mathrm{Ob}(\mathcal{C})$，
> $$
> \mathrm{Hom}_{\mathcal{C}}(A, B) \xrightarrow{\sim} \mathrm{Nat}(\mathrm{Hom}(-, A),\, \mathrm{Hom}(-, B)), \quad f \mapsto \mathbf{よ}(f)
> $$
> 是双射。
>
> **证明思路**：应用反变 Yoneda 引理（[[statement_of_yoneda_lemma|Yoneda 引理的叙述与证明]] 中的反变版本），取 $F = \mathrm{Hom}(-, B)$（反变函子 $\mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$），得
> $$
> \mathrm{Nat}(\mathrm{Hom}(-, A), \mathrm{Hom}(-, B)) \cong \mathrm{Hom}(-, B)(A) = \mathrm{Hom}(A, B).
> $$
> 验证此双射与 $\mathbf{よ}$ 在态射上的映射一致（均由后复合给出）。

## 小范畴的嵌入定理

<!-- yoneda_small_cat_embedding -->
> [!Theorem]
> **小范畴全忠实嵌入预层范畴 Yoneda Embedding of Small Categories**：设 $\mathcal{C}$ 为小范畴。则 Yoneda 嵌入 $\mathbf{よ}: \mathcal{C} \hookrightarrow \widehat{\mathcal{C}}$ 是全忠实函子，将 $\mathcal{C}$ 嵌入预层范畴 $\widehat{\mathcal{C}} = [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$。进一步：
> 1. $\widehat{\mathcal{C}}$ 是（余）完备范畴（有所有小极限与余极限）；
> 2. $\mathbf{よ}$ 的像由 $\widehat{\mathcal{C}}$ 中的**可表预层**（representable presheaves）构成；
> 3. $\widehat{\mathcal{C}}$ 是 $\mathcal{C}$ 的"自由余完备化"：每个函子 $F: \mathcal{C} \to \mathcal{D}$（$\mathcal{D}$ 余完备）唯一延拓为保余极限函子 $\bar{F}: \widehat{\mathcal{C}} \to \mathcal{D}$（Kan 扩张，见 [[definition_of_kan_extension]]）。
>
> **证明思路**：全忠实性由 Yoneda 嵌入全忠实定理给出；$\widehat{\mathcal{C}}$ 的（余）完备性因集合范畴（余）完备、函子范畴继承逐点（余）极限而得。

## 可表预层的刻画

<!-- representable_presheaf_def -->
> [!Definition]
> **可表预层 Representable Presheaf**：预层 $P \in \widehat{\mathcal{C}} = [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 称为**可表的**，若 $P \cong \mathrm{Hom}_{\mathcal{C}}(-, A)$ 对某 $A \in \mathrm{Ob}(\mathcal{C})$ 成立（即 $P$ 在 Yoneda 嵌入的像中）。

<!-- yoneda_embedding_example_poset -->
> [!Example]+
> **前序集的 Yoneda 嵌入**：设 $(P, \leq)$ 为前序集，视作范畴 $\mathcal{P}$。预层范畴 $[\mathcal{P}^{\mathrm{op}}, \mathbf{Set}]$ 的对象是 $P$ 上的"下集"（downward closed set），即单调函数 $P^{\mathrm{op}} \to \mathbf{Set}$（等价于 $P$ 的下集，因为 $\mathbf{Set}$ 中这些函子取值 $\{*\}$ 或 $\varnothing$）。Yoneda 嵌入将 $a \in P$ 映为**主下集** ${\downarrow} a = \{x \in P \mid x \leq a\}$，这与偏序集理论中的 Dedekind–MacNeille 完备化密切相关。

<!-- yoneda_embedding_example_monoid -->
> [!Example]+
> **幺半群的 Yoneda 嵌入**：设 $M$ 为幺半群，视作单对象范畴 $\mathcal{B}M$。预层范畴 $[(\mathcal{B}M)^{\mathrm{op}}, \mathbf{Set}]$ 的对象是**右 $M$-集**（right $M$-sets），即右 $M$ 作用在集合上的结构。Yoneda 嵌入将 $\ast$ 映为 $M$ 本身（带有右乘作用）——即自由生成的 $M$-集。
