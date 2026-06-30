# 层化

## 层化函子

<!-- sheafification_def -->
> [!Definition]
> **层化 Sheafification**：设 $X$ 是拓扑空间，$\mathcal{F}$ 是 $X$ 上取值于 $\mathbf{Set}$（或 $\mathbf{Ab}$）的预层。$\mathcal{F}$ 的**层化**（sheafification），记作 $\mathcal{F}^+$ 或 $\mathcal{F}^{\mathrm{sh}}$，是一对 $(\mathcal{F}^+, \theta)$，其中 $\mathcal{F}^+$ 是 $X$ 上的层，$\theta: \mathcal{F} \to \mathcal{F}^+$ 是预层态射，满足以下**泛性质**：
>
> 对任意层 $\mathcal{G}$ 及预层态射 $\varphi: \mathcal{F} \to \mathcal{G}$，存在唯一层态射 $\bar{\varphi}: \mathcal{F}^+ \to \mathcal{G}$，使得 $\bar{\varphi} \circ \theta = \varphi$：
> $$
> \mathcal{F} \xrightarrow{\theta} \mathcal{F}^+ \xrightarrow{\exists! \bar{\varphi}} \mathcal{G}.
> $$

<!-- sheafification_construction -->
> [!Theorem]
> **层化的构造与存在性**：层化 $(\mathcal{F}^+, \theta)$ 存在且唯一（同构意义下）。一种显式构造为：
> $$
> \mathcal{F}^+(U) = \left\{ (s_x)_{x \in U} \in \prod_{x \in U} \mathcal{F}_x \;\middle|\; \begin{array}{l} \forall x \in U,\; \exists \text{ 开集 } V \ni x,\; V \subseteq U,\; \exists t \in \mathcal{F}(V): \\ \forall y \in V,\; [t]_y = s_y \end{array} \right\},
> $$
> 即"局部来自预层截面的茎元素族"。限制态射为元组的限制，$\theta_U(s) = ([s]_x)_{x \in U}$。
>
> **证明思路**：
> - 验证 $\mathcal{F}^+$ 是层：分离性由茎的单射性给出；黏合由局部相容条件保证；
> - 验证泛性质：对 $\varphi: \mathcal{F} \to \mathcal{G}$（$\mathcal{G}$ 为层），$\mathcal{G}$ 的层性质保证 $\bar{\varphi}$ 存在唯一。

## 层化作为伴随

<!-- sheafification_adjunction -->
> [!Theorem]
> **层化伴随 Sheafification Adjunction**：设 $\iota: \mathrm{Sh}(X) \hookrightarrow \mathrm{PSh}(X)$ 为层范畴到预层范畴的完全嵌入（包含函子）。则层化函子
> $$
> (-)^+: \mathrm{PSh}(X) \to \mathrm{Sh}(X)
> $$
> 是 $\iota$ 的**左伴随**：
> $$
> (-)^+ \dashv \iota,
> $$
> 即存在自然双射：
> $$
> \mathrm{Hom}_{\mathrm{Sh}(X)}(\mathcal{F}^+, \mathcal{G}) \cong \mathrm{Hom}_{\mathrm{PSh}(X)}(\mathcal{F}, \iota(\mathcal{G})), \qquad \forall \mathcal{F} \in \mathrm{PSh}(X),\; \mathcal{G} \in \mathrm{Sh}(X).
> $$
>
> **证明思路**：由层化的泛性质直接给出双射：$\bar{\varphi} \leftrightarrow \varphi = \bar{\varphi} \circ \theta$，自然性由 $\theta$ 的函子性保证。

> **注**：伴随 $(-)^+ \dashv \iota$ 表明 $\mathrm{Sh}(X)$ 是 $\mathrm{PSh}(X)$ 的**反射子范畴**（reflective subcategory）。层化是"最优近似"：在所有层中，$\mathcal{F}^+$ 是距预层 $\mathcal{F}$ 最近的层。

## 层化的性质

<!-- sheafification_properties -->
> [!Theorem]
> **层化的性质**：设 $\theta: \mathcal{F} \to \mathcal{F}^+$ 为层化态射。则：
> 1. **茎不变**：对所有 $x \in X$，$\theta$ 诱导的茎态射 $\theta_x: \mathcal{F}_x \xrightarrow{\sim} \mathcal{F}^+_x$ 是同构；
> 2. **幂等性**：若 $\mathcal{F}$ 已是层，则 $\theta: \mathcal{F} \xrightarrow{\sim} \mathcal{F}^+$ 是同构；
> 3. **正合性**：层化函子 $(-)^+: \mathrm{PSh}(X, \mathbf{Ab}) \to \mathrm{Sh}(X, \mathbf{Ab})$ 是正合函子（保持短正合列）。
>
> **证明思路**：(1) 由构造 $\mathcal{F}^+(U)$ 的定义，茎 $\mathcal{F}^+_x = \varinjlim_{U \ni x} \mathcal{F}^+(U) \cong \mathcal{F}_x$（滤过余极限与构造相容）；(2) 层的层化等价于自身（由泛性质）；(3) 正合性来自茎化正合与茎不变性。
