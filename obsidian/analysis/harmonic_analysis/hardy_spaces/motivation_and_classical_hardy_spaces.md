# Hardy 空间的动机与经典版本

## $L^1$ 端点与解析 Hardy 空间

<!-- hardy_l1_endpoint_failure -->
> [!Theorem]
> **$L^1$ 端点的失败 Failure at the $L^1$ Endpoint**：Hilbert 变换和一般 Calderón-Zygmund 算子通常不从 $L^1(\mathbb{R}^n)$ 有界映到自身，而只满足弱 $(1,1)$ 型估计。因而需要一个比 $L^1$ 更精细、能编码局部消去性质的端点空间；实 Hardy 空间 $H^1(\mathbb{R}^n)$ 正是这一角色的标准选择。
>
> **证明思路**：例如 $f=\mathbf{1}_{[0,1]}$ 的 Hilbert 变换在端点附近具有对数奇性，不能一般地期待其 $L^1$ 范数受 $\|f\|_1$ 控制；原子条件的零均值可消除此类远场贡献。

<!-- analytic_hardy_space_definition -->
> [!Definition]
> **单位圆盘上的解析 Hardy 空间 Analytic Hardy Space on the Unit Disk**：设 $0<p<+\infty$。全纯函数 $F$ 属于 $H^p(\mathbb{D})$，若
> $$
> \|F\|_{H^p(\mathbb{D})}
> =\sup_{0<r<1}\left(\frac{1}{2\pi}\int_0^{2\pi}|F(re^{it})|^p\,dt\right)^{1/p}<+\infty.
> $$
> 当 $p=+\infty$ 时，以 $\sup_{z\in\mathbb{D}}|F(z)|$ 定义范数。

<!-- analytic_hardy_boundary_theorem -->
> [!Theorem]
> **解析 Hardy 函数的边界值 Boundary Values of Analytic Hardy Functions**：若 $0<p<+\infty$ 且 $F\in H^p(\mathbb{D})$，则存在 $f\in L^p(\mathbb{T})$，使得
> $$
> F(re^{it})\longrightarrow f(e^{it})
> $$
> 在 $L^p$ 意义下成立，且几乎处处沿非切向区域成立；并有 $\|f\|_{L^p(\mathbb{T})}=\|F\|_{H^p(\mathbb{D})}$。
>
> **证明思路**：对 $F_r(e^{it})=F(re^{it})$ 使用次调和性得到 $L^p$ 范数控制；以 Poisson 积分及共轭 Poisson 积分证明边界函数列的收敛，并通过极大函数估计得到非切向极限。

<!-- inner_outer_factorization_overview -->
> [!Theorem]
> **内外分解概览 Inner-Outer Factorization Overview**：每个非零 $F\in H^p(\mathbb{D})$ 可分解为
> $$
> F=I\,O,
> $$
> 其中 $I$ 是内函数，即其边界值满足 $|I|=1$ 几乎处处；$O$ 是外函数，且由 $|F|$ 的边界模唯一确定至常数相位。零点部分由 Blaschke 乘积编码，奇异边界质量由奇异内函数编码。
>
> **证明思路**：从 $\log|F|$ 的 Poisson 积分构造外函数；以 Blaschke 乘积剥离零点，并将剩余的单位模边界部分对应为内函数。

<!-- real_complex_hardy_space_distinction -->
> [!Definition]
> **实 Hardy 空间与复 Hardy 空间 Real and Complex Hardy Spaces**：$H^p(\mathbb{D})$ 是由全纯性定义的函数空间，其成员由圆周边界函数的正频率部分给出；$H^p(\mathbb{R}^n)$ 是定义在实 Euclidean 空间上的实变量 Hardy 空间，借助 Poisson 极大函数、原子或平方函数刻画。二者共享端点分析思想，但定义域、解析结构与适用算子不同。

> **来源**：Peter Duren, *Theory of $H^p$ Spaces*, Chapters 1--2；Elias M. Stein, *Harmonic Analysis: Real-Variable Methods, Orthogonality, and Oscillatory Integrals*, Chapter III。
