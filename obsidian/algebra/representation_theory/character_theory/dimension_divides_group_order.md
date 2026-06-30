# 不可约表示维数整除群阶 Dimension Divides Group Order

<!-- dimension_divides_group_order -->
> [!Theorem]
> **不可约表示维数整除群阶 Dimension of Irreducible Representation Divides Group Order**：设 $G$ 是有限群，$\rho: G \to GL(V)$ 是 $G$ 的一个不可约复表示，$n = \dim V$。则 $n \mid |G|$，即不可约表示的维数整除群的阶。

> **证明思路（代数整数方法）**：
>
> 核心工具是**代数整数**的概念：$\alpha \in \mathbb{C}$ 称为代数整数，若 $\alpha$ 是某个首一整系数多项式的根。代数整数的集合在加法和乘法下封闭，且 $\mathbb{Q} \cap \overline{\mathbb{Z}} = \mathbb{Z}$（有理代数整数必为整数）。
>
> **步骤 1**：特征标值 $\chi_i(g)$ 均为代数整数（它们是单位根之和）。
>
> **步骤 2**：利用类方程的代数结构。定义类函数空间中的卷积（中心元乘法），共轭类指标函数 $\mathbf{1}_{C_j}$ 在 $\mathbb{Z}[G]$（群整环）的中心中满足
> $$\mathbf{1}_{C_j} \cdot \mathbf{1}_{C_{j'}} = \sum_{s} c_{jj'}^s \, \mathbf{1}_{C_s},$$
> 其中结构常数 $c_{jj'}^s \in \mathbb{Z}_{\geq 0}$。
>
> **步骤 3**：设 $\chi$ 为维数 $n$ 的不可约特征标。对不可约表示 $\rho$，中心元 $\sum_{g \in C_j} \rho(g)$ 由舒尔引理为数乘 $\lambda_j \, \mathrm{Id}_V$，其中
> $$\lambda_j = \frac{|C_j| \chi(c_j)}{n}.$$
> $\lambda_j$ 满足整系数代数方程（由结构常数决定），故 $\lambda_j$ 是代数整数。
>
> **步骤 4**：考虑
> $$\frac{|G|}{n} = \frac{1}{n} \sum_{g \in G} 1 = \sum_{j=1}^k \frac{|C_j|}{n} \cdot \frac{1}{\chi(c_j)} \cdot \chi(c_j).$$
> 利用第二正交关系和维数恒等式可推出 $\frac{|G|}{n^2} = \langle \chi, \chi \rangle = 1$ 的类似结构，结合
> $$\frac{|G|}{n} = \sum_j \lambda_j \overline{\chi(c_j)}$$
> 是代数整数的有限和（因为 $\lambda_j$ 和 $\chi(c_j)$ 均为代数整数），故 $\frac{|G|}{n}$ 是代数整数。
>
> **步骤 5**：$\frac{|G|}{n}$ 是有理数（因 $|G|, n \in \mathbb{Z}$），故 $\frac{|G|}{n} \in \mathbb{Q} \cap \overline{\mathbb{Z}} = \mathbb{Z}$，即 $n \mid |G|$。

<!-- dimension_divides_index -->
> [!Corollary]
> **维数整除中心指数 Dimension Divides Index of Center**：设 $G$ 是有限群，$Z = Z(G)$ 是 $G$ 的中心，$\rho$ 是 $G$ 的不可约复表示，$n = \dim V$。则
> $$n \mid [G : Z(G)].$$

> **证明思路**：由舒尔引理，中心元素 $z \in Z(G)$ 在不可约表示中作用为数乘 $\chi(z)/n$，利用 $G/Z(G)$ 的正则表示和更精细的代数整数论断可得。

<!-- dimension_examples -->
> [!Example]+
> **维数整除群阶的验证**：
>
> - $G = S_4$（阶 $24$）：不可约表示维数为 $1, 1, 2, 3, 3$，均整除 $24$；$\dim$ 的平方和 $1+1+4+9+9=24$ 。
> - $G = A_4$（阶 $12$）：不可约表示维数为 $1, 1, 1, 3$，均整除 $12$；$1+1+1+9=12$。
> - $G = Q_8$（阶 $8$）：不可约表示维数为 $1, 1, 1, 1, 2$，均整除 $8$；$1+1+1+1+4=8$。
