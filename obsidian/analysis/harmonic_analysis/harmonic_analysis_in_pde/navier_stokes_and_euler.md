# Navier-Stokes 方程与 Euler 方程

## 临界空间与涡度分析

<!-- pde_incompressible_navier_stokes_definition -->
> [!Definition]
> **不可压缩 Navier-Stokes 方程 Incompressible Navier-Stokes Equations**：速度场 $u$ 与压力 $p$ 满足
> $$
> \partial_tu+u\cdot\nabla u+\nabla p=\nu\Delta u,
> \qquad \nabla\cdot u=0,
> $$
> 其中 $\nu>0$ 为黏性。令 $\mathbb{P}$ 为 Leray 投影，则可消去压力并写成
> $$
> \partial_tu-\nu\Delta u=-\mathbb{P}\nabla\cdot(u\otimes u).
> $$

<!-- pde_mild_solution_definition -->
> [!Definition]
> **温和解 Mild Solution**：给定散度为零的初值 $u_0$，温和解满足 Duhamel 公式
> $$
> u(t)=e^{\nu t\Delta}u_0-
> \int_0^te^{\nu(t-s)\Delta}\mathbb{P}\nabla\cdot(u\otimes u)(s)\,ds.
> $$
> 热半群的正则化与双线性项的临界估计是 Kato 方法的核心。

<!-- pde_navier_stokes_energy_identity -->
> [!Theorem]
> **能量恒等式 Energy Identity**：对足够光滑且衰减适当的 Navier-Stokes 解，
> $$
> \frac12\|u(t)\|_{L^2}^2+
> \nu\int_0^t\|\nabla u(s)\|_{L^2}^2\,ds
> =\frac12\|u_0\|_{L^2}^2.
> $$
> 弱解通常只满足相应的能量不等式。
>
> **证明思路**：将方程与 $u$ 作 $L^2$ 配对；不可压缩条件使对流项和压力项积分为零，黏性项经分部积分给出耗散。

<!-- pde_biot_savart_law -->
> [!Definition]
> **Biot--Savart 律 Biot--Savart Law**：在三维，涡度 $\omega=\nabla\times u$ 决定散度为零的速度场，形式上
> $$
> u=-\nabla\times(-\Delta)^{-1}\omega.
> $$
> 因而 $\nabla u$ 是 $\omega$ 的 Riesz 变换组合，调和分析可将涡度范数转化为速度梯度范数。

<!-- pde_onsager_theorem -->
> [!Theorem]
> **Onsager 能量守恒阈值 Onsager Energy-Conservation Threshold**：设 $u$ 是三维 Euler 方程的弱解。若
> $$
> u\in L^3((0,T);B^{\alpha}_{3,c_0}(\mathbb{T}^3))
> \qquad\text{且}\qquad \alpha>\frac13,
> $$
> 则 $u$ 守恒动能。这里 $B^{\alpha}_{3,c_0}$ 表示高频 Besov 块经相应归一化后趋于零的闭子空间。
>
> **证明思路**：对 Euler 方程作低频截断；能量通量是高频交换子的三次项。Besov 正则性使该通量在截断尺度趋零。

> **来源**：Tosio Kato, "Strong $L^p$-Solutions of the Navier-Stokes Equation"；Peter Constantin, Weinan E, and Edriss Titi, "Onsager's Conjecture on the Energy Conservation for Solutions of Euler's Equation"。
