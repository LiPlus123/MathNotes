# Kan 扩张的定义

## 背景

Kan 扩张是范畴论中最一般的构造之一：给定函子 $K: \mathcal{C} \to \mathcal{D}$ 与 $F: \mathcal{C} \to \mathcal{E}$，Kan 扩张提供了将 $F$ "沿 $K$ 延伸"到 $\mathcal{D}$ 上的最优近似。

## 左 Kan 扩张

<!-- left_kan_extension_def -->
> [!Definition]
> **左 Kan 扩张 Left Kan Extension**：设 $K: \mathcal{C} \to \mathcal{D}$ 与 $F: \mathcal{C} \to \mathcal{E}$ 为函子。$F$ 沿 $K$ 的**左 Kan 扩张**是一对 $(\mathrm{Lan}_K F,\, \eta)$，其中：
> - $\mathrm{Lan}_K F: \mathcal{D} \to \mathcal{E}$ 为函子；
> - $\eta: F \Rightarrow (\mathrm{Lan}_K F) \circ K$ 为自然变换（称为**单位**）；
>
> 满足如下**泛性质**：对任意函子 $H: \mathcal{D} \to \mathcal{E}$ 与自然变换 $\alpha: F \Rightarrow H \circ K$，存在唯一的自然变换 $\bar{\alpha}: \mathrm{Lan}_K F \Rightarrow H$，使得下图交换：
> $$
> \alpha = (\bar{\alpha} \circ K) \cdot \eta,
> $$
> 即 $\alpha_c = \bar{\alpha}_{K(c)} \circ \eta_c$ 对所有 $c \in \mathrm{Ob}(\mathcal{C})$ 成立。

## 右 Kan 扩张

<!-- right_kan_extension_def -->
> [!Definition]
> **右 Kan 扩张 Right Kan Extension**：设 $K: \mathcal{C} \to \mathcal{D}$ 与 $F: \mathcal{C} \to \mathcal{E}$ 为函子。$F$ 沿 $K$ 的**右 Kan 扩张**是一对 $(\mathrm{Ran}_K F,\, \varepsilon)$，其中：
> - $\mathrm{Ran}_K F: \mathcal{D} \to \mathcal{E}$ 为函子；
> - $\varepsilon: (\mathrm{Ran}_K F) \circ K \Rightarrow F$ 为自然变换（称为**余单位**）；
>
> 满足如下**泛性质**：对任意函子 $H: \mathcal{D} \to \mathcal{E}$ 与自然变换 $\beta: H \circ K \Rightarrow F$，存在唯一的自然变换 $\bar{\beta}: H \Rightarrow \mathrm{Ran}_K F$，使得
> $$
> \beta = \varepsilon \cdot (\bar{\beta} \circ K),
> $$
> 即 $\beta_c = \varepsilon_c \circ \bar{\beta}_{K(c)}$ 对所有 $c \in \mathrm{Ob}(\mathcal{C})$ 成立。

> **注**：左 Kan 扩张是"最佳的从左边延伸"（初始的延伸），右 Kan 扩张是"最佳的从右边延伸"（终止的延伸）。两者互为对偶：$\mathrm{Ran}_K F$ 等价于 $\mathcal{E}^{\mathrm{op}}$ 中 $F^{\mathrm{op}}$ 沿 $K$ 的左 Kan 扩张。

## Kan 扩张的唯一性

<!-- kan_extension_unique -->
> [!Theorem]
> **Kan 扩张在自然同构意义下唯一 Uniqueness of Kan Extensions**：若 $F$ 沿 $K$ 的左（或右）Kan 扩张存在，则它在自然同构意义下唯一：若 $(\mathrm{Lan}_K F, \eta)$ 与 $(\mathrm{Lan}_K F', \eta')$ 均满足泛性质，则存在唯一的自然同构 $\mathrm{Lan}_K F \xRightarrow{\sim} \mathrm{Lan}_K F'$ 与单位相容。
>
> **证明思路**：与初对象的唯一性证明类似——两个泛对象之间存在唯一的互逆自然变换，由泛性质的唯一性可知它们互为逆。

## 限制函子

<!-- restriction_functor_def -->
> [!Definition]
> **限制函子（预复合函子）Restriction Functor**：给定 $K: \mathcal{C} \to \mathcal{D}$，定义**限制函子**（也称**预复合函子**）
> $$
> K^*: [\mathcal{D}, \mathcal{E}] \to [\mathcal{C}, \mathcal{E}], \quad K^*(H) = H \circ K,
> $$
> 对自然变换 $\alpha: H \Rightarrow H'$，令 $K^*(\alpha)_c = \alpha_{K(c)}$（whiskering）。Kan 扩张的泛性质等价于：$\mathrm{Lan}_K$ 是 $K^*$ 的**左伴随**，$\mathrm{Ran}_K$ 是 $K^*$ 的**右伴随**（详见 [[kan_extension_as_adjoint|Kan 扩张作为伴随]]）。

## Kan 扩张的存在条件

<!-- kan_extension_existence -->
> [!Theorem]
> **Kan 扩张的存在性 Existence of Kan Extensions**：在以下条件下，$F: \mathcal{C} \to \mathcal{E}$ 沿 $K: \mathcal{C} \to \mathcal{D}$ 的左 Kan 扩张存在：
> - $\mathcal{C}$ 为**小范畴**，$\mathcal{E}$ **余完备**（有所有小余极限）；
>
> 右 Kan 扩张存在的对偶条件：$\mathcal{C}$ 小，$\mathcal{E}$ **完备**。
>
> 在这些条件下，Kan 扩张可通过余极限（或极限）的**逐点公式**显式计算（见 [[pointwise_kan_extension|逐点 Kan 扩张]]）。
