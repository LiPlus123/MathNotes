# 外代数

## 外代数的定义

<!-- exterior_algebra_def -->
> [!Definition]
> **外代数 Exterior Algebra**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间。$V$ 的**外代数**（exterior algebra，又称**格拉斯曼代数** Grassmann algebra）是线性空间的直和
> $$\bigwedge V^* \coloneqq \bigoplus_{k=0}^{n} \bigwedge^k V^* = \bigwedge^0 V^* \oplus \bigwedge^1 V^* \oplus \cdots \oplus \bigwedge^n V^*,$$
> 配备楔积 $\wedge: \bigwedge^k V^* \times \bigwedge^l V^* \to \bigwedge^{k+l} V^*$ 作为乘法运算，使之构成 $F$-代数。其中 $\bigwedge^0 V^* = F$ 为单位元所在的分量（标量乘以 $1_F$ 为乘法单位元）。

## 外代数作为分次代数

<!-- exterior_algebra_graded -->
> [!Definition]
> **分次代数 Graded Algebra**：称代数 $A$ 为**分次代数**（graded algebra），若 $A$ 作为线性空间可分解为
> $$A = \bigoplus_{k \geq 0} A_k,$$
> 且乘法满足**保次性**：$A_k \cdot A_l \subseteq A_{k+l}$。$A_k$ 中的元素称为 **$k$ 次齐次元**（homogeneous element of degree $k$）。

<!-- exterior_algebra_is_graded -->
> [!Theorem]
> **外代数是分次代数 Exterior Algebra as Graded Algebra**：$\bigwedge V^*$ 在楔积下构成分次代数，其中第 $k$ 次齐次分量恰为 $\bigwedge^k V^*$，即 $\bigwedge^k V^* \cdot \bigwedge^l V^* \subseteq \bigwedge^{k+l} V^*$。此外，$\bigwedge V^*$ 满足**反交换律**（graded commutativity）：对 $\omega \in \bigwedge^k V^*$，$\eta \in \bigwedge^l V^*$，
> $$\omega \wedge \eta = (-1)^{kl}\, \eta \wedge \omega.$$
>
> **证明思路**：保次性由楔积定义（反对称化后次数相加）直接得到。反交换律：交换 $\omega \wedge \eta$ 中的 $k$ 个变量与 $l$ 个变量的位置，共需 $kl$ 次相邻对换，每次引入一个负号，故总符号为 $(-1)^{kl}$。

## 外代数的维数

<!-- exterior_algebra_dimension -->
> [!Theorem]
> **外代数的维数 Dimension of Exterior Algebra**：设 $\dim V = n$，则
> $$\dim \bigwedge^k V^* = \binom{n}{k}, \quad 0 \leq k \leq n,$$
> 从而
> $$\dim \bigwedge V^* = \sum_{k=0}^{n} \binom{n}{k} = 2^n.$$
>
> **证明思路**：$\bigwedge^k V^*$ 的基由形如 $e^{i_1} \wedge \cdots \wedge e^{i_k}$（$1 \leq i_1 < \cdots < i_k \leq n$）的元素构成，共 $\binom{n}{k}$ 个（见外形式的基一节）。对所有 $k$ 求和，由二项式定理得 $\sum_{k=0}^n \binom{n}{k} = 2^n$。
