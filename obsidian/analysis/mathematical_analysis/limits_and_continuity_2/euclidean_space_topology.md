# 欧氏空间的拓扑

<!-- real_analysis_multivariable_euclidean_metric_definition -->
> [!Definition]
> **欧氏空间的度量 Euclidean Metric**：对 $x=(x_1,\ldots,x_n),y=(y_1,\ldots,y_n)\in\mathbb{R}^n$，定义欧氏范数和距离为
> $$
> \|x\|=\left(\sum_{i=1}^nx_i^2\right)^{1/2},
> \qquad
> d(x,y)=\|x-y\|.
> $$
> 对 $a\in\mathbb{R}^n$、$r>0$，开球定义为 $B(a,r)=\{x\in\mathbb{R}^n:\|x-a\|<r\}$。

<!-- real_analysis_multivariable_open_closed_set_definition -->
> [!Definition]
> **欧氏空间中的开集与闭集 Open and Closed Sets in Euclidean Space**：集合 $U\subseteq\mathbb{R}^n$ 称为开集，若对每个 $x\in U$，存在 $r>0$ 使 $B(x,r)\subseteq U$。集合 $F\subseteq\mathbb{R}^n$ 称为闭集，若其补集 $\mathbb{R}^n\setminus F$ 为开集。

<!-- real_analysis_multivariable_closed_set_sequential_criterion -->
> [!Theorem]
> **闭集的序列刻画 Sequential Characterization of Closed Sets**：集合 $F\subseteq\mathbb{R}^n$ 为闭集，当且仅当对每个满足 $x_k\in F$ 且 $x_k\to x$ 的序列，都有 $x\in F$。
>
> **证明思路**：若 $F$ 闭而 $x\notin F$，则补集为 $x$ 的开邻域，故充分靠后的 $x_k$ 不可能在 $F$ 中。反之，若补集不是开集，可在以补集中一点为中心、半径 $1/k$ 的球内选取 $F$ 中的点，构成反例序列。

<!-- real_analysis_multivariable_compactness_definition -->
> [!Definition]
> **紧集 Compact Set**：集合 $K\subseteq\mathbb{R}^n$ 称为紧的，若 $K$ 的每个开覆盖都含有覆盖 $K$ 的有限子覆盖。

<!-- real_analysis_multivariable_heine_borel_theorem -->
> [!Theorem]
> **Heine-Borel 定理 Heine-Borel Theorem**：集合 $K\subseteq\mathbb{R}^n$ 是紧集，当且仅当 $K$ 是闭且有界的。
>
> **证明思路**：有界闭集包含于某个闭立方体，后者由区间套或有限维 Bolzano-Weierstrass 定理紧致，闭子集保持紧致；反向则由紧致集在 Hausdorff 空间中闭，以及球覆盖的有限子覆盖推出有界性。

<!-- real_analysis_multivariable_connected_set_definition -->
> [!Definition]
> **连通集 Connected Set**：集合 $E\subseteq\mathbb{R}^n$ 称为连通的，若不存在两个非空、在子空间 $E$ 中开且互不相交的集合 $U,V$，使 $E=U\cup V$。

<!-- real_analysis_multivariable_convex_sets_connected -->
> [!Theorem]
> **凸集必连通 Convex Sets Are Connected**：若 $E\subseteq\mathbb{R}^n$ 是凸集，即任意 $x,y\in E$ 与 $t\in[0,1]$ 都满足 $(1-t)x+ty\in E$，则 $E$ 连通。
>
> **证明思路**：任意两点由完全包含于 $E$ 的线段连接；线段是区间的连续像，故连通。若 $E$ 可分离，取分居于两部分的两点将与线段连通性矛盾。

<!-- real_analysis_multivariable_sequence_convergence_definition -->
> [!Definition]
> **欧氏空间中序列的收敛 Sequence Convergence in Euclidean Space**：序列 $(x_k)$ 收敛到 $x\in\mathbb{R}^n$，若对任意 $\varepsilon>0$，存在 $N$，使 $k\geq N$ 时 $\|x_k-x\|<\varepsilon$。这等价于每个分量序列 $x_k^{(i)}$ 收敛到 $x^{(i)}$。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapters 2--3；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapters 3--4。