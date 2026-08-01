# 保守场与位势

<!-- real_analysis_conservative_field_and_potential_definition -->
> [!Definition]
> **保守场与位势 Conservative Field and Potential**：设 $U\subseteq\mathbb{R}^3$ 为开集，$F$ 为向量场。若存在标量场 $\phi:U\to\mathbb{R}$ 使 $F=\nabla\phi$，则称 $F$ 为保守场，$\phi$ 称为 $F$ 的位势或势函数。

<!-- real_analysis_path_independence_conservative_field_theorem -->
> [!Theorem]
> **保守场与路径无关性 Path Independence for Conservative Fields**：对连通开集 $U$ 上的连续向量场 $F$，下列条件等价：
> $$
> F=\nabla\phi\ \text{对某个}\ \phi,
> $$
> $$
> \int_\gamma F\cdot\mathrm{d}r\ \text{只依赖于}\ \gamma\ \text{的端点},
> $$
> $$
> \oint_CF\cdot\mathrm{d}r=0\ \text{对每条分段}\ C^1\ \text{闭曲线}\ C\subseteq U.
> $$
>
> **证明思路**：势函数情形由链式法则和微积分基本定理给出端点差；路径无关与所有闭路积分为零可通过拼接路径互相推出；固定基点的路径积分定义势函数。

<!-- real_analysis_simply_connected_curl_free_conservative_theorem -->
> [!Theorem]
> **单连通区域上无旋场即保守场 Curl-Free Fields Are Conservative on Simply Connected Domains**：若 $U\subseteq\mathbb{R}^3$ 为单连通开集，$F\in C^1(U,\mathbb{R}^3)$ 且 $\operatorname{curl}F=\mathbf{0}$，则 $F$ 为保守场。
>
> **证明思路**：单连通性保证闭曲线可收缩；由 Stokes 定理将闭路环量转化为旋度通量并得零，再使用路径无关性判据。

<!-- real_analysis_potential_function_construction -->
> [!Definition]
> **位势函数的路径积分构造 Construction of a Potential by Path Integrals**：在满足路径无关性的连通区域中，固定 $a\in U$，定义
> $$
> \phi(x)=\int_{\gamma_{a,x}}F\cdot\mathrm{d}r,
> $$
> 其中 $\gamma_{a,x}$ 是任意从 $a$ 到 $x$ 的分段 $C^1$ 路径。路径无关性保证定义良好，并且 $\nabla\phi=F$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 12。