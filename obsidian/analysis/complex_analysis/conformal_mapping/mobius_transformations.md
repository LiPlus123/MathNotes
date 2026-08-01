# 分式线性变换

## Möbius 变换与交比

<!-- mobius_transformation_definition -->
> [!Definition]
> **分式线性变换 Möbius Transformation**：在 Riemann 球面 $\widehat{\mathbb C}$ 上，形如
> $$
> T(z)=\frac{az+b}{cz+d},\qquad ad-bc\ne0,
> $$
> 的映射称为 Möbius 变换；当 $c\ne0$ 时规定 $T(-d/c)=\infty$、$T(\infty)=a/c$，当 $c=0$ 时规定 $T(\infty)=\infty$。

<!-- mobius_transformation_inverse -->
> [!Theorem]
> **Möbius 变换的逆变换 Inverse Möbius Transformation**：Möbius 变换是 $\widehat{\mathbb C}$ 上的双射，其逆变换也是 Möbius 变换。矩阵
> $$
> \begin{pmatrix}a&b\\c&d\end{pmatrix}
> $$
> 与任意非零复数倍表示同一个 Möbius 变换。
>
> **证明思路**：直接解方程 $w=(az+b)/(cz+d)$ 得到 $z=(dw-b)/(-cw+a)$；行列式条件保证分母和逆映射不退化。

<!-- mobius_transformation_composition -->
> [!Theorem]
> **Möbius 变换的复合 Composition of Möbius Transformations**：两个 Möbius 变换的复合仍为 Möbius 变换；所有 Möbius 变换在复合下构成群，其群同构于
> $$
> \operatorname{PGL}(2,\mathbb C)=\operatorname{GL}(2,\mathbb C)/\mathbb C^\times.
> $$
>
> **证明思路**：变换的复合对应于表示矩阵的乘法，矩阵乘积的行列式仍非零。

<!-- cross_ratio_definition -->
> [!Definition]
> **交比 Cross Ratio**：对 Riemann 球面上四个互不相同的点 $z_1,z_2,z_3,z_4$，定义交比
> $$
> [z_1,z_2;z_3,z_4]
> =\frac{(z_1-z_3)(z_2-z_4)}{(z_1-z_4)(z_2-z_3)},
> $$
> 其中含 $\infty$ 的情形由极限定义。

<!-- cross_ratio_invariance -->
> [!Theorem]
> **交比的 Möbius 不变性 Möbius Invariance of Cross Ratio**：对任意 Möbius 变换 $T$，
> $$
> [T(z_1),T(z_2);T(z_3),T(z_4)]
> =[z_1,z_2;z_3,z_4].
> $$
> 反之，保持三个不同点不动的 Möbius 变换只能是恒等变换；给定三个不同的源点和三个不同的目标点，存在唯一 Möbius 变换将前者依次映到后者。
>
> **证明思路**：代入 $T(z)-T(w)=(ad-bc)(z-w)/((cz+d)(cw+d))$，所有因子约去；唯一性由三点归一化得到。

## 圆周、直线与单位圆盘

<!-- mobius_circles_lines_theorem -->
> [!Theorem]
> **圆周与直线的像 Images of Circles and Lines**：在 $\widehat{\mathbb C}$ 中，Möbius 变换把广义圆映为广义圆；广义圆是普通圆周或包含无穷远点的直线。Möbius 变换也保持圆周与直线的交角。
>
> **证明思路**：圆周或直线可统一写成 $\alpha|z|^2+\beta z+\bar\beta\bar z+\delta=0$ 的形式；代入 Möbius 变换的逆式后仍得到同类方程。共形性给出交角保持。

<!-- unit_disk_automorphism -->
> [!Theorem]
> **单位圆盘的自同构 Automorphisms of the Unit Disk**：单位圆盘
> $$
> \mathbb D=\{z\in\mathbb C:|z|<1\}
> $$
> 的所有双全纯自同构恰为
> $$
> \varphi_{a,\theta}(z)=e^{i\theta}\frac{z-a}{1-\bar a z},
> \qquad |a|<1,\quad\theta\in\mathbb R.
> $$
> 其中 $\varphi_{a,\theta}(a)=0$。
>
> **证明思路**：先用 Schwarz 引理研究把 $a$ 映到 $0$ 的自同构，再将任意自同构与其逆应用于 Schwarz 引理，得到上述形式。

<!-- upper_half_plane_disk_conformal_equivalence -->
> [!Example]+
> **上半平面与单位圆盘的等价 Half-Plane and Disk Equivalence**：Cayley 变换
> $$
> C(z)=\frac{z-i}{z+i}
> $$
> 将上半平面 $\mathbb H=\{z:\operatorname{Im}z>0\}$ 双全纯地映到 $\mathbb D$，其逆变换为
> $$
> C^{-1}(w)=i\frac{1+w}{1-w}.
> $$

> **注**：Möbius 变换、交比和单位圆盘自同构参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 3，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 6。
