# 模形式初步

## 上半平面与模群

<!-- modular_group_definition -->
> [!Definition]
> **模群 Modular Group**：模群定义为
> $$
> \operatorname{SL}_2(\mathbb Z)=
> \left\{\begin{pmatrix}a&b\\c&d\end{pmatrix}:a,b,c,d\in\mathbb Z,\ ad-bc=1\right\}.
> $$
> 商群 $\operatorname{PSL}_2(\mathbb Z)=\operatorname{SL}_2(\mathbb Z)/\{\pm I\}$ 通过分式线性变换作用于上半平面
> $$
> \mathbb H=\{\tau\in\mathbb C:\operatorname{Im}\tau>0\},
> $$
> $$
> \gamma\tau=\frac{a\tau+b}{c\tau+d}.
> $$

<!-- modular_group_generators -->
> [!Theorem]
> **模群的生成元 Generators of the Modular Group**：$\operatorname{PSL}_2(\mathbb Z)$ 由
> $$
> S(\tau)=-\frac1\tau,\qquad T(\tau)=\tau+1
> $$
> 生成，并满足关系 $S^2=(ST)^3=1$。
>
> **证明思路**：对任意 $\tau\in\mathbb H$ 使用整数平移和倒数变换，将其化到标准基本区域；对矩阵条目使用欧几里得算法得到生成关系。

<!-- modular_fundamental_domain -->
> [!Definition]
> **模群基本区域 Fundamental Domain of the Modular Group**：常用基本区域为
> $$
> \mathcal F=\left\{\tau\in\mathbb H:|\operatorname{Re}\tau|\le\frac12,\ |\tau|\ge1\right\},
> $$
> 边界点按模群作用识别。除边界识别和椭圆固定点外，$\mathcal F$ 中每个轨道有唯一代表。

## 模形式与 Eisenstein 级数

<!-- modular_form_definition -->
> [!Definition]
> **模形式 Modular Form**：设 $k\in\mathbb Z$，$f:\mathbb H\to\mathbb C$ 全纯。若对每个
> $$
> \gamma=\begin{pmatrix}a&b\\c&d\end{pmatrix}\in\operatorname{SL}_2(\mathbb Z)
> $$
> 满足权 $k$ 变换律
> $$
> f\left(\frac{a\tau+b}{c\tau+d}\right)=(c\tau+d)^k f(\tau),
> $$
> 并且在尖点 $\infty$ 处全纯，则称 $f$ 为权 $k$ 的模形式。若在尖点处值为零，则称为尖点形式。
>
> 在 $q=e^{2\pi i\tau}$ 下，尖点条件等价于 Fourier 展开中常数项为零。

<!-- modular_form_fourier_expansion -->
> [!Theorem]
> **模形式的 Fourier 展开 Fourier Expansion of Modular Forms**：模形式具有 $1$-周期性，因此可写成
> $$
> f(\tau)=\sum_{n=0}^{\infty}a_nq^n,
> \qquad q=e^{2\pi i\tau},
> $$
> 在 $\operatorname{Im}\tau$ 足够大时收敛；尖点形式满足 $a_0=0$。
>
> **证明思路**：由变换律 $f(\tau+1)=f(\tau)$，令 $q=e^{2\pi i\tau}$ 将函数转化为穿孔圆盘上的全纯函数；尖点处全纯性排除负幂项。

<!-- eisenstein_series_definition -->
> [!Definition]
> **Eisenstein 级数 Eisenstein Series**：对偶数 $k\ge4$，定义
> $$
> G_k(\tau)=\sum_{(m,n)\in\mathbb Z^2\setminus\{(0,0)\}}
> \frac1{(m+n\tau)^k}.
> $$
> 该级数在 $\mathbb H$ 上局部一致收敛，并且是权 $k$ 的模形式。

<!-- eisenstein_series_fourier_expansion -->
> [!Theorem]
> **Eisenstein 级数的 Fourier 展开 Fourier Expansion of Eisenstein Series**：对偶数 $k\ge4$，有
> $$
> G_k(\tau)=2\zeta(k)+\frac{2(2\pi i)^k}{(k-1)!}
> \sum_{n=1}^{\infty}\sigma_{k-1}(n)q^n,
> $$
> 其中
> $$
> \sigma_{k-1}(n)=\sum_{d\mid n}d^{k-1}.
> $$
> 特别地，$G_4$ 和 $G_6$ 生成低权模形式的基本例子。
>
> **证明思路**：先对格求和按一个方向分组，再使用 Poisson 求和或留数方法计算 Fourier 系数。

<!-- modular_forms_connection_elliptic_functions -->
> [!Theorem]
> **模形式与椭圆函数的不变量 Modular Forms and Elliptic Invariants**：格 $\Lambda=\mathbb Z\omega_1+\mathbb Z\omega_2$ 的不变量 $g_2,g_3$ 在改变格基底时按权 $4$ 和权 $6$ 变换；标准化后分别对应权 $4$ 和权 $6$ 的模形式。其组合
> $$
> \Delta(\tau)=g_2(\tau)^3-27g_3(\tau)^2
> $$
> 按权 $12$ 变换，并在上半平面内不为零。
>
> **证明思路**：对格整体缩放 $\Lambda\mapsto\alpha\Lambda$ 计算 $g_2,g_3$ 的齐次次数；模群作用只改变格基底，不改变格本身。

> **注**：模群、模形式和 Eisenstein 级数参见 Serge Lang, *Introduction to Modular Forms*, Chapter 1，以及 Henryk Iwaniec, *Topics in Classical Automorphic Forms*, Chapter 1。
