# Fourier 积分算子初步

## 典范关系与 Lagrangian 分布

<!-- oscillatory_fio_definition -->
> [!Definition]
> **Fourier 积分算子 Fourier Integral Operator**：局部地，Fourier 积分算子可写为
> $$
> Af(x)=\int_{\mathbb{R}^N}\int_{\mathbb{R}^n}
> e^{i\varphi(x,y,\theta)}a(x,y,\theta)f(y)\,dy\,d\theta,
> $$
> 其中 $\varphi$ 是关于辅助变量 $\theta$ 的非退化齐次相函数，$a$ 是适当阶的振幅。积分按振荡积分意义解释；不同相位表示可描述同一算子。

<!-- oscillatory_non_degenerate_phase_definition -->
> [!Definition]
> **非退化相函数 Nondegenerate Phase Function**：实值相函数 $\varphi(x,y,\theta)$ 称为非退化的，若在临界集
> $$
> C_\varphi=\{(x,y,\theta):\partial_\theta\varphi(x,y,\theta)=0\}
> $$
> 上，微分 $d(\partial_{\theta_j}\varphi)$（$1\leq j\leq N$）线性无关。此条件保证临界集是光滑流形，并使相位参数化一个几何良好的典范关系。

<!-- oscillatory_canonical_relation_definition -->
> [!Definition]
> **典范关系 Canonical Relation**：与相函数 $\varphi$ 关联的典范关系为
> $$
> C=\left\{\bigl(x,\partial_x\varphi;\,y,-\partial_y\varphi\bigr):
> \partial_\theta\varphi=0\right\}
> \subset T^*X\setminus0\times T^*Y\setminus0.
> $$
> 它是乘积辛形式下的 Lagrangian 子流形，记录 FIO 如何将输入的余切方向传递到输出。

<!-- oscillatory_lagrangian_distribution_definition -->
> [!Definition]
> **Lagrangian 分布 Lagrangian Distribution**：若 $\Lambda\subset T^*X\setminus0$ 是齐次 Lagrangian 子流形，则由非退化相函数参数化并配以符号振幅得到的振荡积分分布称为与 $\Lambda$ 相关的 Lagrangian 分布。它们推广了平面波与基本解中的高频奇性。

<!-- oscillatory_pseudodifferential_as_fio -->
> [!Proposition]
> **拟微分算子是 FIO 的特例 Pseudodifferential Operators as FIOs**：拟微分算子
> $$
> \operatorname{Op}(a)f(x)
> =\int e^{2\pi i(x-y)\cdot\xi}a(x,\xi)f(y)\,dy\,d\xi
> $$
> 是 Fourier 积分算子，其典范关系为对角线的余切提升
> $$
> \{(x,\xi;x,\xi):\xi\ne0\}.
> $$
> 因而 FIO 将拟微分算子从恒等典范变换推广到一般典范关系。
>
> **证明思路**：取相位 $\varphi(x,y,\xi)=2\pi(x-y)\cdot\xi$。对 $\xi$ 求导的临界条件给出 $x=y$，再对 $x,y$ 求导即可得到对角典范关系。

<!-- oscillatory_fio_mapping_theorem -->
> [!Theorem]
> **FIO 的 $L^2$ 有界性原理 $L^2$ Boundedness Principle for FIOs**：阶为零且典范关系局部为典范图的适当 Fourier 积分算子在 $L^2$ 上局部有界。更一般地，FIO 在 Sobolev 空间之间的映射性质由算子阶、相位变量数和典范关系的投影几何共同决定。
>
> **证明思路**：将算子局部化并计算 $A^*A$。在典范图条件下，复合的典范关系退化为对角线，故 $A^*A$ 是零阶拟微分算子；其 $L^2$ 有界性给出结论。

<!-- oscillatory_propagation_singularities -->
> [!Theorem]
> **奇性传播的几何图景 Geometric Picture of Propagation of Singularities**：若 $A$ 是关联典范关系 $C$ 的 FIO，则输入分布的波前集在 $A$ 的作用下沿 $C$ 传播；在适当椭圆性与图条件下，输出波前集与 $C$ 对输入波前集的像相一致。
>
> **证明思路**：在非驻相区域对相位反复分部积分，得到快速衰减；只有满足典范关系的临界方向能留下高频奇性。

> **来源**：Lars Hörmander, *The Analysis of Linear Partial Differential Operators IV*, Chapters XXV--XXVI；J. J. Duistermaat, *Fourier Integral Operators*。
