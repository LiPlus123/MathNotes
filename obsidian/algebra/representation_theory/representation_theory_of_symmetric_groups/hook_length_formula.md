# 钩长公式 Hook Length Formula

<!-- hook_definition -->
> [!Definition]
> **钩 Hook**：设 $\lambda \vdash n$，$(i,j)$ 是 Young 图 $[\lambda]$ 中的一个方格。$(i,j)$ 处的**钩**（hook）是由以下方格构成的集合：
> $$\mathrm{Hook}_\lambda(i,j) = \{(i, j') : j' \geq j\} \cup \{(i', j) : i' \geq i\} \cap [\lambda],$$
> 即同行中 $(i,j)$ 右侧（含 $(i,j)$ 本身）的所有方格，加上同列中 $(i,j)$ 下方（不含 $(i,j)$，已含于前者）的所有方格。$(i,j)$ 处的**钩长**（hook length）定义为
> $$h(i,j) = (\lambda_i - j) + (\lambda'_j - i) + 1,$$
> 其中 $\lambda'_j$ 为共轭分拆 $\lambda'$ 的第 $j$ 个分部（即 $[\lambda]$ 第 $j$ 列的方格数）。

> **注**：钩长 = 同行右侧方格数（含自身）+ 同列下方方格数 = $(\lambda_i - j + 1) + (\lambda'_j - i)$，化简即得上式。

<!-- hook_length_formula -->
> [!Theorem]
> **钩长公式 Hook Length Formula**：设 $\lambda \vdash n$，则形状为 $\lambda$ 的标准 Young 表个数为
> $$f^\lambda = \frac{n!}{\displaystyle\prod_{(i,j) \in [\lambda]} h(i,j)},$$
> 其中乘积遍历 $[\lambda]$ 的所有 $n$ 个方格，$h(i,j)$ 是各方格处的钩长。

> **证明思路（框架）**：存在多种证明，标准证明使用**概率证明**（Frame–Robinson–Thrall 的组合论证）或 **Jeu de taquin**（方格滑动）技术。概率证明的思路：构造形状为 $\lambda$ 的随机标准 Young 表的均匀分布，通过对"钩步行"（hook walk）的分析，证明填入数字 $n$ 所在格以某概率分布选取，从而归纳地得到钩长公式。另一种证明通过 RSK 对应和行列式公式（Jacobi-Trudi 恒等式）给出。

<!-- hook_length_formula_example -->
> [!Example]+
> **钩长公式计算示例 Hook Length Formula Calculation**：
>
> **$\lambda = (3, 2, 1) \vdash 6$**：
>
> Young 图各格的钩长（第 $i$ 行第 $j$ 列）：
> $$\begin{array}{|c|c|c|}
> \hline
> 5 & 3 & 1 \\ \hline
> 3 & 1 \\ \cline{1-2}
> 1 \\ \cline{1-1}
> \end{array}$$
> 计算：$(1,1)$：$h = 3+3-1 = 5$；$(1,2)$：$h = 2+2-1 = 3$；$(1,3)$：$h = 1+1-1 = 1$；
> $(2,1)$：$h = 2+2-2 = 2$，但 $\lambda'_1 = 3$，故 $h(2,1) = (2-1)+(3-2)+1 = 1+1+1=3$；
> $(2,2)$：$h(2,2) = (2-2)+(\lambda'_2-2)+1 = 0+(2-2)+1=1$；$(3,1)$：$h(3,1) = (1-1)+(\lambda'_1-3)+1 = 0+0+1=1$。
>
> 故 $f^{(3,2,1)} = \dfrac{6!}{5 \cdot 3 \cdot 1 \cdot 3 \cdot 1 \cdot 1} = \dfrac{720}{45} = 16$。

<!-- hook_length_formula_example_small -->
> [!Example]+
> **$S_3$ 的钩长公式 Hook Length Formula for $S_3$**：$\lambda = (2,1) \vdash 3$，$\lambda' = (2,1)$（自共轭）。
>
> 各格钩长：$h(1,1) = (2-1) + (2-1) + 1 = 3$，$h(1,2) = (2-2)+(1-1)+1 = 1$，$h(2,1) = (1-1)+(2-2)+1 = 1$。
>
> $$f^{(2,1)} = \frac{3!}{3 \cdot 1 \cdot 1} = \frac{6}{3} = 2.$$
>
> 这与直接列举标准 Young 表（$T_1, T_2$ 各一个，共 2 个）一致。$\checkmark$

<!-- hook_length_formula_dimension_formula -->
> [!Corollary]
> **维数公式 Dimension Formula**：$\dim S^\lambda = f^\lambda = \dfrac{n!}{\displaystyle\prod_{(i,j)\in[\lambda]} h(i,j)}$。

> **注**：这一公式也可通过 $S_n$ 表示论的其他途径推导，例如利用 Frobenius 特征标公式（Frobenius character formula）直接给出 $\chi_{S^\lambda}$ 的表达式，再令 $g = e$ 取迹，即得 $f^\lambda = \chi_{S^\lambda}(e)$，结合 Schur 函数理论可得钩长公式。

<!-- hook_length_formula_sum_of_squares -->
> [!Corollary]
> **维数平方和 Sum of Squares of Dimensions**：由 $S_n$ 的表示论知 $\sum_{\lambda \vdash n} (f^\lambda)^2 = n!$，即所有 Specht 模维数的平方和等于 $|S_n|$。

> **证明思路**：这是有限群表示论中 $\sum_i (\dim V_i)^2 = |G|$ 的特例，其中求和遍历所有不可约表示。
