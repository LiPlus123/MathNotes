# 希尔伯特空间的例子

<!-- functional_analysis_finite_dimensional_hilbert_example -->
> [!Example]+
> **有限维 Hilbert 空间 Finite-Dimensional Hilbert Spaces**：对任意 $n\in\mathbb{Z}^+$，$\mathbb{F}^n$ 配备标准内积
> $$
> \langle x,y\rangle=\sum_{j=1}^n\overline{x_j}y_j
> $$
> 是 Hilbert 空间。
>
> **证明思路**：该内积诱导欧几里得范数；有限维赋范线性空间完备，故该内积空间完备。

<!-- functional_analysis_l2_sequence_hilbert_example -->
> [!Example]+
> **序列 Hilbert 空间 $\ell^2$ Sequence Hilbert Space $\ell^2$**：定义
> $$
> \ell^2=\left\{x=(x_n)_{n\geq1}:\sum_{n=1}^{\infty}|x_n|^2<+\infty\right\}.
> $$
> 对 $x,y\in\ell^2$，令
> $$
> \langle x,y\rangle=\sum_{n=1}^{\infty}\overline{x_n}y_n.
> $$
> 则 $\ell^2$ 是 Hilbert 空间。
>
> **证明思路**：柯西-施瓦兹不等式保证内积级数绝对收敛，且诱导范数为 $\ell^2$ 范数；$\ell^2$ 的完备性给出 Hilbert 性。

<!-- functional_analysis_l2_function_hilbert_example -->
> [!Example]+
> **函数 Hilbert 空间 $L^2$ Function Hilbert Space $L^2$**：设 $(\Omega,\mathcal{A},\mu)$ 是测度空间。对 $f,g\in L^2(\mu)$，令
> $$
> \langle f,g\rangle_{L^2}=\int_\Omega\overline{f}g\,d\mu.
> $$
> 则 $L^2(\mu)$ 是 Hilbert 空间。
>
> **证明思路**：Hölder 不等式保证内积良定义，诱导范数为 $\|f\|_2$；Riesz-Fischer 定理给出 $L^2(\mu)$ 完备。