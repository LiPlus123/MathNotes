# Jordan 标准形

<!-- jordan_canonical_form_def -->
> [!Definition]
> **Jordan 标准形 Jordan Canonical Form**：若方阵 $J \in M_n(F)$ 是若干 Jordan 块的直和，即
> $$J = J_{k_1}(\lambda_1) \oplus J_{k_2}(\lambda_2) \oplus \cdots \oplus J_{k_r}(\lambda_r)$$
> 其中 $\lambda_1, \lambda_2, \ldots, \lambda_r \in F$（不必互不相同），$k_1 + k_2 + \cdots + k_r = n$，则称 $J$ 为 **Jordan 标准形**（Jordan canonical form）或 **Jordan 正则形**。

> **注**：Jordan 标准形是对角矩阵的推广：当所有 Jordan 块的阶数均为 $1$ 时，Jordan 标准形退化为对角矩阵。Jordan 标准形中 Jordan 块的排列顺序可以任意，通常约定同一特征值的块按阶数从大到小排列。

<!-- jordan_canonical_form_thm -->
> [!Theorem]
> **Jordan 标准形定理 Jordan Canonical Form Theorem**：设 $A \in M_n(\mathbb{C})$，则 $A$ 在 $\mathbb{C}$ 上相似于唯一的 Jordan 标准形（在允许 Jordan 块重排的意义下），即存在可逆矩阵 $P \in M_n(\mathbb{C})$ 使得
> $$P^{-1}AP = J = J_{k_1}(\lambda_1) \oplus J_{k_2}(\lambda_2) \oplus \cdots \oplus J_{k_r}(\lambda_r)$$
> 其中 Jordan 块的选取（在不计排列顺序的意义下）由 $A$ 唯一确定。
>
> **证明思路**（存在性）：对矩阵的阶数 $n$ 归纳。$\mathbb{C}$ 是代数闭域，故特征多项式有根 $\lambda_1$，取 $A$ 的广义特征子空间（根子空间）$\ker(A - \lambda_1 I)^{n_1}$（$n_1$ 为 $\lambda_1$ 的代数重数），利用幂零算子的 Jordan 分解将其化为若干 $J_{k_i}(\lambda_1)$ 的直和；对 $F^n$ 的补子空间（对应其他特征值）递归处理。
>
> **证明思路**（唯一性）：Jordan 块 $J_k(\lambda_0)$ 的阶数 $k$ 等于满足 $\mathrm{rank}(A - \lambda_0 I)^{k-1} - \mathrm{rank}(A - \lambda_0 I)^k > 0$ 的数目，由秩的不变量唯一确定 Jordan 块的个数和大小。

<!-- jordan_canonical_form_over_field -->
> [!Corollary]
> **域 $F$ 上的 Jordan 标准形 Jordan Canonical Form over $F$**：设 $A \in M_n(F)$，则 $A$ 在 $F$ 上相似于 Jordan 标准形当且仅当 $A$ 的特征多项式 $p_A(\lambda)$ 在 $F[x]$ 上完全分裂（即所有特征值均属于 $F$）。特别地，实矩阵在 $\mathbb{C}$ 上有 Jordan 标准形，但实矩阵的 Jordan 标准形在 $\mathbb{R}$ 上可能不存在（当有复特征值时）。

<!-- jordan_blocks_and_eigenvalues -->
> [!Proposition]
> **Jordan 块与特征值的对应关系 Correspondence between Jordan Blocks and Eigenvalues**：设 $A \sim J = J_{k_1}(\lambda_1) \oplus \cdots \oplus J_{k_r}(\lambda_r)$，则：
> 1. $A$ 的特征多项式为 $p_A(\lambda) = \prod_{i=1}^r (\lambda_i - \lambda)^{k_i}$；
> 2. 特征值 $\lambda_0$ 的**代数重数** $m_a(\lambda_0)$ 等于以 $\lambda_0$ 为对角元的所有 Jordan 块的阶数之和；
> 3. 特征值 $\lambda_0$ 的**几何重数** $m_g(\lambda_0)$ 等于以 $\lambda_0$ 为对角元的 Jordan 块的**个数**；
> 4. $A$ 可对角化当且仅当所有 Jordan 块均为 $1 \times 1$ 块，即所有特征值的几何重数等于代数重数。

<!-- jordan_form_minimal_polynomial -->
> [!Theorem]
> **Jordan 标准形与最小多项式 Minimal Polynomial from Jordan Form**：设 $A \sim J_{k_1}(\lambda_1) \oplus \cdots \oplus J_{k_r}(\lambda_r)$，对每个不同特征值 $\lambda_0$，记 $d(\lambda_0)$ 为以 $\lambda_0$ 为对角元的 Jordan 块中最大的阶数，则 $A$ 的最小多项式为
> $$m_A(\lambda) = \prod_{\lambda_0 \text{ 不同特征值}} (\lambda - \lambda_0)^{d(\lambda_0)}$$
>
> **证明思路**：$m_A(\lambda)$ 零化所有 Jordan 块，$J_k(\lambda_0)$ 的最小多项式为 $(\lambda - \lambda_0)^k$，故 $m_A(\lambda)$ 等于各块最小多项式的最小公倍式，结合同一特征值取最大阶数即得。

<!-- jordan_form_computing_method -->
> [!Example]+
> **计算 Jordan 标准形的方法 Method for Computing Jordan Canonical Form**：设 $A \in M_n(\mathbb{C})$，计算步骤如下：
> 1. 计算特征多项式 $p_A(\lambda)$，确定特征值 $\lambda_1, \ldots, \lambda_s$（不同）及代数重数 $m_a(\lambda_i)$；
> 2. 对每个特征值 $\lambda_i$，计算秩序列 $r_j = \mathrm{rank}(A - \lambda_i I)^j$（$j = 0, 1, 2, \ldots$），直至 $r_j = n - m_a(\lambda_i)$；
> 3. 令 $d_j = (r_{j-1} - r_j) - (r_j - r_{j+1})$，则阶数恰好等于 $j$ 的 Jordan 块个数为 $d_j$；
> 4. 将所有特征值的 Jordan 块合并，得到 Jordan 标准形 $J$。
>
> 过渡矩阵 $P$ 由各特征值对应的**广义特征向量链**（Jordan 链）构造：对每个 $J_k(\lambda_0)$ 块，找一列向量 $v_k, v_{k-1}, \ldots, v_1$ 满足 $(A - \lambda_0 I)v_j = v_{j-1}$（$v_0 = 0$），即 $v_k \in \ker(A-\lambda_0 I)^k \setminus \ker(A-\lambda_0 I)^{k-1}$，将这些链向量按顺序排列为 $P$ 的列即得 $P^{-1}AP = J$。
