# 导出范畴

## 拟同构的局部化

<!-- derived_category_localization_def -->
> [!Definition]
> **拟同构的局部化 Localization at Quasi-isomorphisms**：设 $\mathbf{Ch}(R\text{-}\mathbf{Mod})$ 或 $K(R\text{-}\mathbf{Mod})$ 中的弱等价类取为所有**拟同构**（quasi-isomorphisms）。将这些拟同构形式地变为可逆态射，得到的局部化范畴称为**导出范畴**（derived category）。

## 导出范畴

<!-- derived_category_def -->
> [!Definition]
> **导出范畴 Derived Category**：$R$-模的**导出范畴**记作
> $$
> D(R\text{-}\mathbf{Mod}).
> $$
> 它可视为链复形范畴关于拟同构的局部化：
> $$
> D(R\text{-}\mathbf{Mod}) \simeq \mathbf{Ch}(R\text{-}\mathbf{Mod})[\mathrm{qis}^{-1}],
> $$
> 也可等价地看成链同伦范畴关于拟同构的局部化：
> $$
> D(R\text{-}\mathbf{Mod}) \simeq K(R\text{-}\mathbf{Mod})[\mathrm{qis}^{-1}].
> $$
>
> **注**：在导出范畴中，所有同调相同的“合适替代复形”都可被视为同一个对象的不同模型，因此 Ext、Tor 等导出构造可以在范畴层面统一表达。

## 有界导出范畴

<!-- bounded_derived_categories_def -->
> [!Definition]
> **有界导出范畴 Bounded Derived Categories**：根据复形在哪些次数非零，可定义导出范畴的若干重要子范畴：
> $$
> D^b(R\text{-}\mathbf{Mod}), \qquad D^+(R\text{-}\mathbf{Mod}), \qquad D^-(R\text{-}\mathbf{Mod}).
> $$
> 其中：
> - $D^b$：对象的同调只在有限多个次数非零；
> - $D^+$：对象同调在充分低次为零（有下界）；
> - $D^-$：对象同调在充分高次为零（有上界）。

## 导出范畴的意义

<!-- derived_category_significance -->
> [!Corollary]
> **导出范畴的意义 Significance of the Derived Category**：导出范畴比链同伦范畴更进一步地忽略“与同调无关”的信息：不仅链同伦等价的复形同构，连拟同构的复形也同构。这使得分解的选择真正成为“模型选择”，而不改变其导出对象。