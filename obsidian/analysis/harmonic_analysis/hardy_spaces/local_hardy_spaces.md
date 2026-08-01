# 局部 Hardy 空间

## Goldberg 局部 Hardy 空间

<!-- local_hardy_space_definition -->
> [!Definition]
> **Goldberg 局部 Hardy 空间 Goldberg Local Hardy Space**：令
> $$
> \mathcal{M}^{\mathrm{loc}}_Pf(x)=\sup_{0<t\leq1}|P_t*f(x)|.
> $$
> 对 $0<p\leq1$，定义
> $$
> h^p(\mathbb{R}^n)=\{f\in\mathcal{S}'(\mathbb{R}^n):\mathcal{M}^{\mathrm{loc}}_Pf\in L^p(\mathbb{R}^n)\},
> $$
> 并令 $\|f\|_{h^p}=\|\mathcal{M}^{\mathrm{loc}}_Pf\|_p$。它只检验小尺度的 Hardy 行为。

<!-- local_hardy_scale_distinction -->
> [!Proposition]
> **局部与全局尺度的区别 Local versus Global Scales**：$H^p(\mathbb{R}^n)\subseteq h^p(\mathbb{R}^n)$。局部 Hardy 空间不要求控制 $t>1$ 的 Poisson 延拓，故允许大尺度上类似 $L^p$ 的行为；全局 Hardy 空间则通过所有尺度的极大函数隐含更强的低频与消去约束。
>
> **证明思路**：由 $\mathcal{M}^{\mathrm{loc}}_Pf\leq\mathcal{M}_Pf$ 立即得到包含关系。严格性可由具有适当低频成分的函数或分布展示。

<!-- local_hardy_atom_definition -->
> [!Definition]
> **局部原子 Local Atom**：设 $0<p\leq1$。支撑于立方体 $Q$ 的函数 $a$ 称为局部 $(p,q,s)$-原子，若具有通常原子的大小条件；当 $|Q|<1$ 时还要求
> $$
> \int x^\alpha a(x)\,dx=0
> \quad(|\alpha|\leq s),
> $$
> 而当 $|Q|\geq1$ 时不要求消去矩。后者称为大原子。

<!-- local_hardy_atomic_decomposition -->
> [!Theorem]
> **局部原子分解 Local Atomic Decomposition**：对适当的 $p,q,s$，每个 $f\in h^p(\mathbb{R}^n)$ 有表示
> $$
> f=\sum_j\lambda_ja_j,
> \qquad
> \sum_j|\lambda_j|^p<+\infty,
> $$
> 其中 $a_j$ 是局部原子；反之每个这样的级数定义 $h^p$ 元素，且系数拟范数与 $h^p$ 拟范数等价。
>
> **证明思路**：仅对高度不超过 $1$ 的尺度作极大函数停时分解。小立方体沿用全局原子的多项式消去，大立方体由大小估计处理，从而保留低频部分。

<!-- local_hardy_pde_connection -->
> [!Example]+
> **与非齐次函数空间和椭圆 PDE 的联系 Connection to Inhomogeneous Spaces and Elliptic PDE**：$h^p$ 的低频宽容性使其与非齐次 Triebel-Lizorkin 空间及含零阶项的椭圆算子相适配。在局部正则性问题中，解的高频振荡由局部 Hardy 或平方函数控制，而大尺度成分可用 $L^p$ 型估计处理。

> **来源**：David Goldberg, "A Local Version of Real Hardy Spaces", *Duke Mathematical Journal* 46 (1979)；Elias M. Stein, *Harmonic Analysis*, Chapter III。
