# 层的态射与层范畴

## 层态射

<!-- sheaf_morphism_def -->
> [!Definition]
> **层态射 Morphism of Sheaves**：设 $\mathcal{F}$，$\mathcal{G}$ 是拓扑空间 $X$ 上的层（取值于 $\mathcal{C}$）。**层态射**（morphism of sheaves）$\varphi: \mathcal{F} \to \mathcal{G}$ 是作为预层的态射，即自然变换 $\varphi: \mathcal{F} \Rightarrow \mathcal{G}$（函子 $\mathcal{O}(X)^{\mathrm{op}} \to \mathcal{C}$ 之间）——对每个开集 $U$，给出 $\mathcal{C}$-态射 $\varphi_U: \mathcal{F}(U) \to \mathcal{G}(U)$，与限制态射相容。

## 层范畴

<!-- sheaf_category_def -->
> [!Definition]
> **层范畴 Category of Sheaves**：拓扑空间 $X$ 上取值于 $\mathcal{C}$ 的所有层及层态射构成范畴 $\mathrm{Sh}(X, \mathcal{C})$。特别地：
> - 当 $\mathcal{C} = \mathbf{Set}$ 时，记 $\mathrm{Sh}(X)$；
> - 当 $\mathcal{C} = \mathbf{Ab}$ 时，记 $\mathrm{Sh}(X, \mathbf{Ab})$，称**阿贝尔层范畴**（category of abelian sheaves）；
> - 当 $\mathcal{C} = R\text{-}\mathbf{Mod}$ 时，记 $\mathrm{Sh}(X, R)$，称 $R$-**模层范畴**。

## 阿贝尔层范畴

<!-- abelian_sheaf_category -->
> [!Theorem]
> **阿贝尔层范畴是阿贝尔范畴**：$\mathrm{Sh}(X, \mathbf{Ab})$ 是**阿贝尔范畴**（见 [[abelian_category|阿贝尔范畴]]），具体结构为：
> - **零对象**：常值层 $\underline{0}$（每个开集上为零群）；
> - **加法**：$(\mathcal{F} \oplus \mathcal{G})(U) = \mathcal{F}(U) \oplus \mathcal{G}(U)$（逐开集直和）；
> - **核**：层态射 $\varphi: \mathcal{F} \to \mathcal{G}$ 的核为预层核（逐开集取核），它本身已是层：$(\ker \varphi)(U) = \ker(\varphi_U: \mathcal{F}(U) \to \mathcal{G}(U))$；
> - **余核**：预层余核 $U \mapsto \mathrm{coker}(\varphi_U)$ 不一定是层，须层化：$\mathrm{coker}\,\varphi = (U \mapsto \mathrm{coker}(\varphi_U))^+$；
> - **像**：$\mathrm{im}\,\varphi = \ker(\mathrm{coker}\,\varphi)$，是 $\mathcal{G}$ 的子层。
>
> **证明思路**：核是逐开集的等化子，等化子的层性质由 $\mathcal{F}$，$\mathcal{G}$ 的层性质继承；余核需层化保证层性质；单/满态射的刻画用茎：$\varphi$ 是单（满）态射当且仅当对每个 $x$，$\varphi_x$ 是单（满）射。

> **注**：阿贝尔层范畴中**满态射不一定逐开集满**（这是层论与模论的本质差异之一）：层满态射 $\varphi: \mathcal{F} \twoheadrightarrow \mathcal{G}$ 等价于对每个 $x$，$\varphi_x$ 满；但 $\varphi_U: \mathcal{F}(U) \to \mathcal{G}(U)$ 可以不满。这导致了上同调（cohomology）的出现。

## 极限与余极限

<!-- sheaf_limits_colimits -->
> [!Theorem]
> **层范畴的极限与余极限**：
> - **极限**：$\mathrm{Sh}(X, \mathbf{Ab})$ 中的极限由逐开集计算：$(\lim_i \mathcal{F}_i)(U) = \lim_i \mathcal{F}_i(U)$，逐开集极限仍为层（层性质对极限封闭）；
> - **余极限**：逐开集余极限 $U \mapsto \operatorname{colim}_i \mathcal{F}_i(U)$ 一般是预层，须层化：$\operatorname{colim}_i \mathcal{F}_i = (U \mapsto \operatorname{colim}_i \mathcal{F}_i(U))^+$；
> - **完备性与余完备性**：$\mathrm{Sh}(X, \mathbf{Ab})$ 既完备又余完备（有所有小极限与余极限）。
>
> **证明思路**：极限的封闭性：层公理（等化子刻画）对极限保持，因为等化子与积均与极限交换；余极限须层化，因逐开集余极限可能不满足黏合公理。

## 核与像的层化

<!-- kernel_image_sheaf -->
> [!Theorem]
> **核与像的层化**：设 $\varphi: \mathcal{F} \to \mathcal{G}$ 是 $\mathrm{Sh}(X, \mathbf{Ab})$ 中的态射。
> - **核**：$\ker\varphi$ 无需层化，已是层：$(\ker\varphi)(U) = \ker(\varphi_U)$；
> - **余核**：$\mathrm{coker}\,\varphi = (U \mapsto \mathrm{coker}(\varphi_U: \mathcal{F}(U) \to \mathcal{G}(U)))^+$（需层化）；
> - **像**：$\mathrm{im}\,\varphi = \ker(\mathcal{G} \to \mathrm{coker}\,\varphi)$，是 $\mathcal{G}$ 的子层；逐茎 $(\mathrm{im}\,\varphi)_x = \mathrm{im}(\varphi_x)$。
>
> **证明思路**：核的层性质由逐开集核的相容性（限制态射保持核）直接得；余核的预层版本不满足黏合，层化保证层性质；像的描述由阿贝尔范畴一般理论（典范分解）给出。
