# 类函数空间 Class Function Space

<!-- class_function_definition -->
> [!Definition]
> **类函数 Class Function**：设 $G$ 是有限群，$F$ 是域。$G$ 上的一个**类函数**是满足
> $$f(hgh^{-1}) = f(g) \quad \text{对所有 } g, h \in G$$
> 的函数 $f: G \to F$。等价地，类函数是在 $G$ 的每个共轭类上取常值的函数。$G$ 上全体类函数构成 $F$-线性空间，记为
> $$\mathrm{Cl}(G, F) = \{f: G \to F \mid f \text{ 是类函数}\}.$$
> 当 $F = \mathbb{C}$ 时简记为 $\mathrm{Cl}(G)$。

> **注**：由定义可知，每个群表示的特征标都是类函数。

<!-- class_function_space_dimension -->
> [!Theorem]
> **类函数空间的维数 Dimension of Class Function Space**：设 $G$ 是有限群，$k$ 为 $G$ 的共轭类的个数。则
> $$\dim_F \mathrm{Cl}(G, F) = k.$$

> **证明思路**：$G$ 上的函数空间 $F^G$ 的维数为 $|G|$，以 $g$ 处取值为 $1$、其余为 $0$ 的 $\delta$-函数为基。类函数恰好是在每个共轭类上取常值的函数，因此以共轭类 $C_1, C_2, \ldots, C_k$ 的**指标函数** $\mathbf{1}_{C_i}$（在 $C_i$ 上取值 $1$，其余取 $0$）为基，这 $k$ 个指标函数线性无关且张成 $\mathrm{Cl}(G, F)$，故维数为 $k$。

<!-- conjugacy_class_indicator_basis -->
> [!Proposition]
> **共轭类指标函数构成基 Conjugacy Class Indicator Functions Form a Basis**：设 $G$ 的共轭类为 $C_1, C_2, \ldots, C_k$，对每个 $i$ 定义指标函数
> $$\mathbf{1}_{C_i}: G \to F, \quad \mathbf{1}_{C_i}(g) = \begin{cases} 1 & \text{若 } g \in C_i, \\ 0 & \text{其他}. \end{cases}$$
> 则 $\{\mathbf{1}_{C_1}, \mathbf{1}_{C_2}, \ldots, \mathbf{1}_{C_k}\}$ 是 $\mathrm{Cl}(G, F)$ 的一组基。

<!-- class_function_space_example -->
> [!Example]+
> **$S_3$ 的类函数空间**：$S_3$ 有 $3$ 个共轭类：$\{e\}$、$\{(12),(13),(23)\}$、$\{(123),(132)\}$，故 $\dim \mathrm{Cl}(S_3) = 3$。$S_3$ 恰好也有 $3$ 个不等价不可约复表示（平凡表示、符号表示、标准表示），其特征标构成 $\mathrm{Cl}(S_3)$ 的另一组基（这是特征标理论的核心结论）。
