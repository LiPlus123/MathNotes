# 泛性质

## 泛态射

<!-- universal_morphism_from_def -->
> [!Definition]
> **从对象到函子的泛态射 Universal Morphism from an Object to a Functor**：设 $G: \mathcal{D} \to \mathcal{C}$ 为函子，$A \in \mathrm{Ob}(\mathcal{C})$。从 $A$ 到 $G$ 的**泛态射**（也称**泛箭头**）是一对 $(U, u)$，其中 $U \in \mathrm{Ob}(\mathcal{D})$，$u: A \to G(U)$ 是 $\mathcal{C}$ 中的态射，且满足以下**泛性质**：对任意 $D \in \mathrm{Ob}(\mathcal{D})$ 与任意 $\mathcal{C}$ 中的态射 $f: A \to G(D)$，存在唯一的 $\mathcal{D}$ 中的态射 $\bar{f}: U \to D$，使得
> $$
> G(\bar{f}) \circ u = f.
> $$

<!-- universal_morphism_to_def -->
> [!Definition]
> **从函子到对象的泛态射 Universal Morphism from a Functor to an Object**：设 $G: \mathcal{D} \to \mathcal{C}$ 为函子，$A \in \mathrm{Ob}(\mathcal{C})$。从 $G$ 到 $A$ 的**泛态射**是一对 $(U, u)$，其中 $U \in \mathrm{Ob}(\mathcal{D})$，$u: G(U) \to A$ 是 $\mathcal{C}$ 中的态射，且满足：对任意 $D \in \mathrm{Ob}(\mathcal{D})$ 与任意 $f: G(D) \to A$，存在唯一的 $\bar{f}: D \to U$ 使得
> $$
> u \circ G(\bar{f}) = f.
> $$

> **注**：两种泛态射互为对偶：$(U, u)$ 是从 $A$ 到 $G$ 的泛态射当且仅当 $(U, u^{\mathrm{op}})$ 是从 $A$ 到 $G^{\mathrm{op}}: \mathcal{D}^{\mathrm{op}} \to \mathcal{C}^{\mathrm{op}}$ 的"从函子到对象"的泛态射（在对偶范畴中）。

## 泛元素

<!-- universal_element_def -->
> [!Definition]
> **泛元素 Universal Element**：设 $F: \mathcal{C} \to \mathbf{Set}$ 为函子。$F$ 的**泛元素**是一对 $(U, e)$，其中 $U \in \mathrm{Ob}(\mathcal{C})$，$e \in F(U)$，且满足：对任意 $C \in \mathrm{Ob}(\mathcal{C})$ 与任意元素 $x \in F(C)$，存在唯一的 $\mathcal{C}$ 中的态射 $f: U \to C$ 使得
> $$
> F(f)(e) = x.
> $$

> **注**：泛元素是泛态射的特例：取 $G$ 为忘却函子（或直接考虑集合范畴），$e$ 对应 $u: \{\ast\} \to F(U)$，$\ast \mapsto e$。泛元素将在 [[representable_functor|可表函子]] 与 [[statement_of_yoneda_lemma|Yoneda 引理]] 中起关键作用。

## 泛性质刻画对象的唯一性

<!-- universal_property_uniqueness -->
> [!Theorem]
> **泛态射在同构意义下唯一 Uniqueness of Universal Morphism**：若 $(U, u)$ 与 $(U', u')$ 均是从 $A$ 到 $G: \mathcal{D} \to \mathcal{C}$ 的泛态射，则存在唯一同构 $\varphi: U \xrightarrow{\sim} U'$ 使得 $G(\varphi) \circ u = u'$。
>
> **证明思路**：由 $(U, u)$ 的泛性质，存在唯一 $\varphi: U \to U'$ 使 $G(\varphi) \circ u = u'$；由 $(U', u')$ 的泛性质，存在唯一 $\psi: U' \to U$ 使 $G(\psi) \circ u' = u$。则 $G(\psi \circ \varphi) \circ u = u$；而 $G(\mathrm{id}_U) \circ u = u$，由 $(U, u)$ 的唯一性知 $\psi \circ \varphi = \mathrm{id}_U$。同理 $\varphi \circ \psi = \mathrm{id}_{U'}$，故 $\varphi$ 为同构。

> **注**：上述"同构意义下唯一"是范畴论中**泛性质刻画对象**的基本模式。凡是由泛性质定义的对象（积、余积、极限、自由对象、等化子、拉回等），都在同构意义下唯一；反之，同构意义下的唯一性往往是某个泛性质的反映。

## 泛态射的例子

<!-- universal_morphism_example_free_group -->
> [!Example]+
> **自由群的泛性质 Universal Property of Free Group**：设 $U: \mathbf{Grp} \to \mathbf{Set}$ 为忘却函子，$X$ 为集合。自由群 $F(X)$ 连同包含映射 $\iota: X \to U(F(X))$ 构成从 $X$ 到 $U$ 的泛态射：对任意群 $G$ 与映射 $f: X \to U(G)$，存在唯一群同态 $\bar{f}: F(X) \to G$ 使 $U(\bar{f}) \circ \iota = f$。

<!-- universal_morphism_example_tensor -->
> [!Example]+
> **张量积的泛性质 Universal Property of Tensor Product**：设 $R$ 为交换环，$M, N$ 为 $R$-模。张量积 $M \otimes_R N$ 连同双线性映射 $\iota: M \times N \to M \otimes_R N$，$(m, n) \mapsto m \otimes n$ 构成泛双线性映射：对任意 $R$-模 $P$ 与双线性映射 $f: M \times N \to P$，存在唯一线性映射 $\bar{f}: M \otimes_R N \to P$ 使得 $\bar{f} \circ \iota = f$。

<!-- universal_morphism_example_product -->
> [!Example]+
> **积的泛性质 Universal Property of Product**：集合（或群、拓扑空间、模等）的积 $A \times B$ 连同投影 $\pi_1: A \times B \to A$，$\pi_2: A \times B \to B$ 构成泛性质：对任意对象 $X$ 与态射 $f_1: X \to A$，$f_2: X \to B$，存在唯一的 $\langle f_1, f_2 \rangle: X \to A \times B$ 使得 $\pi_1 \circ \langle f_1, f_2 \rangle = f_1$，$\pi_2 \circ \langle f_1, f_2 \rangle = f_2$。

<!-- universal_morphism_example_completion -->
> [!Example]+
> **完备化的泛性质 Universal Property of Completion**：设 $(M, d)$ 为度量空间，$(\hat{M}, \hat{d})$ 为其完备化，$\iota: M \hookrightarrow \hat{M}$ 为等距嵌入。泛性质：对任意完备度量空间 $N$ 与一致连续映射 $f: M \to N$，存在唯一的一致连续映射 $\bar{f}: \hat{M} \to N$ 使得 $\bar{f} \circ \iota = f$。
