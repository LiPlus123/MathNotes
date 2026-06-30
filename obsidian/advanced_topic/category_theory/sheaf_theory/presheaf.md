# 预层

## 开集范畴

<!-- open_set_category_def -->
> [!Definition]
> **开集范畴 Category of Open Sets**：设 $X$ 是拓扑空间。$X$ 的**开集范畴** $\mathcal{O}(X)$ 定义为：
> - 对象：$X$ 的所有开集 $U \subseteq X$；
> - 态射：若 $V \subseteq U$，则有唯一态射 $\rho_{UV}: U \to V$（包含映射）；若 $V \not\subseteq U$，则 $\mathrm{Hom}(U, V) = \varnothing$。
>
> $\mathcal{O}(X)$ 是由开集的包含关系诱导的**前序集范畴**（poset category）。

## 预层的定义

<!-- presheaf_def -->
> [!Definition]
> **预层 Presheaf**：设 $X$ 是拓扑空间，$\mathcal{C}$ 是范畴（通常取 $\mathbf{Set}$、$\mathbf{Ab}$ 或 $\mathbf{Ring}$ 等）。$X$ 上取值于 $\mathcal{C}$ 的**预层**（presheaf）是反变函子：
> $$
> \mathcal{F}: \mathcal{O}(X)^{\mathrm{op}} \to \mathcal{C}.
> $$
> 具体地：
> - 对每个开集 $U \subseteq X$，给出对象 $\mathcal{F}(U) \in \mathrm{Ob}(\mathcal{C})$，称为 $\mathcal{F}$ 在 $U$ 上的**截面**（sections）；
> - 对每个包含 $V \subseteq U$，给出态射 $\rho_{UV} = \mathcal{F}(V \hookrightarrow U): \mathcal{F}(U) \to \mathcal{F}(V)$，称为**限制态射**（restriction map），通常记作 $s \mapsto s|_V$；
>
> 满足：
> - $\rho_{UU} = \mathrm{id}_{\mathcal{F}(U)}$（对 $U \subseteq U$）；
> - 若 $W \subseteq V \subseteq U$，则 $\rho_{UW} = \rho_{VW} \circ \rho_{UV}$（限制的传递性）。

> **注**：$\mathcal{F}(U)$ 的元素称为"$U$ 上的截面"（sections over $U$）；$\mathcal{F}(X)$ 的元素称为"整体截面"（global sections）。当 $\mathcal{C} = \mathbf{Set}$ 时，称**集合预层**；当 $\mathcal{C} = \mathbf{Ab}$ 时，称**阿贝尔群预层**。

## 预层态射与预层范畴

<!-- presheaf_morphism_def -->
> [!Definition]
> **预层态射 Morphism of Presheaves**：设 $\mathcal{F}$，$\mathcal{G}$ 是 $X$ 上取值于 $\mathcal{C}$ 的预层。**预层态射**（morphism of presheaves）$\varphi: \mathcal{F} \to \mathcal{G}$ 是自然变换 $\varphi: \mathcal{F} \Rightarrow \mathcal{G}$（作为函子 $\mathcal{O}(X)^{\mathrm{op}} \to \mathcal{C}$），即对每个开集 $U$，给出 $\mathcal{C}$-态射 $\varphi_U: \mathcal{F}(U) \to \mathcal{G}(U)$，使得对所有 $V \subseteq U$，下图交换：
> $$
> \mathcal{F}(U) \xrightarrow{\varphi_U} \mathcal{G}(U) \qquad \mathcal{F}(V) \xrightarrow{\varphi_V} \mathcal{G}(V),
> $$
> 即 $\varphi_V \circ \rho_{UV}^{\mathcal{F}} = \rho_{UV}^{\mathcal{G}} \circ \varphi_U$。

<!-- presheaf_category_def -->
> [!Definition]
> **预层范畴 Presheaf Category**：$X$ 上取值于 $\mathcal{C}$ 的所有预层及其态射构成**预层范畴** $\mathrm{PSh}(X, \mathcal{C})$，也记 $\mathcal{C}^{\mathcal{O}(X)^{\mathrm{op}}}$ 或 $[\mathcal{O}(X)^{\mathrm{op}}, \mathcal{C}]$。当 $\mathcal{C} = \mathbf{Set}$ 时记 $\mathrm{PSh}(X)$；当 $\mathcal{C} = \mathbf{Ab}$ 时记 $\mathrm{PSh}(X, \mathbf{Ab})$。

> **注**：预层范畴 $\mathrm{PSh}(X, \mathbf{Set})$ 是余完备、完备的范畴（极限与余极限逐开集点态计算）；$\mathrm{PSh}(X, \mathbf{Ab})$ 是阿贝尔范畴（见 [[abelian_category|阿贝尔范畴]]）。

## 例子

<!-- presheaf_examples -->
> [!Example]+
> **预层的例子**：
> 1. **连续函数预层**：$\mathcal{C}^0_X(U) = \{f: U \to \mathbb{R} \mid f \text{ 连续}\}$，限制态射为函数的限制 $f \mapsto f|_V$。这是集合预层，实际上还是层（见 [[sheaf|层]]）。
> 2. **有界连续函数预层**：$\mathcal{F}(U) = \{f: U \to \mathbb{R} \mid f \text{ 连续且有界}\}$。这是预层但**不是层**：局部有界不能拼成全局有界。
> 3. **常值预层 $\underline{A}$**：$\underline{A}(U) = A$（固定集合/阿贝尔群 $A$），限制态射均为 $\mathrm{id}_A$。这是预层但通常**不是层**（黏合条件要求较强）。
> 4. **$k$ 次微分形式预层**（光滑流形 $X$ 上）：$\Omega^k(U) = $ $U$ 上的 $k$-形式全体，限制为微分形式的拉回。
