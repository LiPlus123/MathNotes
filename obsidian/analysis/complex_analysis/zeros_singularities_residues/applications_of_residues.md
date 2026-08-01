# 留数的应用

## 实积分

<!-- rational_real_integral_residue_method -->
> [!Theorem]
> **有理函数实积分的留数方法 Residue Method for Rational Integrals**：设 $R(x)=P(x)/Q(x)$ 为实系数有理函数，且 $Q$ 在实轴上无零点、$R(x)=O(|x|^{-1-\varepsilon})$（$|x|\to\infty$）。将 $R$ 延拓为复有理函数，并取上半平面内的半圆轮廓，则
> $$
> \int_{-\infty}^{\infty}R(x)\,dx
> =2\pi i\sum_{\operatorname{Im}a_k>0}\operatorname{Res}(R,a_k).
> $$
>
> **证明思路**：对上半平面半圆应用留数定理；由估计不等式使大半圆弧积分趋于零。

<!-- jordan_lemma -->
> [!Theorem]
> **Jordan 引理 Jordan's Lemma**：设 $a>0$，且 $f$ 在上半平面适当区域内连续并满足在大半圆弧上一致的衰减条件，例如 $f(z)=O(1/|z|)$。则对上半圆弧 $C_R^+$，有
> $$
> \lim_{R\to\infty}\int_{C_R^+}f(z)e^{iaz}\,dz=0.
> $$
> 下半平面的对应结论适用于 $a<0$。
>
> **证明思路**：$|e^{iaz}|=e^{-a\operatorname{Im}z}$ 在上半平面提供指数衰减，再将圆弧分为靠近实轴和远离实轴的部分估计。

<!-- trigonometric_real_integrals -->
> [!Theorem]
> **三角型与含正弦余弦积分 Trigonometric Integrals**：令 $z=e^{i\theta}$，则
> $$
> \cos\theta=\frac12\left(z+\frac1z\right),\qquad
> \sin\theta=\frac1{2i}\left(z-\frac1z\right),\qquad
> d\theta=\frac{dz}{iz}.
> $$
> 因而满足适当正则性条件的积分
> $$
> \int_0^{2\pi}R(\cos\theta,\sin\theta)\,d\theta
> $$
> 可化为单位圆周上的有理函数留数积分。
>
> **证明思路**：使用上述代换把三角函数表示成 $z$ 与 $1/z$ 的有理式，再对单位圆内的极点应用留数定理。

## 级数求和

<!-- residue_series_summation -->
> [!Theorem]
> **利用留数计算级数求和 Residue Summation of Series**：设 $f$ 在整数附近亚纯，且配合核函数 $\pi\cot(\pi z)$ 的增长条件足以使大轮廓积分趋于零，则
> $$
> \sum_{n\in\mathbb{Z}}f(n)
> =-\sum_{a\in\operatorname{Poles}(f)}\operatorname{Res}\bigl(\pi\cot(\pi z)f(z),a\bigr),
> $$
> 其中级数与极点和须在相应收敛意义下解释。
>
> **证明思路**：核函数 $\pi\cot(\pi z)$ 在每个整数处有留数 $1$；对包含越来越多整数的矩形轮廓应用留数定理，并令轮廓趋于无穷。

<!-- residue_summation_example -->
> [!Example]+
> **经典级数 Classical Series**：取 $f(z)=1/z^2$，使用核函数 $\pi\cot(\pi z)$，可得到
> $$
> \sum_{n\in\mathbb{Z}\setminus\{0\}}\frac1{n^2}=\frac{\pi^2}{3}.
> $$
> 该例说明留数方法可以把整数点上的级数转化为复平面上极点的留数和。

> **注**：留数计算实积分和级数的典型方法参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 6。
