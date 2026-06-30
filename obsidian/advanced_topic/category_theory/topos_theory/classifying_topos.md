# 分类拓扑斯

## 几何理论

<!-- geometric_theory_def -->
> [!Definition]
> **几何公式与几何理论 Geometric Formula and Geometric Theory**：在多类型（many-sorted）一阶逻辑中：
> - **几何公式**（geometric formula）是由以下规则递归构成的公式：原子公式（等式与关系符号的实例）、有限合取 $\varphi_1 \wedge \cdots \wedge \varphi_n$（含空合取 $\top$）、小（任意集合大小）析取 $\bigvee_{i \in I} \varphi_i$（含空析取 $\bot$）、存在量词 $\exists x\, \varphi(x)$；
> - **几何蕴含**（geometric sequent）是形如 $\varphi \vdash_{\vec{x}} \psi$ 的表达式，其中 $\varphi, \psi$ 是几何公式，$\vec{x}$ 是自由变量列表；
> - **几何理论**（geometric theory）是几何蕴含的集合（公理集）。

> **注**：几何理论不包含全称量词 $\forall$ 与蕴含 $\Rightarrow$（这些在 $\bigvee$ 无限化后需要特别处理）。几何理论是代数理论（Lawvere 理论，见 [[functorial_semantics|函子语义]]）的推广，但允许无穷析取，从而能表达拓扑性质（如"开覆盖"）。

## 几何理论的模型

<!-- geometric_theory_model_def -->
> [!Definition]
> **几何理论的模型 Model of a Geometric Theory**：设 $\mathbb{T}$ 是几何理论，$\mathcal{E}$ 是拓扑斯。$\mathbb{T}$ 在 $\mathcal{E}$ 中的**模型**（model）是将 $\mathbb{T}$ 的符号（排序、函数、关系符号）解释为 $\mathcal{E}$ 中的对象和态射，且满足所有几何公理（在 $\mathcal{E}$ 的内部逻辑中成立）。所有模型及其模型同态构成范畴 $\mathbb{T}\text{-}\mathrm{Mod}(\mathcal{E})$。

## 分类拓扑斯

<!-- classifying_topos_def -->
> [!Definition]
> **分类拓扑斯 Classifying Topos**：设 $\mathbb{T}$ 是几何理论。$\mathbb{T}$ 的**分类拓扑斯**（classifying topos）是 Grothendieck 拓扑斯 $\mathcal{B}\mathbb{T}$，配以**泛模型**（generic/universal model）$\mathcal{U}_\mathbb{T} \in \mathbb{T}\text{-}\mathrm{Mod}(\mathcal{B}\mathbb{T})$，满足以下**泛性质**：
>
> 对任意 Grothendieck 拓扑斯 $\mathcal{E}$，存在等价：
> $$
> \mathrm{Geom}(\mathcal{E}, \mathcal{B}\mathbb{T}) \simeq \mathbb{T}\text{-}\mathrm{Mod}(\mathcal{E}),
> $$
> 自然于 $\mathcal{E}$（等价为 2-范畴等价）。即：**$\mathcal{E}$ 到 $\mathcal{B}\mathbb{T}$ 的几何态射**等同于**$\mathbb{T}$ 在 $\mathcal{E}$ 中的模型**，对应关系由 $f^*(\mathcal{U}_\mathbb{T})$ 给出（沿几何态射 $f: \mathcal{E} \to \mathcal{B}\mathbb{T}$ 拉回泛模型）。

> **注**：分类拓扑斯将代数理论的"分类空间"思想（如分类群 $BG$ 分类主 $G$-丛）推广到几何理论：$\mathcal{B}\mathbb{T}$ 是"$\mathbb{T}$-模型的分类空间"，到 $\mathcal{B}\mathbb{T}$ 的几何态射对应选一个 $\mathbb{T}$-模型。

## 存在性

<!-- classifying_topos_existence -->
> [!Theorem]
> **分类拓扑斯的存在性与唯一性**：每个几何理论 $\mathbb{T}$ 都有分类拓扑斯 $\mathcal{B}\mathbb{T}$，且在等价意义下唯一（即若 $\mathcal{B}'\mathbb{T}$ 也是分类拓扑斯，则 $\mathcal{B}\mathbb{T} \simeq \mathcal{B}'\mathbb{T}$）。
>
> **构造思路**：可显式构造为"句法景"上的层范畴：以 $\mathbb{T}$ 的可证等价公式类（几何公式等价类）为对象，几何蕴含为态射，配以适当的 Grothendieck 拓扑（覆盖对应有限合取的分解与存在量词），则 $\mathcal{B}\mathbb{T} = \mathrm{Sh}(\mathcal{C}_\mathbb{T}, J_\mathbb{T})$（句法拓扑斯，syntactic topos）。泛模型 $\mathcal{U}_\mathbb{T}$ 为代入函子诱导的模型。

## 例子

<!-- classifying_topos_examples -->
> [!Example]+
> **分类拓扑斯的例子**：
> 1. **对象理论**（空理论）：无公理的单类型理论，$\mathcal{B}\mathbb{T} = \mathrm{PSh}(\mathbf{FinSet}^{\mathrm{op}}) = [\mathbf{FinSet}, \mathbf{Set}]$（对象分类子），几何态射 $\mathcal{E} \to \mathcal{B}\mathbb{T}$ 对应 $\mathcal{E}$ 中的对象；
> 2. **群理论**：群公理构成几何理论（幺半群公理 + 逆元公理），分类拓扑斯 $\mathcal{B}\mathbf{Grp}$ 使得 $\mathrm{Geom}(\mathcal{E}, \mathcal{B}\mathbf{Grp}) \simeq \mathrm{Grp}(\mathcal{E})$（$\mathcal{E}$ 中的群对象）；
> 3. **局部环理论**：局部环的公理是几何的，分类拓扑斯是 Zariski 拓扑斯；
> 4. **连续映射的分类**：拓扑空间 $X$ 对应几何理论（以 $X$ 的开集为命题），$\mathcal{B}\mathbb{T}_X = \mathrm{Sh}(X)$，几何态射 $\mathcal{E} \to \mathrm{Sh}(X)$ 对应"$\mathcal{E}$ 到 $X$ 的连续映射"（即 $\mathcal{E}$ 中 $X$ 的一个点）。

## 与函子语义的呼应

<!-- classifying_topos_vs_functorial_semantics -->
> [!Theorem]
> **分类拓扑斯与函子语义的统一**：当 $\mathbb{T}$ 是 Lawvere 理论（代数理论，见 [[functorial_semantics|函子语义]]）时，其分类拓扑斯为：
> $$
> \mathcal{B}\mathbb{T} \simeq \mathrm{PSh}(\mathcal{T}_{\mathrm{fp}}^{\mathrm{op}}),
> $$
> 其中 $\mathcal{T}_{\mathrm{fp}}$ 为 $\mathbb{T}$ 的有限表示模型范畴（finitely presented models）。几何态射 $\mathcal{E} \to \mathcal{B}\mathbb{T}$ 对应 $\mathcal{E}$ 中保有限极限的函子（即 $\mathbb{T}$-代数），与 Lawvere 理论的"模型为保积函子"完全一致。
>
> **证明思路**：Lawvere 理论的公理均为普遍几何蕴含（有限合取与有限存在），由 Gabriel-Ulmer 对偶性（局部有限可表示范畴与其有限可表示对象的范畴之间的对偶）给出句法拓扑斯的具体形式。
