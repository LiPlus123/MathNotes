# 双线性 Hilbert 变换

## 时频分析的基本模型

<!-- bilinear_hilbert_transform_definition -->
> [!Definition]
> **双线性 Hilbert 变换 Bilinear Hilbert Transform**：对 Schwartz 函数 $f,g$，定义主值积分
> $$
> \operatorname{BHT}(f,g)(x)
> =\operatorname{p.v.}\frac1\pi\int_{\mathbb{R}}
> f(x-t)g(x+t)\frac{dt}{t}.
> $$
> 在 Fourier 侧，它对应于沿超平面 $\xi+\eta=\zeta$ 的双线性乘子，其符号含有不连续因子 $-i\operatorname{sgn}(\xi-\eta)$。

<!-- calderon_conjecture_history -->
> [!Theorem]
> **Calderón 猜想的历史背景 Calderon Conjecture Background**：Calderón 提出的 Cauchy 积分在 Lipschitz 曲线上的有界性问题导向了双线性 Hilbert 变换模型。由于其符号沿对角线 $\xi=\eta$ 不光滑，BHT 不属于直接适用 Coifman-Meyer 定理的光滑乘子类。
>
> **证明思路**：该历史性联系由将曲线参数化后的 Cauchy 积分作线性化和 Fourier 展开得到；困难集中在接近频率奇异线的相互作用。

<!-- lacey_thiele_theorem -->
> [!Theorem]
> **Lacey-Thiele 定理 Lacey-Thiele Theorem**：若 $1<p,q\leq+\infty$、$2/3<r<+\infty$ 且
> $$
> \frac1p+\frac1q=\frac1r,
> $$
> 则 BHT 延拓为有界双线性算子
> $$
> \operatorname{BHT}:L^p(\mathbb{R})\times L^q(\mathbb{R})\longrightarrow L^r(\mathbb{R}).
> $$
> 当输入指数为无穷大时，结论按适当端点解释；范围 $r>2/3$ 是该定理的核心阈值。
>
> **证明思路**：对符号作 Whitney 分解并离散化为时频 tile 的三线性形式。树分解将估计归结为 size 与 energy 控制，再以树选择算法求和。

<!-- bht_time_frequency_method -->
> [!Definition]
> **时频 Tile 与树 Time-Frequency Tiles and Trees**：tile 是时间区间与频率区间的相位平面矩形，面积处于不确定性原理许可的尺度；具有嵌套时间和频率关系的 tile 集合称为树。BHT 的证明以树为组织单位，同时追踪局部振荡与正交性。

<!-- bht_carleson_relation -->
> [!Proposition]
> **与 Carleson 算子的关系 Relation to the Carleson Operator**：Carleson 算子和 BHT 都需要以 tile、树和选择算法处理频率调制产生的非正交性。BHT 是真正双线性的模型：其频率奇异集为斜对角线，不能化为单个线性奇异积分的估计。
>
> **证明思路**：比较两者的离散化模型可见，Carleson 问题对应调制参数的上确界，而 BHT 对应三个频率区间的耦合约束。

<!-- bht_dispersive_pde_application -->
> [!Example]+
> **双线性 Hilbert 变换与色散 PDE Bilinear Hilbert Transform in Dispersive PDE**：一维色散方程的二次非线性项经 Fourier 变换后常出现共振曲线附近的双线性奇异乘子。BHT 的时频方法说明：仅依靠逐点符号光滑性不足时，仍可能借助相位空间的树结构获得双线性估计。
>
> **证明思路**：将 Duhamel 项写成双线性 Fourier 乘子，比较其共振集合与 BHT 的奇异线；具体方程还须利用色散相位和函数空间结构。

> **来源**：Michael Lacey and Christoph Thiele, "$L^p$ Estimates on the Bilinear Hilbert Transform for $2<p<\infty$", *Annals of Mathematics* 146 (1997)；Michael Lacey and Christoph Thiele, "On Calderón's Conjecture", *Annals of Mathematics* 149 (1999)。
