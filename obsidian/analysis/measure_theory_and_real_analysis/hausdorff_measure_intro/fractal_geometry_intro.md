# 分形几何初步

## 自相似集

<!-- similarity_map_definition -->
> [!Definition]
> **相似映射 Similarity Map**：设 $S:\mathbb{R}^n\to\mathbb{R}^n$。若存在 $r\in(0,1)$，使得对所有 $x,y\in\mathbb{R}^n$，
> $$
> |S(x)-S(y)|=r|x-y|,
> $$
> 则称 $S$ 为压缩比为 $r$ 的相似压缩映射。

<!-- self_similar_set_definition -->
> [!Definition]
> **自相似集 Self-Similar Set**：设 $S_1,\ldots,S_N$ 是 $\mathbb{R}^n$ 上的相似压缩映射。存在唯一非空紧集 $K\subseteq\mathbb{R}^n$ 满足
> $$
> K=\bigcup_{i=1}^{N}S_i(K).
> $$
> 此 $K$ 称为由该迭代函数系生成的自相似集。
>
> **证明思路**：在所有非空紧集构成的空间上配备 Hausdorff 距离。映射 $A\mapsto\bigcup_iS_i(A)$ 是压缩映射，故由 Banach 不动点定理存在唯一不动点 $K$。

<!-- open_set_condition_definition -->
> [!Definition]
> **开集条件 Open Set Condition**：相似压缩映射族 $\{S_i\}_{i=1}^{N}$ 满足开集条件，若存在非空有界开集 $O\subseteq\mathbb{R}^n$，使得
> $$
> S_i(O)\subseteq O\quad(1\leq i\leq N),
> $$
> 且 $S_i(O)$ 两两不交。

<!-- similarity_dimension_definition -->
> [!Definition]
> **相似维数 Similarity Dimension**：设 $S_1,\ldots,S_N$ 的压缩比分别为 $r_1,\ldots,r_N$。唯一满足
> $$
> \sum_{i=1}^{N}r_i^s=1
> $$
> 的非负实数 $s$ 称为该迭代函数系的相似维数。

<!-- self_similar_dimension_theorem -->
> [!Theorem]
> **自相似集的维数公式 Dimension Formula for Self-Similar Sets**：若自相似集 $K$ 的生成相似压缩映射族满足开集条件，且 $s$ 为相似维数，则
> $$
> \dim_HK=s,
> \qquad
> 0<\mathcal{H}^s(K)<+\infty.
> $$
>
> **证明思路**：用第 $k$ 级小块 $S_{i_1}\circ\cdots\circ S_{i_k}(K)$ 构造上界覆盖，利用 $\sum r_i^s=1$ 控制 $s$ 维覆盖和。反向构造满足 $\mu(S_i(K))=r_i^s$ 的概率测度，并以开集条件控制小球的测度，从质量分布原理得到下界。

## Cantor 集与维数计算

<!-- cantor_set_definition -->
> [!Definition]
> **三分 Cantor 集 Ternary Cantor Set**：令
> $$
> C_0=[0,1],
> $$
> 并递归定义 $C_k$ 为从 $C_{k-1}$ 的每个闭区间中删去开中间三分之一后得到的闭集。三分 Cantor 集定义为
> $$
> C=\bigcap_{k=0}^{\infty}C_k.
> $$
> 等价地，$C$ 是两个相似压缩映射
> $$
> S_0(x)=\frac{x}{3},
> \qquad
> S_1(x)=\frac{x+2}{3}
> $$
> 的唯一非空紧不动点。

<!-- cantor_set_basic_properties -->
> [!Proposition]
> **Cantor 集的基本性质 Basic Properties of the Cantor Set**：Cantor 集 $C$ 是紧的、完美的、无处稠密的不可数集，并且
> $$
> m(C)=0.
> $$
>
> **证明思路**：$C$ 是递减闭集列的交，故紧。每一级区间总长度为 $(2/3)^k$，故测度为零；三进制展开可识别 $C$ 中各点恰由仅含 $0,2$ 的三进制表达式给出，由此得到不可数性及无孤立点。每一步均删除开区间，故它无处稠密。

<!-- cantor_set_hausdorff_dimension -->
> [!Theorem]
> **Cantor 集的 Hausdorff 维数 Hausdorff Dimension of the Cantor Set**：三分 Cantor 集满足开集条件，且其相似维数 $s$ 由
> $$
> 2\left(\frac13\right)^s=1
> $$
> 决定。因此
> $$
> \dim_HC=\frac{\log2}{\log3},
> \qquad
> 0<\mathcal{H}^{\log2/\log3}(C)<+\infty.
> $$
>
> **证明思路**：两个生成映射的压缩比均为 $1/3$，取 $O=(0,1)$ 即满足开集条件。将 $r_1=r_2=1/3$ 代入自相似维数公式并解方程即可。

<!-- sierpinski_triangle_example -->
> [!Example]+
> **Sierpinski 三角形 Sierpinski Triangle**：从等边三角形开始，每一步将每个小等边三角形按边长缩小为原来的 $1/2$ 并保留三个角上的副本，所得极限集是 Sierpinski 三角形。它由三个压缩比为 $1/2$ 的相似映射生成，满足开集条件，故
> $$
> \dim_HK=\frac{\log3}{\log2}.
> $$

<!-- hausdorff_dimension_of_self_similar_set_caveat -->
> [!Proposition]
> **重叠对自相似维数的影响 Effect of Overlaps on Similarity Dimension**：对任意自相似集，其 Hausdorff 维数不超过相似维数；若生成映射之间存在重叠，等号可能不成立。开集条件是保证维数公式成立的充分条件。
>
> **证明思路**：第 $k$ 级相似副本始终给出由相似维数控制的覆盖，因此得到上界。重叠会使有效覆盖数小于形式上的 $N^k$，从而可能严格降低 Hausdorff 维数。

> **注**：本小节参见 Kenneth Falconer, *Fractal Geometry: Mathematical Foundations and Applications*, 3rd ed., Chapters 1--3；Pertti Mattila, *Geometry of Sets and Measures in Euclidean Spaces*, Chapter 4。
