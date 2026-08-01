# 序与完备性

## 实数的序结构

<!-- real_number_order_structure -->
> [!Definition]
> **实数的序结构 Order Structure of the Real Numbers**：实数集 $\mathbb{R}$ 具有全序关系 $\leq$，并与域运算相容：对任意 $x,y,z\in\mathbb{R}$，
> $$
> x\leq y\Longrightarrow x+z\leq y+z,
> $$
> 且当 $0\leq z$ 时，
> $$
> x\leq y\Longrightarrow xz\leq yz.
> $$
> 记 $x<y$ 表示 $x\leq y$ 且 $x\ne y$。

<!-- real_number_upper_and_lower_bound_definition -->
> [!Definition]
> **上界、下界与有界性 Upper Bound, Lower Bound, and Boundedness**：设 $A\subseteq\mathbb{R}$。若 $u\in\mathbb{R}$ 满足对每个 $x\in A$ 均有 $x\leq u$，则称 $u$ 为 $A$ 的上界；若 $l\in\mathbb{R}$ 满足对每个 $x\in A$ 均有 $l\leq x$，则称 $l$ 为 $A$ 的下界。具有上界（下界）的集合称为上有界（下有界）的；同时上有界和下有界的集合称为有界的。

<!-- supremum_infimum_real_definition -->
> [!Definition]
> **实数集的上确界与下确界 Supremum and Infimum in the Reals**：设 $A\subseteq\mathbb{R}$ 非空。若 $s$ 是 $A$ 的上界，且对 $A$ 的每个上界 $u$ 都有 $s\leq u$，则称 $s$ 为 $A$ 的上确界，记为 $s=\sup A$。若 $i$ 是 $A$ 的下界，且对 $A$ 的每个下界 $l$ 都有 $l\leq i$，则称 $i$ 为 $A$ 的下确界，记为 $i=\inf A$。

<!-- supremum_approximation_property -->
> [!Theorem]
> **上确界的逼近性质 Approximation Property of the Supremum**：设 $A\subseteq\mathbb{R}$ 非空、上有界，且 $s=\sup A$。则对任意 $\varepsilon>0$，存在 $a\in A$ 使得
> $$
> s-\varepsilon<a\leq s.
> $$
> 对偶地，若 $i=\inf A$，则对任意 $\varepsilon>0$，存在 $a\in A$ 使得
> $$
> i\leq a<i+\varepsilon.
> $$
>
> **证明思路**：若不存在这样的 $a$，则 $s-\varepsilon$ 仍是 $A$ 的上界，且严格小于 $s$，与 $s$ 为最小上界矛盾。下确界情形对偶。

## 确界存在定理

<!-- least_upper_bound_property -->
> [!Theorem]
> **确界存在定理 Least-Upper-Bound Property**：每个非空且上有界的集合 $A\subseteq\mathbb{R}$ 都有上确界；等价地，每个非空且下有界的集合都有下确界。
>
> **证明思路**：这是实数作为完备有序域的完备性公理。下确界的叙述可由上确界性质施加于集合 $-A=\{-x:x\in A\}$ 得到。

<!-- archimedean_property -->
> [!Theorem]
> **Archimedean 性质 Archimedean Property**：对任意 $x\in\mathbb{R}$，存在 $n\in\mathbb{N}$ 使得 $x<n$；等价地，对任意 $\varepsilon>0$，存在 $n\in\mathbb{N}$ 使得
> $$
> 0<\frac{1}{n}<\varepsilon.
> $$
>
> **证明思路**：若自然数集在 $\mathbb{R}$ 中有上界，令其上确界为 $s$。由上确界逼近性质存在 $n\in\mathbb{N}$ 满足 $s-1<n$，于是 $n+1>s$，与 $s$ 为上界矛盾。

## 有理数与无理数的稠密性

<!-- rational_density_in_reals -->
> [!Theorem]
> **有理数在实数中的稠密性 Density of the Rationals in the Reals**：对任意 $x,y\in\mathbb{R}$ 且 $x<y$，存在 $q\in\mathbb{Q}$ 使得
> $$
> x<q<y.
> $$
>
> **证明思路**：由 Archimedean 性质选取 $n\in\mathbb{N}$ 使 $1/n<y-x$。再取满足 $nx<m\leq nx+1$ 的整数 $m$，则 $q=m/n$ 满足所需不等式。

<!-- irrational_density_in_reals -->
> [!Theorem]
> **无理数在实数中的稠密性 Density of the Irrationals in the Reals**：对任意 $x,y\in\mathbb{R}$ 且 $x<y$，存在无理数 $z\in\mathbb{R}\setminus\mathbb{Q}$ 使得
> $$
> x<z<y.
> $$
>
> **证明思路**：由有理数的稠密性，取 $r\in\mathbb{Q}$ 满足 $x/\sqrt{2}<r<y/\sqrt{2}$。则 $z=r\sqrt{2}$ 落在 $(x,y)$ 内；因 $r\ne0$ 且 $\sqrt{2}$ 无理，$z$ 无理。

<!-- rational_and_irrational_density_example -->
> [!Example]+
> **有理数与无理数交错的例子 Interlacing Rationals and Irrationals**：对任意开区间 $(x,y)$，既可选取有理数 $q\in(x,y)$，也可选取无理数 $z\in(x,y)$。因此任何非退化实数区间都同时包含无穷多个有理数与无穷多个无理数。
>
> **证明思路**：对有理数稠密性和无理数稠密性分别应用于任意子区间；不断选取互不相同的更小子区间中的元素即可。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 1；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 1。