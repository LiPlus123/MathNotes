# 幺半范畴中的幺半群对象

## 幺半群对象

<!-- monoid_object_def -->
> [!Definition]
> **幺半群对象 Monoid Object**：设 $(\mathcal{C}, \otimes, I, \alpha, \lambda, \rho)$ 是幺半范畴。一个**幺半群对象**（monoid object），也称**代数**（algebra object），是三元组 $(M, \mu, \eta)$，其中：
> - $M \in \mathrm{Ob}(\mathcal{C})$；
> - $\mu: M \otimes M \to M$，称为**乘法**（multiplication）；
> - $\eta: I \to M$，称为**单位**（unit）；
>
> 满足以下相容条件：
>
> **结合律**：
> $$
> \mu \circ (\mu \otimes \mathrm{id}_M) = \mu \circ (\mathrm{id}_M \otimes \mu) \circ \alpha_{M,M,M};
> $$
>
> **左单位律**：
> $$
> \mu \circ (\eta \otimes \mathrm{id}_M) = \lambda_M;
> $$
>
> **右单位律**：
> $$
> \mu \circ (\mathrm{id}_M \otimes \eta) = \rho_M.
> $$

> **注**：幺半群对象是幺半群概念在幺半范畴中的内化（internalization）。在 $(\mathbf{Set}, \times, \{*\})$ 中，幺半群对象恰好是通常的幺半群；在 $(\mathbf{Vect}_F, \otimes_F, F)$ 中，幺半群对象是 $F$-代数（associative unital algebra）。

<!-- monoid_object_morphism_def -->
> [!Definition]
> **幺半群对象态射 Morphism of Monoid Objects**：设 $(M, \mu, \eta)$ 与 $(M', \mu', \eta')$ 是幺半范畴 $\mathcal{C}$ 中的幺半群对象。一个**幺半群对象态射**（morphism of monoid objects）是态射 $f: M \to M'$，满足：
> $$
> f \circ \mu = \mu' \circ (f \otimes f), \qquad f \circ \eta = \eta'.
> $$
> 所有幺半群对象与其态射构成范畴 $\mathrm{Mon}(\mathcal{C})$。

## 余幺半群对象

<!-- comonoid_object_def -->
> [!Definition]
> **余幺半群对象 Comonoid Object**：设 $(\mathcal{C}, \otimes, I)$ 是幺半范畴。一个**余幺半群对象**（comonoid object）是三元组 $(C, \delta, \varepsilon)$，其中：
> - $\delta: C \to C \otimes C$，称为**余乘法**（comultiplication）；
> - $\varepsilon: C \to I$，称为**余单位**（counit）；
>
> 满足余结合律与余单位律（即幺半群对象在 $\mathcal{C}^{\mathrm{op}}$ 中的对偶）：
> $$
> (\delta \otimes \mathrm{id}_C) \circ \delta = \alpha_{C,C,C} \circ (\mathrm{id}_C \otimes \delta) \circ \delta,
> $$
> $$
> (\varepsilon \otimes \mathrm{id}_C) \circ \delta = \lambda_C^{-1}, \qquad (\mathrm{id}_C \otimes \varepsilon) \circ \delta = \rho_C^{-1}.
> $$

> **注**：在 $(\mathbf{Vect}_F, \otimes_F, F)$ 中，余幺半群对象是余代数（coalgebra）。在 $(\mathbf{Set}, \times, \{*\})$ 中，每个集合上有唯一余幺半群结构（对角映射 $\delta(x) = (x, x)$，$\varepsilon(x) = *$）。

## 群对象

<!-- group_object_def -->
> [!Definition]
> **群对象 Group Object**：设 $(\mathcal{C}, \otimes, I)$ 是笛卡尔幺半范畴（即 $\otimes = \times$，$I$ 为终对象）。一个**群对象**（group object）是幺半群对象 $(G, \mu, \eta)$ 配以**逆**态射 $\iota: G \to G$，满足：
> $$
> \mu \circ (\iota \times \mathrm{id}_G) \circ \delta_G = \eta \circ \varepsilon_G, \qquad \mu \circ (\mathrm{id}_G \times \iota) \circ \delta_G = \eta \circ \varepsilon_G,
> $$
> 其中 $\delta_G: G \to G \times G$ 为对角态射，$\varepsilon_G: G \to I$ 为终对象唯一态射。

> **注**：在 $(\mathbf{Set}, \times, \{*\})$ 中，群对象恰为普通的群；在 $(\mathbf{Top}, \times, \{*\})$ 中，群对象为拓扑群；在 $(\mathbf{Man}, \times, \{*\})$（光滑流形范畴）中，群对象为李群；在 $(\mathbf{Sch}, \times_S, S)$（$S$-概型范畴）中，群对象为群概型。

## Hopf 代数初步

<!-- hopf_algebra_intro -->
> [!Definition]
> **双代数与 Hopf 代数 Bialgebra and Hopf Algebra（初步）**：设 $(\mathbf{Vect}_F, \otimes_F, F)$。若 $H$ 同时是幺半群对象（代数）$(H, \mu, \eta)$ 与余幺半群对象（余代数）$(H, \delta, \varepsilon)$，且乘法 $\mu$ 与余乘法 $\delta$ 相容（$\delta$ 和 $\varepsilon$ 是代数同态），则 $H$ 称为**双代数**（bialgebra）。若进一步存在线性映射 $S: H \to H$（称为**对极**，antipode），满足：
> $$
> \mu \circ (S \otimes \mathrm{id}_H) \circ \delta = \eta \circ \varepsilon = \mu \circ (\mathrm{id}_H \otimes S) \circ \delta,
> $$
> 则称 $H$ 为 **Hopf 代数**（Hopf algebra）。

> **注**：群代数 $FG$（群 $G$ 的群代数）是典型的 Hopf 代数，其中 $\delta(g) = g \otimes g$，$\varepsilon(g) = 1$，$S(g) = g^{-1}$。普遍包络代数 $U(\mathfrak{g})$（李代数 $\mathfrak{g}$ 的普遍包络代数）也是 Hopf 代数。Hopf 代数可理解为"幺半群对象"与"群对象"的代数化版本，是量子群的核心结构。

<!-- monoid_object_examples -->
> [!Example]+
> **幺半群对象的例子汇总**：

> | 幺半范畴 $(\mathcal{C}, \otimes, I)$ | 幺半群对象 | 余幺半群对象 | 群对象 |
> |---|---|---|---|
> | $(\mathbf{Set}, \times, \{*\})$ | 幺半群 | 集合（唯一结构） | 群 |
> | $(\mathbf{Top}, \times, \{*\})$ | 拓扑幺半群 | — | 拓扑群 |
> | $(\mathbf{Vect}_F, \otimes_F, F)$ | $F$-代数 | $F$-余代数 | — |
> | $(\mathbf{Ab}, \otimes_{\mathbb{Z}}, \mathbb{Z})$ | 环 | — | — |
> | $([\mathcal{C}, \mathcal{C}], \circ, \mathrm{Id}_{\mathcal{C}})$ | 单子 $(T, \eta, \mu)$ | 余单子 | — |
