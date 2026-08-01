# 直接解析延拓

## 解析延拓的定义与唯一性

<!-- analytic_continuation_definition -->
> [!Definition]
> **解析延拓 Analytic Continuation**：设 $D_1,D_2\subseteq\mathbb{C}$ 为区域，$f_1$ 在 $D_1$ 上全纯，$f_2$ 在 $D_2$ 上全纯。若 $D_1\cap D_2$ 含有非空开集 $U$，且
> $$
> f_1(z)=f_2(z)\qquad(z\in U),
> $$
> 则称 $f_2$ 是 $f_1$ 从 $D_1$ 到 $D_2$ 的一个解析延拓。若 $D_1\subseteq D_2$ 且 $f_2|_{D_1}=f_1$，则称为直接解析延拓。

<!-- analytic_continuation_identity_uniqueness -->
> [!Theorem]
> **解析延拓的唯一性 Uniqueness of Analytic Continuation**：若 $D$ 是区域，$f,g:D\to\mathbb{C}$ 全纯，且它们在 $D$ 的某个非空开子集上相等，则
> $$
> f\equiv g\quad\text{on }D.
> $$
> 因而从一个区域到同一连通扩张区域的直接解析延拓至多一个。
>
> **证明思路**：对 $f-g$ 应用恒等定理。

<!-- analytic_element_definition -->
> [!Definition]
> **解析元素 Analytic Element**：解析元素是一个二元组 $(f,D)$，其中 $D\subseteq\mathbb{C}$ 为区域，$f$ 在 $D$ 上全纯。若两个解析元素在其定义域交集的某个非空开子集上相等，则称它们相容。
>
> 解析延拓可以理解为从一个解析元素出发，逐步构造与其相容的更大解析元素。

## 幂级数的解析延拓

<!-- power_series_direct_continuation -->
> [!Theorem]
> **幂级数的直接解析延拓 Direct Continuation of a Power Series**：设
> $$
> f(z)=\sum_{n=0}^{\infty}a_n(z-z_0)^n
> $$
> 的收敛半径为 $R$。若在某个与 $B(z_0,R)$ 相交的更大区域 $D$ 上存在全纯函数 $F$，且 $F=f$ 在交集中的某个非空开集上成立，则 $F$ 是该幂级数和函数的解析延拓。
>
> 延拓后的函数可能跨越原收敛圆盘的部分边界；但若边界点是不可去奇点，则不可能通过该点直接延拓。

<!-- analytic_continuation_geometric_series -->
> [!Example]+
> **几何级数的解析延拓 Analytic Continuation of the Geometric Series**：在 $|z|<1$ 内，
> $$
> \sum_{n=0}^{\infty}z^n=\frac1{1-z}.
> $$
> 右侧有理函数把幂级数和函数解析延拓到 $\mathbb{C}\setminus\{1\}$；点 $z=1$ 是不可去奇点，因此不能延拓为在包含 $1$ 的区域上全纯函数。

<!-- continuation_across_regular_boundary -->
> [!Theorem]
> **跨越正则边界点的延拓 Continuation Across a Regular Boundary Point**：设 $f$ 在区域 $D$ 上全纯，$a\in\partial D$。若存在 $a$ 的邻域 $U$ 和全纯函数 $F:U\to\mathbb{C}$，使 $F=f$ 在 $U\cap D$ 的某个非空开子集上成立，则 $F$ 给出 $f$ 跨越 $a$ 的局部解析延拓。
>
> **证明思路**：定义直接来自两个函数在重叠区域上的相等；唯一性由恒等定理保证。

> **注**：解析延拓与唯一性参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 7。
