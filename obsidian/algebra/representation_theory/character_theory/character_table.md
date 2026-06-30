# 特征标表 Character Table

<!-- character_table_definition -->
> [!Definition]
> **特征标表 Character Table**：设 $G$ 是有限群，共有 $k$ 个共轭类 $C_1, C_2, \ldots, C_k$（$C_1 = \{e\}$），全体不等价不可约复表示为 $\rho_1, \rho_2, \ldots, \rho_k$（$\rho_1$ 取平凡表示），设 $\chi_i = \chi_{\rho_i}$，$c_j$ 是 $C_j$ 的代表元。**特征标表**是以不可约表示为行、以共轭类为列的矩阵：
> $$\begin{array}{c|cccc}
>  & C_1 & C_2 & \cdots & C_k \\
> \hline
> \chi_1 & \chi_1(c_1) & \chi_1(c_2) & \cdots & \chi_1(c_k) \\
> \chi_2 & \chi_2(c_1) & \chi_2(c_2) & \cdots & \chi_2(c_k) \\
> \vdots & \vdots & \vdots & & \vdots \\
> \chi_k & \chi_k(c_1) & \chi_k(c_2) & \cdots & \chi_k(c_k) \\
> \end{array}$$
> 习惯上，表的第一列为各不可约表示的维数 $n_i = \chi_i(e)$，第一行为全 $1$ 的平凡特征标。

<!-- character_table_orthogonality -->
> [!Proposition]
> **特征标表中的正交关系 Orthogonality in Character Table**：设特征标表的矩阵为 $X = (\chi_i(c_j))$，共轭类 $C_j$ 的大小为 $|C_j|$，则：
>
> **行正交（第一正交关系）**：
> $$\sum_{j=1}^k |C_j| \, \chi_i(c_j) \overline{\chi_{i'}(c_j)} = |G| \, \delta_{ii'}.$$
>
> **列正交（第二正交关系）**：
> $$\sum_{i=1}^k \chi_i(c_j) \overline{\chi_i(c_{j'})} = \frac{|G|}{|C_j|} \delta_{jj'} = |C_G(c_j)| \, \delta_{jj'}.$$

> **注**：行正交说明特征标表的行（加权后）两两正交；列正交说明特征标表的列也两两正交，且归一化常数与中心化子大小相关。这两组关系可用于检验特征标表的正确性。

<!-- information_from_character_table -->
> [!Proposition]
> **从特征标表读取群信息 Group Information from Character Table**：由 $G$ 的特征标表可以读出以下群信息：
> 1. $G$ 的**阶**：$|G| = \sum_{i=1}^k n_i^2$（第一列各元素的平方和）；
> 2. $G$ 的**共轭类个数**：等于特征标表的行数（或列数）；
> 3. **中心 $Z(G)$ 的阶**：$|Z(G)| = $ 第一列（单位元处）全部取值绝对值等于 $n_i$ 的不可约表示个数的加权和；更精确地，$g \in Z(G)$ 当且仅当 $|\chi_i(g)| = n_i$ 对所有 $i$ 成立；
> 4. **正规子群**：$G$ 的正规子群恰好是某些不可约特征标为 $1$ 的共轭类所生成的子群，即 $N \trianglelefteq G$ 当且仅当 $N = \bigcap_{\chi_i(N)=\chi_i(e)} \ker \chi_i$；
> 5. **$G$ 是否交换**：$G$ 是交换群当且仅当特征标表中所有表示均为一维（即第一列全为 $1$）。

<!-- character_table_s3 -->
> [!Example]+
> **$S_3$ 的特征标表**：$S_3$ 有三个共轭类（大小分别为 $1, 3, 2$）和三个不等价不可约复表示：
> $$\begin{array}{c|rrr}
> S_3 & e & (12) & (123) \\
> \hline
> \chi_{\mathrm{triv}} & 1 & 1 & 1 \\
> \chi_{\mathrm{sgn}} & 1 & -1 & 1 \\
> \chi_{\mathrm{std}} & 2 & 0 & -1 \\
> \end{array}$$
>
> 验证维数恒等式：$1^2 + 1^2 + 2^2 = 6 = |S_3|$。验证行正交：$\langle \chi_{\mathrm{std}}, \chi_{\mathrm{triv}} \rangle = \frac{1}{6}(2 + 0 - 2) = 0$。

<!-- character_table_z4 -->
> [!Example]+
> **$\mathbb{Z}/4\mathbb{Z}$ 的特征标表**：$G = \mathbb{Z}/4\mathbb{Z}$，$i = \sqrt{-1}$，四个元素构成四个共轭类（$G$ 交换），四个不可约表示均为一维（$\chi_j(k) = i^{jk}$，$j = 0,1,2,3$）：
> $$\begin{array}{c|rrrr}
> \mathbb{Z}/4\mathbb{Z} & 0 & 1 & 2 & 3 \\
> \hline
> \chi_0 & 1 & 1 & 1 & 1 \\
> \chi_1 & 1 & i & -1 & -i \\
> \chi_2 & 1 & -1 & 1 & -1 \\
> \chi_3 & 1 & -i & -1 & i \\
> \end{array}$$
