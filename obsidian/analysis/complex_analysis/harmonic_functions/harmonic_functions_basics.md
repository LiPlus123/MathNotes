# 调和函数与共轭调和函数

## 调和函数

<!-- harmonic_function_definition -->
> [!Definition]
> **调和函数 Harmonic Function**：设 $D\subseteq\mathbb R^2\cong\mathbb C$ 为区域。函数 $u:D\to\mathbb R$ 若属于 $C^2(D)$ 且满足
> $$
> \Delta u=u_{xx}+u_{yy}=0
> $$
> 在 $D$ 上处处成立，则称 $u$ 是 $D$ 上的调和函数。

<!-- harmonic_function_local_mean_value -->
> [!Theorem]
> **调和函数的局部均值性质 Local Mean-Value Property**：若 $u$ 在 $D$ 上调和，且闭圆盘 $\overline{B(a,r)}\subset D$，则
> $$
> u(a)=\frac1{2\pi}\int_0^{2\pi}u(a+re^{i\theta})\,d\theta
> =\frac1{\pi r^2}\iint_{B(a,r)}u(x,y)\,dx\,dy.
> $$
>
> **证明思路**：对 $u$ 应用 Green 公式，利用 $\Delta u=0$；圆周平均值与圆盘平均值之间由极坐标积分联系。

<!-- harmonic_function_regularity_mean_value -->
> [!Theorem]
> **均值性质的反向刻画 Converse Mean-Value Characterization**：若连续函数 $u:D\to\mathbb R$ 对每个满足 $\overline{B(a,r)}\subset D$ 的圆盘都满足圆周均值性质，则 $u$ 在 $D$ 上调和。
>
> **证明思路**：用圆盘平均值对 $u$ 进行平滑，均值条件使平滑函数等于 $u$；平滑函数满足 Laplace 方程，进而得到 $u$ 的二阶正则性和调和性。

## 共轭调和函数与全纯函数

<!-- harmonic_conjugate_definition -->
> [!Definition]
> **共轭调和函数 Harmonic Conjugate**：设 $u$ 是区域 $D$ 上的实值函数。若存在实值函数 $v$，使
> $$
> f=u+iv
> $$
> 在 $D$ 上全纯，则称 $v$ 是 $u$ 的共轭调和函数。

<!-- harmonic_conjugate_local_existence -->
> [!Theorem]
> **共轭调和函数的局部存在性 Local Existence of Harmonic Conjugates**：若 $u$ 在区域 $D$ 上调和，则对每个 $a\in D$，存在 $a$ 的邻域 $U$ 及函数 $v:U\to\mathbb R$，使 $v$ 是 $u$ 在 $U$ 上的共轭调和函数。它满足 Cauchy-Riemann 方程
> $$
> v_y=u_x,\qquad v_x=-u_y.
> $$
>
> **证明思路**：由 $\Delta u=0$，微分形式 $-u_y\,dx+u_x\,dy$ 闭合；在小圆盘等单连通邻域上应用 Poincaré 引理得到其原函数 $v$。

<!-- harmonic_conjugate_global_existence -->
> [!Theorem]
> **单连通区域上共轭调和函数的存在性 Global Existence on Simply Connected Domains**：若 $D$ 是单连通区域，$u$ 在 $D$ 上调和，则 $u$ 存在全局共轭调和函数 $v$；该共轭调和函数除加上一个实常数外唯一。
>
> **证明思路**：闭合微分形式在单连通区域上有原函数；若两个共轭调和函数对应同一个 $u$，则它们的差的两个偏导数都为零，故差为常数。

<!-- holomorphic_real_imaginary_harmonic -->
> [!Theorem]
> **全纯函数的实部与虚部是调和函数 Harmonic Real and Imaginary Parts**：若 $f=u+iv$ 在区域 $D$ 上全纯，则 $u,v$ 都是调和函数。反之，若 $u$ 是调和函数，且 $v$ 是其共轭调和函数，则 $u+iv$ 全纯。
>
> **证明思路**：对 Cauchy-Riemann 方程求偏导并相减，得到 $u_{xx}+u_{yy}=0$ 与 $v_{xx}+v_{yy}=0$；反向结论直接由 Cauchy-Riemann 方程和可微性得到。

<!-- harmonic_function_examples -->
> [!Example]+
> **调和函数的例子 Examples of Harmonic Functions**：函数 $u(x,y)=x^2-y^2$ 调和，其共轭调和函数可取 $v(x,y)=2xy$，从而 $u+iv=z^2$。函数 $\log|z|$ 在 $\mathbb C\setminus\{0\}$ 上调和，但在原点不定义；它局部是 $\log z$ 的实部。

> **注**：调和函数与共轭调和函数参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
