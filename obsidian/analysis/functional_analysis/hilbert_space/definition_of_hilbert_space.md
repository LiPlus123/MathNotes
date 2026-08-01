# 希尔伯特空间的定义

<!-- functional_analysis_inner_product_space_definition -->
> [!Definition]
> **内积空间 Inner Product Space**：赋有内积及其诱导范数的实或复线性空间称为**内积空间 Inner Product Space**。

<!-- functional_analysis_inner_product_space_strictly_convex -->
> [!Theorem]
> **内积空间严格凸 Inner Product Spaces are Strictly Convex**：每个内积空间都是严格凸的赋范数线性空间：若 $\|x\|=\|y\|=1$ 且 $x\ne y$，则
> $$
> \left\|\frac{x+y}{2}\right\|<1.
> $$
>
> **证明思路**：由平行四边形恒等式，$\|x+y\|^2+\|x-y\|^2=4$。当 $x\ne y$ 时第二项为正，故 $\|x+y\|<2$。

<!-- functional_analysis_hilbert_space_definition -->
> [!Definition]
> **希尔伯特空间 Hilbert Space**：若内积空间 $H$ 在内积诱导范数下完备，则称 $H$ 为**希尔伯特空间 Hilbert Space**。

<!-- functional_analysis_hilbert_space_banach -->
> [!Theorem]
> **Hilbert 空间是 Banach 空间 Hilbert Spaces are Banach Spaces**：每个 Hilbert 空间都是 Banach 空间。
>
> **证明思路**：Hilbert 空间按定义是内积诱导范数下完备的赋范线性空间，而这正是 Banach 空间的定义。

<!-- functional_analysis_parallelogram_characterization -->
> [!Theorem]
> **平行四边形恒等式的刻画 Jordan-von Neumann Characterization**：实或复赋范线性空间的范数由某个内积诱导，当且仅当对所有 $x,y$ 满足
> $$
> \|x+y\|^2+\|x-y\|^2=2\|x\|^2+2\|y\|^2.
> $$
>
> **证明思路**：必要性由展开内积得到。反之可由极化恒等式从范数恢复内积；平行四边形恒等式保证恢复的函数满足双线性或共轭双线性及正定性。