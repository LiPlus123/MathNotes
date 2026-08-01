# 广义实数系

## 广义实数的定义与序

<!-- extended_real_line_definition -->
> [!Definition]
> **广义实数系 Extended Real Line**：在实数集 $\mathbb{R}$ 中添加两个不属于 $\mathbb{R}$ 的元素 $-\infty$ 与 $+\infty$，得到广义实数系
> $$
> \overline{\mathbb{R}}=[-\infty,+\infty]=\mathbb{R}\cup\{-\infty,+\infty\}.
> $$
> 将实数上的通常序延拓为全序，规定对任意 $x\in\mathbb{R}$ 都有
> $$
> -\infty<x<+\infty.
> $$

<!-- extended_real_supremum_infimum -->
> [!Theorem]
> **广义实数的完备性 Completeness of the Extended Reals**：每个非空集合 $A\subseteq\overline{\mathbb{R}}$ 都有上确界与下确界，且
> $$
> \sup A,\inf A\in\overline{\mathbb{R}}.
> $$
>
> **证明思路**：若 $A$ 含有 $+\infty$ 或 $A\cap\mathbb{R}$ 在 $\mathbb{R}$ 中无上界，则 $\sup A=+\infty$；其余情形由实数的确界存在定理给出。下确界情形对偶。

## 运算的扩展

<!-- extended_real_addition_definition -->
> [!Definition]
> **广义实数的加法扩展 Extended Addition on the Extended Reals**：对 $x\in\mathbb{R}$，规定
> $$
> x+(+\infty)=(+\infty)+x=+\infty,
> $$
> $$
> x+(-\infty)=(-\infty)+x=-\infty.
> $$
> 但 $+\infty+(-\infty)$ 与 $-\infty+(+\infty)$ 不定义。

<!-- extended_real_scalar_multiplication_definition -->
> [!Definition]
> **广义实数的数乘扩展 Extended Scalar Multiplication on the Extended Reals**：对 $a\in\mathbb{R}\setminus\{0\}$，规定
> $$
> a(+\infty)=
> \begin{cases}
> +\infty,&a>0,\\
> -\infty,&a<0,
> \end{cases}
> \qquad
> a(-\infty)=
> \begin{cases}
> -\infty,&a>0,\\
> +\infty,&a<0.
> \end{cases}
> $$
> 表达式 $0\cdot(+\infty)$ 与 $0\cdot(-\infty)$ 不定义。

<!-- undefined_extended_real_operations -->
> [!Definition]
> **广义实数中的不定式 Indeterminate Forms in the Extended Reals**：除上述约定外，不将广义实数上的加法、乘法、减法和除法视为处处定义的域运算。特别地，以下表达式不定义：
> $$
> (+\infty)+(-\infty),\qquad 0\cdot(\pm\infty),\qquad (+\infty)-(+\infty),\qquad \frac{+\infty}{+\infty},\qquad \frac{0}{0}.
> $$

<!-- real_number_system_extended_real_arithmetic_example -->
> [!Example]+
> **广义实数不定式的例子 Examples of Indeterminate Forms**：令 $x_n=n$、$y_n=-n$。则
> $$
> x_n\to+\infty,
> \qquad
> y_n\to-\infty,
> \qquad
> x_n+y_n=0.
> $$
> 另一方面，若 $y_n=-2n$，则 $x_n+y_n=-n\to-\infty$。故不能仅根据两个加数分别趋于 $+\infty$ 与 $-\infty$ 判定其和的极限，这说明 $+\infty+(-\infty)$ 必须保留为不定式。

## 广义实数上的拓扑

<!-- order_topology_on_extended_reals -->
> [!Definition]
> **广义实数上的序拓扑 Order Topology on the Extended Reals**：在 $\overline{\mathbb{R}}$ 上取由开区间及端点邻域生成的拓扑：对 $a<b$，开区间 $(a,b)$ 为开集；此外，对每个 $a\in\mathbb{R}$，
> $$
> [-\infty,a),\qquad(a,+\infty]
> $$
> 均为开集。由此得到的拓扑称为 $\overline{\mathbb{R}}$ 的序拓扑。

<!-- convergence_to_extended_real_infinities -->
> [!Definition]
> **趋于无穷的收敛 Convergence to Infinity**：设 $(x_n)_{n\geq1}\subseteq\mathbb{R}$。称 $x_n\to+\infty$，若对任意 $M\in\mathbb{R}$，存在 $N\in\mathbb{N}$，使得当 $n\geq N$ 时 $x_n>M$；称 $x_n\to-\infty$，若对任意 $M\in\mathbb{R}$，存在 $N\in\mathbb{N}$，使得当 $n\geq N$ 时 $x_n<M$。这恰分别是序拓扑中收敛至 $+\infty$ 和 $-\infty$ 的含义。

<!-- compactness_of_extended_real_line -->
> [!Theorem]
> **广义实数系的紧性 Compactness of the Extended Real Line**：赋予序拓扑后，$\overline{\mathbb{R}}$ 是紧 Hausdorff 空间；映射
> $$
> \arctan:\overline{\mathbb{R}}\longrightarrow\left[-\frac{\pi}{2},\frac{\pi}{2}\right]
> $$
> 在实数上取通常的 $\arctan$，并规定 $\arctan(-\infty)=-\pi/2$、$\arctan(+\infty)=\pi/2$，是一个同胚。
>
> **证明思路**：验证该映射严格保序、双射，并且将端点邻域分别映为 $[-\pi/2,b)$ 与 $(a,\pi/2]$ 型邻域，故连续且逆连续。闭区间紧性遂给出 $\overline{\mathbb{R}}$ 的紧性。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 2；Gerald B. Folland, *Real Analysis*, 2nd ed., Appendix A。