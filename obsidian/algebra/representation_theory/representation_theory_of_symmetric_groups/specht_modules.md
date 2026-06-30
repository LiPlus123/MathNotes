# Specht 模 Specht Modules

<!-- specht_module_definition -->
> [!Definition]
> **Specht 模 Specht Module**：设 $\lambda \vdash n$，$T$ 是形状为 $\lambda$ 的（任意）Young 表，$c_T = a_T b_T \in \mathbb{C}[S_n]$ 是对应的 Young 对称化子。定义 $\lambda$ 对应的 **Specht 模**为
> $$S^\lambda = \mathbb{C}[S_n] \cdot c_T.$$
> 由 Young 对称化子定理，$S^\lambda$ 的同构类不依赖于 $T$ 的选取（只依赖于形状 $\lambda$），故 $S^\lambda$ 是良定义的 $\mathbb{C}[S_n]$-模（即 $S_n$ 的复线性表示）。

<!-- specht_module_irreducible -->
> [!Theorem]
> **Specht 模是不可约的 Specht Modules are Irreducible**：对每个分拆 $\lambda \vdash n$，Specht 模 $S^\lambda$ 是不可约的 $\mathbb{C}[S_n]$-模。

> **证明思路**：$S^\lambda = \mathbb{C}[S_n] c_T$ 是由幂等元 $c_T$（规范化后）生成的左理想。任何非零子模包含 $c_T$，从而等于 $S^\lambda$ 本身。这可以通过分析 Young 对称化子的代数性质（特别是 $c_T$ 的"极小性"）来证明。

<!-- specht_modules_classify_irreducibles -->
> [!Theorem]
> **Specht 模给出全部不可约表示 Specht Modules Classify Irreducible Representations**：集合 $\{S^\lambda : \lambda \vdash n\}$ 构成 $S_n$ 在 $\mathbb{C}$ 上全部不可约表示的一个完整代表系。具体地：
> 1. 对 $\lambda \neq \mu$（均 $\vdash n$），$S^\lambda \not\cong S^\mu$；
> 2. $S_n$ 的每个不可约 $\mathbb{C}$-表示均与某个 $S^\lambda$ 同构。
>
> 因此 $S_n$ 恰有 $p(n)$ 个（至同构意义下的）不可约复表示，与 $S_n$ 的共轭类个数相等。

> **证明思路**：由特征标理论，$S_n$ 的不可约表示个数等于共轭类个数 $p(n)$。Specht 模给出 $p(n)$ 个两两不同构的不可约模（不同构由对应特征标的不同可验证），因此它们必然穷举了所有不可约表示。

<!-- specht_module_dimension -->
> [!Theorem]
> **Specht 模的维数 Dimension of Specht Module**：$\dim_\mathbb{C} S^\lambda = f^\lambda$，即 $S^\lambda$ 的维数等于形状为 $\lambda$ 的标准 Young 表的个数（由钩长公式计算，见钩长公式小节）。

> **证明思路**：$S^\lambda$ 有一组自然基：对每个标准 Young 表 $T \in \mathrm{SYT}(\lambda)$，令 $v_T = b_T e_{e_{T_0}}$（其中 $e_{T_0}$ 是某规范 Young 表）的适当变形（polytabloid 构造），可得 $S^\lambda$ 的一组基 $\{v_T : T \in \mathrm{SYT}(\lambda)\}$，故 $\dim S^\lambda = |\mathrm{SYT}(\lambda)| = f^\lambda$。

<!-- polytabloid_definition -->
> [!Definition]
> **多项式型 Polytabloid**：设 $T$ 是形状为 $\lambda$ 的 Young 表（不要求标准）。将 $T$ 视为 $\{1,\ldots,n\}$ 的一种排列（"填表"），对应 $\mathbb{C}[S_n]$ 的标准基元 $e_T$（即恒等置换将 $T_0$ 变为 $T$ 所对应的元素）。定义 $T$ 对应的 **polytabloid** 为
> $$v_T = b_T \cdot e_T \in \mathbb{C}\text{-span}\{\text{所有形状为 }\lambda\text{ 的 Young 表}\},$$
> 其中 $b_T = \sum_{\sigma \in C_T} \mathrm{sgn}(\sigma)\, e_\sigma$ 作用在"填表"的线性空间上。Specht 模 $S^\lambda$ 恰好由所有**标准** Young 表 $T \in \mathrm{SYT}(\lambda)$ 对应的 polytabloid $\{v_T\}$ 线性张成，且构成一组基。

<!-- specht_module_examples -->
> [!Example]+
> **低阶对称群的 Specht 模 Specht Modules for Low-Rank Symmetric Groups**：
>
> **$S_3$（$n=3$，$p(3)=3$）**：三个不可约表示为
> - $S^{(3)}$：平凡表示，$\dim = 1$，对应分拆 $(3)$；
> - $S^{(2,1)}$：标准表示，$\dim = 2$，对应分拆 $(2,1)$，$f^{(2,1)} = 2$；
> - $S^{(1,1,1)}$：符号表示，$\dim = 1$，对应分拆 $(1,1,1)$。
>
> 验证：$1^2 + 2^2 + 1^2 = 6 = 3! = |S_3|$。$\checkmark$
>
> **$S_4$（$n=4$，$p(4)=5$）**：五个不可约表示为
> $$S^{(4)}(\dim 1),\; S^{(3,1)}(\dim 3),\; S^{(2,2)}(\dim 2),\; S^{(2,1,1)}(\dim 3),\; S^{(1,1,1,1)}(\dim 1).$$
> 验证：$1^2 + 3^2 + 2^2 + 3^2 + 1^2 = 1+9+4+9+1 = 24 = 4!$。$\checkmark$

<!-- specht_dual_relation -->
> [!Proposition]
> **Specht 模的对偶 Dual of Specht Module**：设 $\lambda' \vdash n$ 是 $\lambda$ 的共轭分拆（转置 Young 图）。则
> $$(S^\lambda)^* \cong S^{\lambda'} \otimes \chi_{\mathrm{sgn}},$$
> 即 $S^\lambda$ 的对偶表示同构于 $S^{\lambda'}$ 与符号表示的张量积。特别地，当 $\lambda$ 是自共轭分拆（$\lambda = \lambda'$）时，$S^\lambda$ 张量上符号表示后同构于自身。

> **证明思路**：直接计算两者的特征标，利用 $\chi_{S^{\lambda'} \otimes \chi_{\mathrm{sgn}}}(\sigma) = \chi_{S^{\lambda'}}(\sigma) \cdot \mathrm{sgn}(\sigma)$，并与 Specht 模特征标的已知公式对比。
