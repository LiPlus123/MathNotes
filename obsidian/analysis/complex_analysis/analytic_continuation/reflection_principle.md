# Schwarz 反射原理

## 关于实轴的反射

<!-- schwarz_reflection_principle_real_axis -->
> [!Theorem]
> **关于实轴的 Schwarz 反射原理 Schwarz Reflection Principle Across the Real Axis**：设 $D_+=D\cap\{\operatorname{Im}z>0\}$，其中 $D$ 关于实轴对称，且 $D\cap\mathbb{R}$ 是其内部的一部分。若 $f$ 在 $D_+$ 上连续，在 $D_+$ 内全纯，并且在 $D\cap\mathbb{R}$ 上取实值，则定义
> $$
> F(z)=
> \begin{cases}
> f(z),&\operatorname{Im}z\ge0,\\
> \overline{f(\bar z)},&\operatorname{Im}z<0,
> \end{cases}
> $$
> 则 $F$ 在 $D$ 上全纯，并且是 $f$ 跨越实轴的解析延拓。
>
> **证明思路**：下半平面的定义保证与实轴上的连续值相容；对任意三角形应用 Morera 定理，跨越实轴的积分由上下两部分抵消，故 $F$ 全纯。

<!-- schwarz_reflection_power_series -->
> [!Corollary]
> **反射后的 Taylor 系数 Taylor Coefficients after Reflection**：在 Schwarz 反射原理的条件下，若 $f$ 在实轴附近展开为
> $$
> f(z)=\sum_{n=0}^{\infty}a_n(z-a)^n,\qquad a\in\mathbb{R},
> $$
> 且 $f$ 在实轴上取实值，则 $a_n\in\mathbb{R}$。
>
> **证明思路**：反射恒等式 $f(\bar z)=\overline{f(z)}$ 与 Taylor 展开的唯一性比较系数。

<!-- schwarz_reflection_boundary_example -->
> [!Example]+
> **反射例子 Reflection Example**：若 $f(z)=z^2+1$ 在上半平面定义，则其在实轴上取实值，Schwarz 反射给出的下半平面延拓仍为 $F(z)=z^2+1$。若边界值不为实数，则该形式的反射通常不能连续粘合。

## 更一般的反射原理

<!-- schwarz_reflection_circle_line -->
> [!Theorem]
> **关于圆周或直线的反射 Reflection Across a Circle or Line**：通过 Möbius 变换把给定圆周或直线变为实轴，可将 Schwarz 反射原理转化为关于该圆周或直线的反射原理。若边界条件在变换后对应于实值条件，则全纯函数可跨越该边界解析延拓。
>
> **证明思路**：先用 Möbius 变换共形地把边界化为实轴，在新坐标中应用实轴反射，再用逆变换返回原坐标。

<!-- schwarz_reflection_harmonic_version -->
> [!Theorem]
> **调和函数的反射原理 Reflection Principle for Harmonic Functions**：设 $u$ 在上半平面内调和并连续到实轴，且 $u=0$ 在实轴上，则定义
> $$
> U(x,y)=
> \begin{cases}
> u(x,y),&y\ge0,\\
> -u(x,-y),&y<0,
> \end{cases}
> $$
> 在适当正则性条件下，$U$ 是跨越实轴的调和函数。
>
> **证明思路**：奇反射使边界值连续匹配；在分布意义下或通过均值性质验证反射后的函数调和。

> **注**：Schwarz 反射原理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 7。
