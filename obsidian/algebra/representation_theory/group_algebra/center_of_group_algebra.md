# 群代数的中心 Center of Group Algebra

<!-- center_of_fg_definition_basis -->
> [!Theorem]
> **群代数中心的基 Basis of Center of Group Algebra**：设 $G$ 是有限群，$F$ 是域。对每个共轭类 $C \subseteq G$，定义**类和**（class sum）：
> $$\hat{C} = \sum_{g \in C} e_g \in FG.$$
> 则 $Z(FG)$（$FG$ 的中心）以所有类和 $\{\hat{C} \mid C \text{ 是 } G \text{ 的共轭类}\}$ 为 $F$-基，从而
> $$\dim_F Z(FG) = \text{$G$ 的共轭类个数}.$$

> **证明思路**：
>
> **（类和属于中心）**：对任意 $h \in G$，$e_h \hat{C} e_h^{-1} = \sum_{g \in C} e_{hgh^{-1}} = \hat{C}$（因共轭作用置换 $C$ 的元素），故 $\hat{C}$ 与所有基元素 $e_h$ 可交换，从而 $\hat{C} \in Z(FG)$。
>
> **（中心元素由类和张成）**：设 $a = \sum_{g \in G} a_g e_g \in Z(FG)$，则对所有 $h \in G$，$e_h a e_h^{-1} = a$ 意味着 $a_{h^{-1}gh} = a_g$ 对所有 $g$ 成立，即 $a_g$ 在每个共轭类上取常值。故 $a = \sum_C \lambda_C \hat{C}$，其中 $\lambda_C = a_g$（$g$ 是 $C$ 中任一元素）。
>
> **（线性无关性）**：不同共轭类不相交，故不同的 $\hat{C}$ 在不同的基向量 $e_g$ 上有支撑，线性无关。

<!-- class_sum_multiplication -->
> [!Proposition]
> **类和的乘法 Multiplication of Class Sums**：设 $C_1, C_2$ 是 $G$ 的两个共轭类，则
> $$\hat{C}_1 \cdot \hat{C}_2 = \sum_{C_3} a_{C_1 C_2}^{C_3} \hat{C}_3,$$
> 其中求和对所有共轭类 $C_3$ 进行，结构常数 $a_{C_1 C_2}^{C_3} \in \mathbb{Z}_{\geq 0}$ 表示将 $g_3 \in C_3$ 写成 $g_1 g_2$（$g_1 \in C_1, g_2 \in C_2$）的方式数（与 $g_3$ 的选取无关）。

> **证明思路**：直接展开乘积 $\hat{C}_1 \cdot \hat{C}_2 = \sum_{g_1 \in C_1, g_2 \in C_2} e_{g_1 g_2}$，按乘积所在的共轭类归并即得结构常数的定义；利用共轭作用不变性验证系数与代表元选取无关。

<!-- center_and_conjugacy_classes -->
> [!Corollary]
> **中心维数与共轭类数的关系 Dimension of Center and Number of Conjugacy Classes**：
> $$\dim_F Z(FG) = \text{$G$ 的共轭类个数} = k.$$
> 特别地，若 $F$ 是代数闭域且 $\mathrm{char}(F) \nmid |G|$，由 Wedderburn 定理 $FG \cong \bigoplus_{i=1}^k M_{n_i}(F)$，中心同构为 $Z(FG) \cong F^k$（每个 $M_{n_i}(F)$ 的中心是 $F$），从而不可约表示的个数等于共轭类的个数。

> **注**：类和构成的乘法表（结构常数矩阵）是群论中重要的组合不变量，与 Burnside 引理和特征标表之间有深刻联系。
