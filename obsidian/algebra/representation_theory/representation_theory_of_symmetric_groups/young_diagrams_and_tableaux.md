# Young 图与 Young 表 Young Diagrams and Tableaux

<!-- young_diagram_definition -->
> [!Definition]
> **Young 图 Young Diagram**：设 $\lambda = (\lambda_1, \lambda_2, \ldots, \lambda_k) \vdash n$。$\lambda$ 的 **Young 图**（也称 **Ferrers 图**）$[\lambda]$ 是由方格（cells/boxes）组成的图形：第 $i$ 行（从上至下）有 $\lambda_i$ 个方格（从左至右排列），共 $n$ 个方格。方格用坐标 $(i, j)$ 表示，其中 $i$ 为行标，$j$ 为列标（$1 \leq i \leq k$，$1 \leq j \leq \lambda_i$）。

> **注**：本笔记采用**英制约定**（English convention）：行从上至下编号，第 1 行最长。（另有法制约定以第 1 行在下，两者在某些公式中有所差异。）

<!-- conjugate_partition_definition -->
> [!Definition]
> **共轭分拆 Conjugate Partition**：设 $\lambda \vdash n$，$\lambda$ 的**共轭分拆**（也称**转置分拆**）$\lambda' = (\lambda'_1, \lambda'_2, \ldots) \vdash n$ 定义为
> $$\lambda'_j = |\{i : \lambda_i \geq j\}|, \quad j \geq 1,$$
> 即 $\lambda'_j$ 为 $[\lambda]$ 第 $j$ 列的方格数。$[\lambda']$ 是 $[\lambda]$ 沿主对角线作转置所得的 Young 图。

<!-- young_tableau_definition -->
> [!Definition]
> **Young 表 Young Tableau**：设 $\lambda \vdash n$。$\lambda$ **形状**的 **Young 表** $T$ 是将 $1, 2, \ldots, n$（不重复地）填入 $[\lambda]$ 的各方格中所得到的映射 $T: [\lambda] \to \{1, 2, \ldots, n\}$。若填入的数满足：
> - 每行从左到右**严格递增**，
> - 每列从上到下**严格递增**，
>
> 则称 $T$ 为**标准 Young 表**（Standard Young Tableau，SYT）。形状为 $\lambda$ 的所有标准 Young 表的集合记为 $\mathrm{SYT}(\lambda)$，其元素个数记为 $f^\lambda$。

<!-- semistandard_young_tableau_definition -->
> [!Definition]
> **半标准 Young 表 Semistandard Young Tableau**：设 $\lambda \vdash n$，$\mu$ 是正整数组成的向量（**权**）。填有正整数的 $\lambda$ 形状 Young 表 $T$ 称为**半标准 Young 表**（SSYT），若满足：
> - 每行从左到右**弱递增**（允许相等），
> - 每列从上到下**严格递增**。
>
> 若填入正整数均不超过 $m$，则称 $T$ 是 $m$ 上的半标准 Young 表。

<!-- young_diagram_example -->
> [!Example]+
> **Young 图示例**：分拆 $\lambda = (3, 2, 1) \vdash 6$ 的 Young 图 $[\lambda]$ 为：
> $$\begin{array}{|c|c|c|}
> \hline
> \phantom{0} & \phantom{0} & \phantom{0} \\ \hline
> \phantom{0} & \phantom{0} \\ \cline{1-2}
> \phantom{0} \\ \cline{1-1}
> \end{array}$$
> 共 $3+2+1=6$ 个方格。其共轭分拆为 $\lambda' = (3, 2, 1)$，即 $\lambda$ 是**自共轭分拆**（self-conjugate partition）。

<!-- standard_young_tableau_example -->
> [!Example]+
> **标准 Young 表示例**：$\lambda = (2,1) \vdash 3$ 的标准 Young 表有 $f^{(2,1)} = 2$ 个：
> $$T_1 = \begin{array}{|c|c|}\hline 1 & 2 \\ \hline 3 \\ \cline{1-1}\end{array}, \qquad T_2 = \begin{array}{|c|c|}\hline 1 & 3 \\ \hline 2 \\ \cline{1-1}\end{array}.$$
> $T_1$：第一行 $1 < 2$，第一列 $1 < 3$，第二列只有一格，均满足标准条件。$T_2$：第一行 $1 < 3$，第一列 $1 < 2$，满足标准条件。

<!-- content_definition -->
> [!Definition]
> **方格的内容 Content of a Cell**：Young 图 $[\lambda]$ 中方格 $(i,j)$ 的**内容**（content）定义为
> $$c(i,j) = j - i.$$
> 内容沿反对角线为常数。

<!-- shape_of_tableau -->
> [!Definition]
> **表的形状与内容字 Shape and Content Word**：Young 表 $T$ 的**形状**记作 $\mathrm{sh}(T) = \lambda$（若 $T$ 填的是形状为 $\lambda$ 的 Young 图）。标准 Young 表 $T \in \mathrm{SYT}(\lambda)$ 中，数字 $k$ 所在方格记为 $(r_k, c_k)$，$k$ 的**下降集**定义为
> $$\mathrm{Des}(T) = \{k \in \{1, \ldots, n-1\} : k+1 \text{ 在 } T \text{ 中位于 } k \text{ 的下方某行}\}.$$
