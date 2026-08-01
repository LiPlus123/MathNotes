# 多线性极大函数与插值

## 多线性平均与指数关系

<!-- multilinear_fractional_maximal_definition -->
> [!Definition]
> **多线性分数次极大函数 Multilinear Fractional Maximal Function**：设 $m\geq1$、$0\leq\alpha<mn$。对局部可积函数 $\vec f=(f_1,\ldots,f_m)$，定义
> $$
> \mathcal{M}_\alpha(\vec f)(x)
> =\sup_{Q\ni x}|Q|^{\alpha/n}\prod_{i=1}^m\frac{1}{|Q|}\int_Q|f_i(y)|\,dy,
> $$
> 其中上确界遍历包含 $x$ 的立方体。$\alpha=0$ 时记为 $\mathcal{M}$，称为多线性 Hardy-Littlewood 极大函数。

<!-- multilinear_holder_inequality -->
> [!Theorem]
> **多线性 Hölder 不等式 Multilinear Holder Inequality**：若 $1\leq p_i\leq+\infty$ 且
> $$
> \frac1p=\sum_{i=1}^m\frac1{p_i},
> $$
> 则
> $$
> \left\|\prod_{i=1}^mf_i\right\|_p
> \leq\prod_{i=1}^m\|f_i\|_{p_i}.
> $$
> 若 $0<\alpha<mn$、$1<p_i<+\infty$，并且 $1/q=\sum_i1/p_i-\alpha/n>0$，则
> $$
> \|\mathcal{M}_\alpha(\vec f)\|_q
> \lesssim\prod_{i=1}^m\|f_i\|_{p_i}.
> $$
>
> **证明思路**：对每个立方体的平均值使用 Hölder 不等式，并将指数分配到各输入。分数次极大函数的估计再结合覆盖引理与分布函数控制获得。

<!-- multilinear_young_inequality -->
> [!Theorem]
> **多重卷积型 Young 不等式 Multilinear Young Inequality**：若 $f_i\in L^{p_i}(\mathbb{R}^n)$ 且
> $$
> \sum_{i=1}^m\frac1{p_i}=m-1+\frac1r,
> \qquad 1\leq p_i,r\leq+\infty,
> $$
> 则迭代卷积 $f_1*\cdots*f_m$ 满足
> $$
> \|f_1*\cdots*f_m\|_r\leq\prod_{i=1}^m\|f_i\|_{p_i}.
> $$
>
> **证明思路**：连续应用双线性 Young 不等式；中间指数由给定的倒数关系恰好闭合。

<!-- multilinear_marcinkiewicz_interpolation -->
> [!Theorem]
> **多线性 Marcinkiewicz 插值定理 Multilinear Marcinkiewicz Interpolation Theorem**：设 $T$ 是 $m$-次次线性算子，并在若干端点指数组上具有弱型估计。若目标倒数指数向量严格位于这些端点的凸包内，则 $T$ 在相应内点上具有强型估计
> $$
> \|T(f_1,\ldots,f_m)\|_{p}
> \lesssim\prod_{i=1}^m\|f_i\|_{p_i},
> \qquad \frac1p=\sum_i\frac1{p_i}.
> $$
> 端点的精确允许范围取决于弱型假设及次线性结构。
>
> **证明思路**：按输入函数的大小层分解，并对各层组合使用端点弱型估计；通过在指数凸包内选择适当权重，使所得几何级数可求和。

<!-- multilinear_complex_interpolation -->
> [!Theorem]
> **多线性 Riesz-Thorin 插值 Multilinear Riesz-Thorin Interpolation**：设 $T$ 为 $m$-线性算子，在两组指数 $(p_{i,0};q_0)$ 与 $(p_{i,1};q_1)$ 上有界。对 $0<\theta<1$，令
> $$
> \frac1{p_{i,\theta}}=\frac{1-\theta}{p_{i,0}}+\frac{\theta}{p_{i,1}},
> \qquad
> \frac1{q_\theta}=\frac{1-\theta}{q_0}+\frac{\theta}{q_1}.
> $$
> 则 $T:\prod_iL^{p_{i,\theta}}\to L^{q_\theta}$ 有界，且范数不超过两个端点范数的相应几何平均。
>
> **证明思路**：为每个输入构造解析族，并将 $T$ 的输出与测试函数配对；应用 Hadamard 三线定理后取对偶上确界。

<!-- multilinear_mixed_norm_definition -->
> [!Definition]
> **混合范数 Mixed Norm**：对 $F(x_1,\ldots,x_m)$ 及 $1\leq p_i\leq+\infty$，定义迭代范数
> $$
> \|F\|_{L^{p_1}_{x_1}\cdots L^{p_m}_{x_m}}
> =\left(\int\cdots\left(\int|F|^{p_1}\,dx_1\right)^{p_2/p_1}\cdots dx_m\right)^{1/p_m},
> $$
> 并作 $p_i=+\infty$ 的通常修改。Minkowski 不等式允许在适当指数次序下交换积分与范数。

> **来源**：Loukas Grafakos, *Classical Fourier Analysis*, 关于多线性插值的章节；Loukas Grafakos, *Modern Fourier Analysis*, 关于多线性极大函数的章节。
