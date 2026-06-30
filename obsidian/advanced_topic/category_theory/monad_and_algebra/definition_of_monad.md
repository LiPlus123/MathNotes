# 单子与余单子的定义

## 单子的定义

<!-- monad_def -->
> [!Definition]
> **单子 Monad**：设 $\mathcal{C}$ 为范畴。一个**单子**（monad）是三元组 $(T, \eta, \mu)$，其中：
> - $T: \mathcal{C} \to \mathcal{C}$ 是端函子（endofunctor）；
> - $\eta: \mathrm{Id}_{\mathcal{C}} \Rightarrow T$ 是自然变换，称为**单位**（unit）；
> - $\mu: T^2 \Rightarrow T$ 是自然变换（其中 $T^2 = T \circ T$），称为**乘法**（multiplication）；
>
> 满足以下**单子律**（monad laws）：
> $$
> \mu_A \circ T(\mu_A) = \mu_A \circ \mu_{T(A)}, \qquad \forall A \in \mathrm{Ob}(\mathcal{C}),
> $$
> $$
> \mu_A \circ T(\eta_A) = \mathrm{id}_{T(A)} = \mu_A \circ \eta_{T(A)}, \qquad \forall A \in \mathrm{Ob}(\mathcal{C}).
> $$

> **注**：单子律的第一条称为**结合律**（associativity），第二条称为**单位律**（unit law）。类比于幺半群：$T$ 类比于集合，$\mu$ 类比于乘法，$\eta$ 类比于单位元，单子律即幺半群公理在函子范畴 $[\mathcal{C}, \mathcal{C}]$（端函子范畴，复合为乘法）中的对应。

## 余单子的定义

<!-- comonad_def -->
> [!Definition]
> **余单子 Comonad**：设 $\mathcal{C}$ 为范畴。一个**余单子**（comonad）是三元组 $(D, \varepsilon, \delta)$，其中：
> - $D: \mathcal{C} \to \mathcal{C}$ 是端函子；
> - $\varepsilon: D \Rightarrow \mathrm{Id}_{\mathcal{C}}$ 是自然变换，称为**余单位**（counit）；
> - $\delta: D \Rightarrow D^2$ 是自然变换（其中 $D^2 = D \circ D$），称为**余乘法**（comultiplication）；
>
> 满足以下**余单子律**（comonad laws）：
> $$
> D(\delta_A) \circ \delta_A = \delta_{D(A)} \circ \delta_A, \qquad \forall A \in \mathrm{Ob}(\mathcal{C}),
> $$
> $$
> D(\varepsilon_A) \circ \delta_A = \mathrm{id}_{D(A)} = \varepsilon_{D(A)} \circ \delta_A, \qquad \forall A \in \mathrm{Ob}(\mathcal{C}).
> $$

> **注**：余单子是单子在对偶范畴中的对偶概念。$\mathcal{C}$ 上的余单子等价于 $\mathcal{C}^{\mathrm{op}}$ 上的单子。

## 由伴随诱导的单子

<!-- monad_from_adjunction -->
> [!Theorem]
> **伴随诱导单子 Monad from Adjunction**：设 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{C}$），单位为 $\eta: \mathrm{Id}_{\mathcal{C}} \Rightarrow G \circ F$，余单位为 $\varepsilon: F \circ G \Rightarrow \mathrm{Id}_{\mathcal{D}}$。令：
> $$
> T = G \circ F: \mathcal{C} \to \mathcal{C},
> $$
> $$
> \mu = G \ast \varepsilon \ast F: T^2 = G \circ F \circ G \circ F \Rightarrow G \circ F = T,
> $$
> 即 $\mu_A = G(\varepsilon_{F(A)}): G(F(G(F(A)))) \to G(F(A))$。则 $(T, \eta, \mu)$ 是 $\mathcal{C}$ 上的单子。
>
> **证明思路**：单子的结合律由三角恒等式 $G(\varepsilon_B) \circ \eta_{G(B)} = \mathrm{id}_{G(B)}$ 以及 $\varepsilon$ 的自然性推出；单位律直接来自三角恒等式 $G(\varepsilon_{F(A)}) \circ \eta_{G(F(A))} = \mathrm{id}_{G(F(A))}$ 与 $G(F(\eta_A)) \cdot \eta_A = $ 三角恒等式的另一侧。

<!-- comonad_from_adjunction -->
> [!Theorem]
> **伴随诱导余单子 Comonad from Adjunction**：在同一伴随 $F \dashv G$ 下，令：
> $$
> D = F \circ G: \mathcal{D} \to \mathcal{D},
> $$
> $$
> \delta_B = F(\eta_{G(B)}): F(G(B)) \to F(G(F(G(B)))).
> $$
> 则 $(D, \varepsilon, \delta)$ 是 $\mathcal{D}$ 上的余单子。
>
> **证明思路**：余单子律由三角恒等式对偶地验证。

## 例子

<!-- monad_examples -->
> [!Example]+
> **单子的例子**：
> 1. **幂集单子**（$\mathbf{Set}$ 上）：$T = \mathcal{P}$（幂集函子），$\eta_A: A \to \mathcal{P}(A)$ 将 $a$ 映至 $\{a\}$，$\mu_A: \mathcal{P}(\mathcal{P}(A)) \to \mathcal{P}(A)$ 为取并 $\mu_A(\mathcal{F}) = \bigcup_{S \in \mathcal{F}} S$。对应于自由函子-忘却函子伴随（$\mathbf{Set}$ 与完全格范畴之间）。
> 2. **列表单子**（$\mathbf{Set}$ 上）：$T(A) = A^*$（$A$ 上有限序列的集合），$\eta_A(a) = [a]$（单元素列表），$\mu_A$ 为列表的拼接（flatten）。对应于自由幺半群的自由-忘却伴随。
> 3. **自由群单子**（$\mathbf{Set}$ 上）：$T(A) = F(A)$（由 $A$ 生成的自由群的底层集合），$\eta_A$ 为生成元嵌入，$\mu_A$ 为自由群中的化简乘积（对应自由-遗忘伴随 $F \dashv U$：$\mathbf{Set} \rightleftharpoons \mathbf{Grp}$）。
> 4. **Maybe 单子**（$\mathbf{Set}$ 上）：$T(A) = A \sqcup \{*\}$，$\eta_A = \iota_A$（嵌入），$\mu_A: (A \sqcup \{*\}) \sqcup \{*\} \to A \sqcup \{*\}$ 将 $\{*\}$ 合并。对应部分函数的复合结构。
