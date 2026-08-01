# 可测空间

## 可测空间与 Borel 空间

<!-- measurable_space_definition -->
> [!Definition]
> **可测空间 Measurable Space**：由集合 $X$ 及其上的一个 $\sigma$ 代数 $\mathcal{A}$ 构成的偶对
> $$
> (X,\mathcal{A})
> $$
> 称为可测空间。$\mathcal{A}$ 中的集合称为可测集。

<!-- borel_space_definition -->
> [!Definition]
> **Borel 空间 Borel Space**：若 $X$ 是拓扑空间，则可测空间
> $$
> (X,\mathcal{B}(X))
> $$
> 称为 Borel 空间，其中 $\mathcal{B}(X)$ 为由 $X$ 的开集生成的 Borel $\sigma$ 代数。

<!-- discrete_measurable_space_example -->
> [!Example]+
> **离散可测空间 Discrete Measurable Space**：对任意集合 $X$，$(X,\mathcal{P}(X))$ 是可测空间，称为离散可测空间。在此空间中每个子集都可测；若 $X$ 配备离散拓扑，则其 Borel $\sigma$ 代数正是 $\mathcal{P}(X)$。

## 可测映射

<!-- measurable_map_definition -->
> [!Definition]
> **可测映射 Measurable Map**：设 $(X,\mathcal{A})$ 与 $(Y,\mathcal{B})$ 为可测空间。映射 $f:X\to Y$ 称为 $(\mathcal{A},\mathcal{B})$-可测，或简称可测，若对每个 $B\in\mathcal{B}$，都有
> $$
> f^{-1}(B)\in\mathcal{A}.
> $$

<!-- measurable_map_composition -->
> [!Proposition]
> **可测映射的复合 Composition of Measurable Maps**：若 $f:(X,\mathcal{A})\to(Y,\mathcal{B})$ 与 $g:(Y,\mathcal{B})\to(Z,\mathcal{C})$ 均可测，则 $g\circ f:(X,\mathcal{A})\to(Z,\mathcal{C})$ 可测。
>
> **证明思路**：对任意 $C\in\mathcal{C}$，有 $(g\circ f)^{-1}(C)=f^{-1}(g^{-1}(C))$；先由 $g$ 的可测性得到 $g^{-1}(C)\in\mathcal{B}$，再由 $f$ 的可测性得结论。

<!-- measurable_map_generator_criterion -->
> [!Proposition]
> **由生成类检验可测性 Generator Criterion for Measurability**：若 $\mathcal{B}=\sigma(\mathcal{E})$，则映射 $f:(X,\mathcal{A})\to(Y,\mathcal{B})$ 可测，当且仅当
> $$
> f^{-1}(E)\in\mathcal{A}\qquad(E\in\mathcal{E}).
> $$
>
> **证明思路**：令 $\mathcal{D}=\{B\subseteq Y:f^{-1}(B)\in\mathcal{A}\}$。原像保持补与可数并，故 $\mathcal{D}$ 是 $\sigma$ 代数；若它包含 $\mathcal{E}$，便包含 $\sigma(\mathcal{E})$。

<!-- continuous_map_borel_measurable -->
> [!Theorem]
> **连续映射的 Borel 可测性 Borel Measurability of Continuous Maps**：若 $X,Y$ 为拓扑空间，$f:X\to Y$ 连续，则
> $$
> f:(X,\mathcal{B}(X))\to(Y,\mathcal{B}(Y))
> $$
> 是可测映射。
>
> **证明思路**：连续性保证每个开集的原像是开集，进而属于 $\mathcal{B}(X)$；由 Borel $\sigma$ 代数由开集生成及生成类检验即得。

> **注**：本小节参见 Donald L. Cohn, *Measure Theory*, 2nd ed., Section 1.2；Gerald B. Folland, *Real Analysis*, 2nd ed., Section 1.1。
