# 复线积分

## 曲线与复线积分

<!-- complex_curve_definition -->
> [!Definition]
> **分段光滑曲线 Piecewise Smooth Curve**：曲线是连续映射
> $$
> \gamma:[a,b]\to\mathbb{C}.
> $$
> 若存在有限分割 $a=t_0<t_1<\cdots<t_n=b$，使得 $\gamma$ 在每个 $[t_{j-1},t_j]$ 上连续可微，且导数连续（允许在分割点处不连续），则称 $\gamma$ 为分段光滑曲线。曲线的起点和终点分别为 $\gamma(a)$ 与 $\gamma(b)$；若二者相等，则称 $\gamma$ 为闭曲线。

<!-- complex_curve_orientation_and_operations -->
> [!Definition]
> **曲线的方向与运算 Orientation and Operations on Curves**：曲线的反向曲线定义为
> $$
> \bar\gamma(t)=\gamma(a+b-t).
> $$
> 若 $\gamma(b)=\eta(a)$，则曲线连接 $\gamma*\eta$ 表示先沿 $\gamma$ 再沿 $\eta$ 行进。曲线的像 $\gamma([a,b])$ 称为其轨迹；曲线的长度为
> $$
> L(\gamma)=\int_a^b|\gamma'(t)|\,dt.
> $$

<!-- complex_line_integral_definition -->
> [!Definition]
> **复线积分 Complex Line Integral**：设 $f$ 在曲线 $\gamma:[a,b]\to\mathbb{C}$ 的轨迹上连续，定义 $f$ 沿 $\gamma$ 的复线积分为
> $$
> \int_\gamma f(z)\,dz
> :=\int_a^b f(\gamma(t))\gamma'(t)\,dt.
> $$
> 该定义与分段光滑参数化无关，只取决于带方向的曲线。

<!-- complex_line_integral_parameterization -->
> [!Theorem]
> **复线积分的参数化公式 Parameterization Formula**：若 $\gamma(t)=x(t)+iy(t)$，且 $f=u+iv$，则
> $$
> \int_\gamma f(z)\,dz
> =\int_\gamma (u\,dx-v\,dy)+i\int_\gamma(v\,dx+u\,dy).
> $$
> 若 $\gamma$ 可反向，则
> $$
> \int_{\bar\gamma}f(z)\,dz=-\int_\gamma f(z)\,dz.
> $$
> 对可连接的曲线有
> $$
> \int_{\gamma*\eta}f(z)\,dz=\int_\gamma f(z)\,dz+\int_\eta f(z)\,dz.
> $$
>
> **证明思路**：代入 $z=x+iy$、$dz=dx+i\,dy$，再使用实部与虚部相乘的公式；反向和连接的结论由一元积分的换元与可加性得到。

<!-- complex_line_integral_estimate -->
> [!Theorem]
> **线积分估计不等式 ML Inequality**：设 $f$ 在分段光滑曲线 $\gamma$ 上连续，则
> $$
> \left|\int_\gamma f(z)\,dz\right|
> \le\int_\gamma|f(z)|\,|dz|
> =\int_a^b|f(\gamma(t))|\,|\gamma'(t)|\,dt.
> $$
> 特别地，若 $|f(z)|\le M$ 在 $\gamma$ 上成立，则
> $$
> \left|\int_\gamma f(z)\,dz\right|\le M L(\gamma).
> $$
>
> **证明思路**：将线积分写成参数积分，应用积分形式的三角不等式，再使用 $|\int h|\le\int|h|$。

<!-- complex_line_integral_examples -->
> [!Example]+
> **典型复线积分 Examples**：
> 1. 对直线段 $\gamma(t)=z_0+t(z_1-z_0)$，$0\le t\le1$，有
> $$
> \int_\gamma 1\,dz=z_1-z_0.
> $$
> 2. 对 $n\in\mathbb{Z}$ 和正向圆周 $\gamma(t)=z_0+re^{it}$，$0\le t\le2\pi$，有
> $$
> \int_\gamma(z-z_0)^n\,dz=
> \begin{cases}
> 0,&n\ne-1,\\
> 2\pi i,&n=-1.
> \end{cases}
> $$
>
> **注**：复线积分的定义、参数化和 ML 不等式参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 4。
