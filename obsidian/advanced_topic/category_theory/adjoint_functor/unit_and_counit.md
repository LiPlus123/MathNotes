# 单位与余单位

## 单位与余单位的定义

<!-- unit_def -->
> [!Definition]
> **单位 Unit**：设 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{C}$），伴随同构为 $\varphi$。**单位**（unit）是自然变换
> $$
> \eta: \mathrm{Id}_{\mathcal{C}} \Rightarrow G \circ F,
> $$
> 其在 $A \in \mathrm{Ob}(\mathcal{C})$ 处的分量为
> $$
> \eta_A = \varphi_{A, F(A)}(\mathrm{id}_{F(A)}): A \to G(F(A)).
> $$

<!-- counit_def -->
> [!Definition]
> **余单位 Counit**：**余单位**（counit）是自然变换
> $$
> \varepsilon: F \circ G \Rightarrow \mathrm{Id}_{\mathcal{D}},
> $$
> 其在 $B \in \mathrm{Ob}(\mathcal{D})$ 处的分量为
> $$
> \varepsilon_B = \varphi_{G(B), B}^{-1}(\mathrm{id}_{G(B)}): F(G(B)) \to B.
> $$

> **注**：直觉上，$\eta_A: A \to GF(A)$ 表示"将 $A$ 嵌入 $G$ 作用后的自由对象"；$\varepsilon_B: FG(B) \to B$ 表示"求值/折叠"，将 $F$ 在 $G(B)$ 上生成的自由对象映回 $B$。

## 三角恒等式

<!-- triangle_identities -->
> [!Theorem]
> **三角恒等式（Zigzag Identities）**：设 $F \dashv G$ 具有单位 $\eta$ 与余单位 $\varepsilon$。则以下两个**三角恒等式**成立：
> $$
> \varepsilon_{F(A)} \circ F(\eta_A) = \mathrm{id}_{F(A)}, \qquad \forall A \in \mathrm{Ob}(\mathcal{C});
> $$
> $$
> G(\varepsilon_B) \circ \eta_{G(B)} = \mathrm{id}_{G(B)}, \qquad \forall B \in \mathrm{Ob}(\mathcal{D}).
> $$
>
> **证明思路**：由 $\varphi$ 的自然性验证：
> - 对第一式，$\varphi_{A, F(A)}(\mathrm{id}_{F(A)}) = \eta_A$，又 $\varphi^{-1}(\eta_A) = \mathrm{id}_{F(A)}$；利用自然性展开 $\varepsilon_{F(A)} \circ F(\eta_A) = \varphi^{-1}(G(\mathrm{id}_{F(A)}) \circ \eta_A) = \varphi^{-1}(\eta_A) = \mathrm{id}_{F(A)}$。
> - 第二式对称地验证。

## 与 Hom 定义的等价

<!-- unit_counit_hom_equivalence -->
> [!Theorem]
> **单位-余单位定义与 Hom 定义等价**：给定函子 $F: \mathcal{C} \to \mathcal{D}$ 与 $G: \mathcal{D} \to \mathcal{C}$，以下三种数据互相等价：
> 1. **Hom 集定义**：自然同构 $\varphi: \mathrm{Hom}(F(-), -) \xRightarrow{\sim} \mathrm{Hom}(-, G(-))$；
> 2. **单位-余单位定义**：自然变换 $\eta: \mathrm{Id}_{\mathcal{C}} \Rightarrow G \circ F$ 与 $\varepsilon: F \circ G \Rightarrow \mathrm{Id}_{\mathcal{D}}$，满足两个三角恒等式；
> 3. **泛态射定义**：对每个 $A \in \mathrm{Ob}(\mathcal{C})$，$(F(A), \eta_A)$ 是从 $A$ 到 $G$ 的泛态射（见 [[universal_property|泛性质]]）。
>
> **证明思路**：
> - $(1) \Rightarrow (2)$：由 Hom 同构定义 $\eta_A, \varepsilon_B$，自然性由 $\varphi$ 的自然性导出，三角恒等式由 $\varphi \circ \varphi^{-1} = \mathrm{id}$ 推出。
> - $(2) \Rightarrow (1)$：定义 $\varphi_{A,B}(f) = G(f) \circ \eta_A$，$\varphi^{-1}_{A,B}(g) = \varepsilon_B \circ F(g)$；三角恒等式保证互逆，自然性由 $\eta, \varepsilon$ 的自然性保证。
> - $(1) \Leftrightarrow (3)$：泛态射条件等价于 $\varphi_{A, -}: \mathrm{Hom}(F(A), -) \xrightarrow{\sim} \mathrm{Hom}(A, G(-))$ 是双射，关于 $A$ 的自然性等价于整体的自然同构。

## 转置的显式公式

<!-- transpose_formula -->
> [!Theorem]
> **转置的显式公式 Explicit Transpose Formulas**：设 $F \dashv G$ 具有单位 $\eta$、余单位 $\varepsilon$。
> - 对 $f: F(A) \to B$，其转置为 $\tilde{f} = G(f) \circ \eta_A: A \to G(B)$；
> - 对 $g: A \to G(B)$，其转置为 $\tilde{g} = \varepsilon_B \circ F(g): F(A) \to B$。
>
> **证明思路**：由 $\varphi$ 的自然性与 $\eta, \varepsilon$ 的定义直接计算。
