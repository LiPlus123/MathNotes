# 茎与芽

## 茎

<!-- stalk_def -->
> [!Definition]
> **茎 Stalk**：设 $\mathcal{F}$ 是拓扑空间 $X$ 上的预层，$x \in X$。$\mathcal{F}$ 在点 $x$ 处的**茎**（stalk）定义为：
> $$
> \mathcal{F}_x = \varinjlim_{U \ni x} \mathcal{F}(U),
> $$
> 即对所有包含 $x$ 的开集 $U$ 构成的有向系（以反包含为偏序）取**滤过余极限**（filtered colimit）。
>
> 具体地：$\mathcal{F}_x$ 由等价对 $(U, s)$（$U \ni x$ 为开集，$s \in \mathcal{F}(U)$）构成，商去等价关系：$(U, s) \sim (V, t)$ 当且仅当存在开集 $W \subseteq U \cap V$ 且 $x \in W$，使得 $s|_W = t|_W$。

> **注**：包含 $x$ 的开集族按反包含方向构成**有向偏序集**（directed poset），限制态射 $\mathcal{F}(U) \to \mathcal{F}(V)$（$V \subseteq U$）构成有向图表，故 $\mathcal{F}_x$ 是滤过余极限（见 [[filtered_colimit|滤过余极限]]）。

## 芽

<!-- germ_def -->
> [!Definition]
> **芽 Germ**：设 $\mathcal{F}$ 是拓扑空间 $X$ 上的预层，$x \in X$，$U$ 是包含 $x$ 的开集，$s \in \mathcal{F}(U)$。截面 $s$ 在 $x$ 处的**芽**（germ），记作 $[s]_x$ 或 $\mathrm{germ}_x(s)$，是 $(U, s)$ 在茎 $\mathcal{F}_x$ 中的等价类。

> **注**：芽是截面的"局部等价类"，只关心截面在 $x$ 的某个邻域内的行为，而忽略其他地方的差异。

## 茎化函子

<!-- stalk_functor -->
> [!Theorem]
> **茎化函子 Stalk Functor**：对每个点 $x \in X$，取茎操作定义了函子：
> $$
> (-)_x: \mathrm{PSh}(X, \mathcal{C}) \to \mathcal{C}, \qquad \mathcal{F} \mapsto \mathcal{F}_x.
> $$
> 对预层态射 $\varphi: \mathcal{F} \to \mathcal{G}$，诱导态射 $\varphi_x: \mathcal{F}_x \to \mathcal{G}_x$，$[s, U]_x \mapsto [\varphi_U(s), U]_x$。
>
> **性质**：茎化函子保持滤过余极限；若 $\mathcal{C} = \mathbf{Ab}$（或更一般地阿贝尔范畴），茎化函子是**正合函子**（保持正合列）。
>
> **证明思路**：正合性来自滤过余极限与有限极限交换（见 [[filtered_colimit|滤过余极限]]）：$\ker \varphi_x \cong (\ker \varphi)_x$，$\mathrm{im}\, \varphi_x \cong (\mathrm{im}\, \varphi)_x$。

## 茎反映局部性质

<!-- stalks_detect_local_properties -->
> [!Theorem]
> **茎检测同构 Stalks Detect Isomorphisms**：设 $X$ 是拓扑空间，$\varphi: \mathcal{F} \to \mathcal{G}$ 是层（或预层）态射（取值于 $\mathbf{Set}$ 或 $\mathbf{Ab}$）。则以下等价：
> 1. $\varphi$ 是同构（即预层同构）；
> 2. 对每个 $x \in X$，诱导态射 $\varphi_x: \mathcal{F}_x \to \mathcal{G}_x$ 是同构。
>
> **证明思路**：$(1) \Rightarrow (2)$：逆态射诱导逆茎态射。$(2) \Rightarrow (1)$：对每个开集 $U$ 和截面 $s \in \mathcal{F}(U)$，利用 $\varphi_x$ 的单射性知 $\varphi_U$ 单；利用满射性在每点局部找原像，由层的黏合公理（对层的情形）拼成全局原像。对纯预层，此方向不成立，须为层。

<!-- stalk_examples -->
> [!Example]+
> **茎的例子**：
> 1. **连续函数层的茎**：$\mathcal{C}^0_X$ 在 $x \in X$ 处的茎为连续函数芽环（germ ring）$\mathcal{C}^0_{X,x}$，元素为 $(U, f)$（$U \ni x$，$f: U \to \mathbb{R}$ 连续）的等价类，两芽相等当且仅当在 $x$ 的某邻域内相等。
> 2. **光滑函数层的茎**：光滑流形上 $\mathcal{C}^\infty_X$ 在 $x$ 处的茎为光滑函数芽环 $\mathcal{C}^\infty_{X,x}$，是局部环。
> 3. **常值层的茎**：拓扑空间 $X$（连通）上常值层 $\underline{A}$ 在每点 $x$ 的茎均为 $A$（离散拓扑下 $A$ 上的层化结果）。
