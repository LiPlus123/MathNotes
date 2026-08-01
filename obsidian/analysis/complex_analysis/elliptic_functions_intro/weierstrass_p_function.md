# Weierstrass $\wp$ 函数

## 定义与基本性质

<!-- weierstrass_p_function_definition -->
> [!Definition]
> **Weierstrass $\wp$ 函数 Weierstrass $\wp$-Function**：给定格 $\Lambda\subset\mathbb C$，定义
> $$
> \wp(z;\Lambda)=\frac1{z^2}+\sum_{\substack{\omega\in\Lambda\\\omega\ne0}}
> \left(\frac1{(z-\omega)^2}-\frac1{\omega^2}\right).
> $$
> 该级数在避开格点的紧集上一致收敛，因而定义 $\mathbb C\setminus\Lambda$ 上的亚纯函数，并在每个格点处有二阶极点。

<!-- weierstrass_p_periodicity -->
> [!Theorem]
> **Weierstrass $\wp$ 函数的双周期性 Double Periodicity of $\wp$**：对任意 $\lambda\in\Lambda$，
> $$
> \wp(z+\lambda;\Lambda)=\wp(z;\Lambda).
> $$
> 同时 $\wp$ 是偶函数，且在 $z=0$ 附近有展开
> $$
> \wp(z)=\frac1{z^2}+O(z^2).
> $$
>
> **证明思路**：对定义级数作格点平移并利用绝对局部一致收敛；偶性由对格点 $\omega$ 与 $-\omega$ 配对得到。

<!-- weierstrass_p_derivative -->
> [!Theorem]
> **Weierstrass $\wp$ 函数的导数 Weierstrass $\wp'$**：逐项求导得到
> $$
> \wp'(z)=-2\sum_{\omega\in\Lambda}\frac1{(z-\omega)^3},
> $$
> 其中级数在避开格点的紧集上一致收敛。函数 $\wp'$ 为奇椭圆函数，在格点处有三阶极点。

<!-- weierstrass_invariants_definition -->
> [!Definition]
> **Weierstrass 不变量 Weierstrass Invariants**：对格 $\Lambda$，定义
> $$
> g_2=60\sum_{\substack{\omega\in\Lambda\\\omega\ne0}}\frac1{\omega^4},
> \qquad
> g_3=140\sum_{\substack{\omega\in\Lambda\\\omega\ne0}}\frac1{\omega^6}.
> $$
> 这两个级数绝对收敛，并且只依赖于格，不依赖于所选格基底。

## 微分方程与加法定理

<!-- weierstrass_differential_equation -->
> [!Theorem]
> **Weierstrass $\wp$ 函数的微分方程 Differential Equation of $\wp$**：Weierstrass $\wp$ 函数满足
> $$
> (\wp'(z))^2=4\wp(z)^3-g_2\wp(z)-g_3,
> $$
> 以及
> $$
> \wp''(z)=6\wp(z)^2-\frac12g_2.
> $$
>
> **证明思路**：两侧之差是椭圆函数；由 $z=0$ 附近 Laurent 展开的主部相消，差函数无极点，故由 Liouville 定理为常数；比较无穷远展开确定常数为零。

<!-- weierstrass_cubic_discriminant -->
> [!Definition]
> **Weierstrass 判别式 Weierstrass Discriminant**：定义
> $$
> \Delta_\Lambda=g_2^3-27g_3^2.
> $$
> 当 $\Delta_\Lambda\ne0$ 时，三次多项式
> $$
> 4X^3-g_2X-g_3
> $$
> 无重根，椭圆曲线 $Y^2=4X^3-g_2X-g_3$ 是非奇异的。

<!-- weierstrass_addition_theorem -->
> [!Theorem]
> **Weierstrass 加法定理 Addition Theorem for $\wp$**：对不使分母为零的 $z,w$，有
> $$
> \wp(z+w)= -\wp(z)-\wp(w)
> +\frac14\left(\frac{\wp'(z)-\wp'(w)}{\wp(z)-\wp(w)}\right)^2.
> $$
>
> **证明思路**：将右侧与左侧之差视为关于 $z$ 的椭圆函数，分析其极点和主部；所有极点消去后由 Liouville 定理得到常数，再在特殊点处比较确定常数。

<!-- elliptic_curve_uniformization -->
> [!Theorem]
> **椭圆环面的代数表示 Algebraic Representation of the Complex Torus**：当 $\Delta_\Lambda\ne0$ 时，映射
> $$
> z\pmod{\Lambda}\longmapsto(\wp(z),\wp'(z))
> $$
> 将复环面 $\mathbb C/\Lambda$ 双有理地表示为椭圆曲线
> $$
> Y^2=4X^3-g_2X-g_3.
> $$
>
> **证明思路**：微分方程给出像包含于该曲线；椭圆函数域由 $\wp$ 与 $\wp'$ 生成，再比较映射的次数和极点结构。

> **注**：Weierstrass $\wp$ 函数参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 7，以及 Serge Lang, *Elliptic Functions*, Chapter 2。
