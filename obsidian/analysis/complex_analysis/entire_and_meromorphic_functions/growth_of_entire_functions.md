# 整函数的增长阶

## 最大模与增长阶

<!-- entire_function_maximum_modulus -->
> [!Definition]
> **最大模函数 Maximum Modulus Function**：对整函数 $f$，定义
> $$
> M(r,f)=\max_{|z|=r}|f(z)|,\qquad r>0.
> $$
> 若 $f$ 非常数，则最大模原理保证 $M(r,f)$ 随 $r$ 非减，并且通常严格增长。

<!-- entire_function_order -->
> [!Definition]
> **整函数的增长阶 Order of an Entire Function**：对非常数整函数 $f$，定义其阶为
> $$
> \rho=\limsup_{r\to\infty}\frac{\log\log M(r,f)}{\log r}\in[0,\infty].
> $$
> 若 $\rho<\infty$，称 $f$ 为有限阶整函数；若 $\rho=\infty$，称其为无穷阶整函数。

<!-- entire_function_type -->
> [!Definition]
> **有限阶整函数的型 Type of a Finite-Order Entire Function**：设 $0<\rho<\infty$ 为 $f$ 的阶。定义
> $$
> \sigma=\limsup_{r\to\infty}\frac{\log M(r,f)}{r^\rho}
> $$
> 为 $f$ 的型。若 $\sigma=0$，称为极小型；若 $0<\sigma<\infty$，称为正常型；若 $\sigma=\infty$，称为极大型。

<!-- polynomial_growth_order_example -->
> [!Example]+
> **典型整函数的增长阶 Typical Orders**：非零多项式的阶为 $0$；指数函数 $e^z$ 的阶为 $1$ 且为正常型；函数 $e^{z^m}$ 的阶为 $m$，其型为有限正常型。

## Jensen 公式与零点分布

<!-- jensen_formula -->
> [!Theorem]
> **Jensen 公式 Jensen's Formula**：设 $f$ 在闭圆盘 $\overline{B(0,R)}$ 的邻域内全纯，$f(0)\ne0$，零点按重数记为 $a_n$，且 $|a_n|<R$。则
> $$
> \log|f(0)|+\sum_{|a_n|<r}\log\frac{r}{|a_n|}
> =\frac1{2\pi}\int_0^{2\pi}\log|f(re^{i\theta})|\,d\theta,
> \qquad 0<r<R,
> $$
> 其中等式中的零点计数按重数进行。
>
> **证明思路**：先用 Blaschke 型因子消去圆盘内的零点，再对无零点函数取解析对数并应用平均值定理。

<!-- zero_exponent_convergence -->
> [!Definition]
> **零点的收敛指数 Exponent of Convergence of Zeros**：设非零零点列 $(a_n)$ 的模趋于无穷，定义
> $$
> \lambda=\inf\left\{s>0:\sum_n\frac1{|a_n|^s}<\infty\right\}.
> $$
> $\lambda$ 称为该零点列的收敛指数。

<!-- order_zero_exponent_relation -->
> [!Theorem]
> **零点分布与增长阶的关系 Relation between Zeros and Order**：若非常数整函数 $f$ 的阶为有限值 $\rho$，则其零点的收敛指数满足
> $$
> \lambda\le\rho.
> $$
>
> **证明思路**：对 Jensen 公式中的非负零点项进行估计，先控制半径小于 $r$ 的零点数，再通过分层求和得到 $\sum |a_n|^{-s}$ 在任意 $s>\rho$ 时收敛。

> **注**：整函数增长阶、Jensen 公式和零点分布参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 8，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
