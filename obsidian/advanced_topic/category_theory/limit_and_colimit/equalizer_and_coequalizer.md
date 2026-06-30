# 等化子与余等化子

## 等化子的定义

<!-- equalizer_def -->
> [!Definition]
> **等化子 Equalizer**：设 $f, g: A \to B$ 为 $\mathcal{C}$ 中的一对平行态射。以 $f, g$ 为指标图表（形状为平行双箭头范畴 $\bullet \rightrightarrows \bullet$）的极限称为 $f$ 与 $g$ 的**等化子**，记为 $\mathrm{Eq}(f, g)$：即一个对象 $E$ 连同态射 $e: E \to A$，满足
> $$
> f \circ e = g \circ e,
> $$
> 且对任意满足 $f \circ h = g \circ h$ 的 $h: X \to A$，存在唯一的 $\bar{h}: X \to E$ 使得 $e \circ \bar{h} = h$。

<!-- equalizer_is_mono -->
> [!Theorem]
> **等化子是单态射 Equalizer is a Monomorphism**：等化子 $e: E \to A$ 是单态射。
>
> **证明思路**：设 $e \circ h_1 = e \circ h_2$，则 $h_1$ 与 $h_2$ 均满足 $f \circ (e \circ h_1) = g \circ (e \circ h_1)$，由等化子泛性质的唯一性得 $h_1 = h_2$。

## 余等化子的定义

<!-- coequalizer_def -->
> [!Definition]
> **余等化子 Coequalizer**：$f, g: A \to B$ 的**余等化子**是对应平行双箭头图表的余极限：即一个对象 $Q$ 连同态射 $q: B \to Q$，满足
> $$
> q \circ f = q \circ g,
> $$
> 且对任意满足 $k \circ f = k \circ g$ 的 $k: B \to X$，存在唯一的 $\bar{k}: Q \to X$ 使得 $\bar{k} \circ q = k$。

<!-- coequalizer_is_epi -->
> [!Theorem]
> **余等化子是满态射 Coequalizer is an Epimorphism**：余等化子 $q: B \to Q$ 是满态射。
>
> **证明思路**：由对偶原理与"等化子是单态射"立得。

## 与单/满态射的关系

<!-- equalizer_mono_characterization -->
> [!Theorem]
> **正规单态射 Regular Monomorphism**：称单态射 $m: A \to B$ 为**正规单态射**，若 $m$ 是某对平行态射的等化子。在 $\mathbf{Set}$、$\mathbf{Grp}$、$R\text{-}\mathbf{Mod}$ 中，每个单态射（单射）均正规。
>
> **证明思路（以 $\mathbf{Set}$ 为例）**：单射 $m: A \hookrightarrow B$ 是 $\mathrm{id}_B$ 与将 $B \setminus m(A)$ 折叠到某点的映射的等化子。

<!-- coequalizer_epi_characterization -->
> [!Theorem]
> **正规满态射 Regular Epimorphism**：称满态射 $e: A \to B$ 为**正规满态射**，若 $e$ 是某对平行态射的余等化子。在 $\mathbf{Set}$、$\mathbf{Grp}$、$R\text{-}\mathbf{Mod}$ 中，每个满态射均正规。
>
> **证明思路（以 $\mathbf{Set}$ 为例）**：满射 $e: A \twoheadrightarrow B$ 是核对等价关系 $A \times_B A \rightrightarrows A$ 的余等化子（即将等价类折叠的商映射）。

## 例子

<!-- equalizer_example_set -->
> [!Example]+
> **$\mathbf{Set}$ 中的等化子与余等化子**：
> - **等化子**：$f, g: A \to B$ 的等化子为子集 $E = \{a \in A \mid f(a) = g(a)\}$，$e: E \hookrightarrow A$ 为包含映射；
> - **余等化子**：为商集 $B / \sim$，其中 $\sim$ 是由 $\{(f(a), g(a)) \mid a \in A\}$ 生成的等价关系，$q: B \twoheadrightarrow B/\sim$ 为商映射。

<!-- equalizer_example_grp -->
> [!Example]+
> **$\mathbf{Grp}$ 中的等化子与余等化子**：
> - **等化子**：$\varphi, \psi: G \to H$ 的等化子为子群 $\{g \in G \mid \varphi(g) = \psi(g)\}$；
> - **余等化子**：为 $H / N$，其中 $N$ 是由 $\{\varphi(g) \psi(g)^{-1} \mid g \in G\}$ 正规生成的正规子群（对应 $\varphi, \psi$ 诱导的同态核的商）。

<!-- equalizer_example_mod -->
> [!Example]+
> **$R\text{-}\mathbf{Mod}$ 中的等化子与余等化子**：
> - **等化子**：$f, g: M \to N$ 的等化子为 $\ker(f - g) = \{m \in M \mid f(m) = g(m)\}$；
> - **余等化子**：为 $N / \mathrm{Im}(f - g)$，即 $f, g$ 之差的像的商模。

<!-- equalizer_example_top -->
> [!Example]+
> **$\mathbf{Top}$ 中的等化子**：$f, g: X \to Y$ 的等化子为子空间 $E = \{x \in X \mid f(x) = g(x)\}$，赋予 $X$ 的子空间拓扑，嵌入映射连续。
