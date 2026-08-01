# 在非线性 PDE 中的应用

## 多线性估计与方程结构

<!-- multilinear_strichartz_estimate -->
> [!Theorem]
> **多线性 Strichartz 型估计 Multilinear Strichartz-Type Estimate**：对自由色散演化 $u_i(t)=e^{itL}f_i$，若频率支撑具有适当分离或横截性，则常可获得优于逐项 Hölder 估计的乘积界
> $$
> \left\|\prod_{i=1}^mu_i\right\|_{L^q_{t,x}}
> \lesssim \prod_{i=1}^m\|f_i\|_{L^2_x}.
> $$
> 允许的 $q$ 与额外频率增益取决于色散关系、空间维数和横截条件。
>
> **证明思路**：将演化写为曲面扩张算子；频率支撑的横截性允许应用双线性或多线性限制估计，再以插值和 Littlewood-Paley 求和得到时空范数界。

<!-- profile_decomposition_note -->
> [!Definition]
> **Profile 分解 Profile Decomposition**：有界解列在临界函数空间中可能因平移、缩放、调制或时间演化而失去紧性。profile 分解将其写为若干渐近正交的主要轮廓与在适当 Strichartz 范数中消失的余项，是临界非线性问题紧性分析的工具。

<!-- kdv_multilinear_estimate -->
> [!Theorem]
> **KdV 型多线性估计 Multilinear Estimates for KdV-Type Equations**：KdV 方程的二次或三次非线性项在 Bourgain 空间中需要估计形如
> $$
> \|\partial_x(uv)\|_{X^{s,b-1}}
> \lesssim\|u\|_{X^{s,b}}\|v\|_{X^{s,b}}.
> $$
> 该不等式成立的正则性范围依赖于所选方程和色散相位；其核心是频率与调制变量的双线性相消。
>
> **证明思路**：在 Fourier 时空侧将非线性项写成卷积，按高-低和高-高频率交互分解；利用 KdV 共振恒等式控制调制量，并在二进块上求和。

<!-- null_form_definition -->
> [!Definition]
> **Null 形式 Null Form**：Minkowski 空间中，典型的二次 null 形式为
> $$
> Q_0(u,v)=\partial_tu\,\partial_tv-\nabla u\cdot\nabla v,
> \qquad
> Q_{\alpha\beta}(u,v)=\partial_\alpha u\,\partial_\beta v-\partial_\beta u\,\partial_\alpha v.
> $$
> 当两个波包的频率方向平行时，这些符号产生额外消去，从而改善波动方程非线性项的双线性估计。

<!-- null_form_bilinear_estimate -->
> [!Theorem]
> **Null 形式双线性增益 Null-Form Bilinear Gain**：对适配波方程的函数空间，null 形式通常满足比一般导数乘积更强的双线性估计；增益来自符号中与频率夹角成比例的因子。精确的 Sobolev 指数、时间可积性和维数取决于具体函数空间。
>
> **证明思路**：作角度分解和波包分解。null 符号在近平行相互作用中小，而横截相互作用由双线性限制或双线性 Strichartz 估计控制。

<!-- quasilinear_paralinearization -->
> [!Definition]
> **仿线性化 Paralinearization**：对光滑非线性 $F$，Bony 分解将 $F(u)$ 或 $F(u)\partial u$ 的主部表示为系数的仿微分算子作用于高频未知量，余项则具有更高正则性或较低阶：
> $$
> F(u)\partial u=T_{F(u)}\partial u+\text{remainder}.
> $$
> 这为拟线性方程的能量估计分离出最高阶部分。

<!-- navier_stokes_vortex_stretching -->
> [!Example]+
> **Navier-Stokes 涡度拉伸项 Vortex Stretching in Navier-Stokes**：三维不可压缩 Navier-Stokes 的涡度方程含有
> $$
> \partial_t\omega+u\cdot\nabla\omega-\nu\Delta\omega
> =(\omega\cdot\nabla)u.
> $$
> 右端是涡度与速度梯度的双线性交互。Littlewood-Paley 分解和 Bony 半积可按频率分类该项，为 Besov 空间中的先验估计提供框架。
>
> **证明思路**：以 Biot-Savart 律把 $\nabla u$ 表为零阶奇异积分作用于 $\omega$，再对乘积应用半积估计并对二进尺度求和。

> **来源**：Terence Tao, *Nonlinear Dispersive Equations*；Jean Bourgain, "Fourier Transform Restriction Phenomena for Certain Lattice Subsets and Applications to Nonlinear Evolution Equations", *GAFA* 3 (1993)；Hans Bahouri, Jean-Yves Chemin, and Raphaël Danchin, *Fourier Analysis and Nonlinear Partial Differential Equations*。
