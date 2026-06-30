# Young 对称化子 Young Symmetrizers

<!-- row_column_stabilizers -->
> [!Definition]
> **行稳定子与列稳定子 Row and Column Stabilizers**：设 $\lambda \vdash n$，$T$ 是形状为 $\lambda$ 的 Young 表（不要求标准）。
> - $T$ 的**行稳定子** $R_T$ 是 $S_n$ 中保持 $T$ 每一行的集合不变的置换全体（即只在行内置换元素）：
>   $$R_T = \{\sigma \in S_n : \sigma \text{ 保持 } T \text{ 的每行的集合不变}\} \leq S_n.$$
> - $T$ 的**列稳定子** $C_T$ 是 $S_n$ 中保持 $T$ 每一列的集合不变的置换全体：
>   $$C_T = \{\sigma \in S_n : \sigma \text{ 保持 } T \text{ 的每列的集合不变}\} \leq S_n.$$
>
> $R_T$ 同构于各行的对称群之积，$C_T$ 同构于各列的对称群之积。

<!-- row_symmetrizer_column_antisymmetrizer -->
> [!Definition]
> **行对称子与列反对称子 Row Symmetrizer and Column Antisymmetrizer**：设 $T$ 是形状为 $\lambda \vdash n$ 的 Young 表。在群代数 $\mathbb{C}[S_n]$ 中，定义：
> - $T$ 的**行对称子**：
>   $$a_T = \sum_{\sigma \in R_T} e_\sigma \in \mathbb{C}[S_n].$$
> - $T$ 的**列反对称子**：
>   $$b_T = \sum_{\sigma \in C_T} \mathrm{sgn}(\sigma)\, e_\sigma \in \mathbb{C}[S_n].$$
> 这里 $e_\sigma$ 表示 $\mathbb{C}[S_n]$ 中对应置换 $\sigma$ 的基元素。

<!-- young_symmetrizer_definition -->
> [!Definition]
> **Young 对称化子 Young Symmetrizer**：设 $T$ 是形状为 $\lambda \vdash n$ 的 Young 表。$T$ 对应的 **Young 对称化子**定义为
> $$c_T = a_T \cdot b_T \in \mathbb{C}[S_n].$$

> **注**：乘积顺序为先作列反对称化再作行对称化（按 $\mathbb{C}[S_n]$ 中的乘法，习惯有时也写为 $b_T a_T$，但本笔记取 $c_T = a_T b_T$）。结果与 $T$ 的选取有关，但不同选取（同一形状）给出 $\mathbb{C}[S_n]$-模同构的左理想。

<!-- young_symmetrizer_idempotent -->
> [!Proposition]
> **Young 对称化子的幂等性 Idempotency of Young Symmetrizer**：设 $T$ 是形状为 $\lambda \vdash n$ 的标准 Young 表，$f^\lambda = |\mathrm{SYT}(\lambda)|$ 为该形状标准 Young 表的个数。则
> $$c_T^2 = \frac{n!}{f^\lambda} \cdot c_T,$$
> 即 $c_T$ 本质上是幂等元（up to scalar）。规范化幂等元 $e_T = \frac{f^\lambda}{n!} c_T$ 满足 $e_T^2 = e_T$。

> **证明思路**：由 $a_T$ 和 $b_T$ 各自的幂等性（$a_T^2 = |R_T| \cdot a_T$，$b_T^2 = |C_T| \cdot b_T$），以及关键引理（$b_T a_T = \frac{n!}{f^\lambda} c_T$ 在标准 Young 表的情形成立），可以推导出 $c_T^2 = a_T (b_T a_T) b_T = \frac{n!}{f^\lambda} c_T$。

<!-- young_symmetrizer_left_ideal -->
> [!Theorem]
> **Young 对称化子生成不可约模 Young Symmetrizer Generates Irreducible Module**：设 $T$ 是形状为 $\lambda \vdash n$ 的（任意）Young 表，$c_T = a_T b_T$ 是对应的 Young 对称化子。则左理想
> $$\mathbb{C}[S_n] \cdot c_T \leq \mathbb{C}[S_n]$$
> 是 $\mathbb{C}[S_n]$ 的不可约左模，且对同一形状 $\lambda$ 的不同 Young 表 $T, T'$，有
> $$\mathbb{C}[S_n] \cdot c_T \cong \mathbb{C}[S_n] \cdot c_{T'}$$
> 作为 $\mathbb{C}[S_n]$-模（即作为 $S_n$ 的表示）同构。

> **证明思路**：利用 $c_T$ 的幂等性，$\mathbb{C}[S_n] \cdot c_T$ 是直和因子；利用对 $\lambda$ 的分析（行稳定子和列稳定子的相互作用），可以证明该模是不可约的（即没有非平凡不变子空间）。不同 Young 表的情形由共轭关系归约。

<!-- young_symmetrizer_example -->
> [!Example]+
> **$S_3$ 的 Young 对称化子 Young Symmetrizer for $S_3$**：取 $\lambda = (2,1) \vdash 3$，标准 Young 表
> $$T_1 = \begin{array}{|c|c|}\hline 1 & 2 \\ \hline 3 \\ \cline{1-1}\end{array}.$$
> $R_{T_1}$ 由保持行 $\{1,2\}$ 和行 $\{3\}$ 不变的置换构成：$R_{T_1} = \{e, (12)\} \cong S_2$。
> $C_{T_1}$ 由保持列 $\{1,3\}$ 和列 $\{2\}$ 不变的置换构成：$C_{T_1} = \{e, (13)\} \cong S_2$。
> 于是
> $$a_{T_1} = e_{e} + e_{(12)}, \quad b_{T_1} = e_{e} - e_{(13)},$$
> $$c_{T_1} = a_{T_1} b_{T_1} = (e_e + e_{(12)})(e_e - e_{(13)}) = e_e - e_{(13)} + e_{(12)} - e_{(12)(13)}.$$
> 注意 $(12)(13) = (132)$，故 $c_{T_1} = e_e + e_{(12)} - e_{(13)} - e_{(132)}$。
> 左理想 $\mathbb{C}[S_3] \cdot c_{T_1}$ 即为 $S_3$ 的标准表示（二维不可约表示）。
