# 双周期函数

## 周期与格

<!-- elliptic_function_definition -->
> [!Definition]
> **椭圆函数 Elliptic Function**：设 $f$ 是复平面上的亚纯函数。若存在两个实线性无关的复数 $\omega_1,\omega_2$，使
> $$
> f(z+\omega_1)=f(z),\qquad f(z+\omega_2)=f(z)
> $$
> 对所有 $z$ 成立，则称 $f$ 为双周期函数或椭圆函数。
>
> 周期的全体构成离散格
> $$
> \Lambda=\mathbb Z\omega_1+\mathbb Z\omega_2.
> $$

<!-- lattice_definition -->
> [!Definition]
> **复平面中的格 Lattice in the Complex Plane**：若 $\omega_1,\omega_2$ 实线性无关，则
> $$
> \Lambda=\{m\omega_1+n\omega_2:m,n\in\mathbb Z\}
> $$
> 称为由 $\omega_1,\omega_2$ 生成的格。通常选取基底使
> $$
> \operatorname{Im}(\omega_2/\omega_1)>0.
> $$

<!-- fundamental_parallelogram_definition -->
> [!Definition]
> **基本平行四边形 Fundamental Parallelogram**：格基底 $\omega_1,\omega_2$ 的基本平行四边形为
> $$
> \mathcal P=\{s\omega_1+t\omega_2:0\le s<1,\ 0\le t<1\}.
> $$
> 平移 $\mathcal P+\lambda$（$\lambda\in\Lambda$）铺满复平面，且内部互不相交。

<!-- elliptic_function_compactness -->
> [!Theorem]
> **基本平行四边形上的紧致性 Compactness on a Fundamental Parallelogram**：椭圆函数在基本平行四边形的闭包上除有限个极点外有界；若椭圆函数无极点，则它为常数。
>
> **证明思路**：周期性将全平面的行为归约到一个基本平行四边形；无极点时函数在闭平行四边形上有界，因而在全平面上有界，再应用 Liouville 定理。

<!-- elliptic_function_poles_zeros_balance -->
> [!Theorem]
> **椭圆函数的极点与零点平衡 Balance of Zeros and Poles**：非常数椭圆函数在任意基本平行四边形内的极点和零点都是有限个，并且按重数计数时
> $$
> \sum_{a\in\mathcal P}\operatorname{ord}_a(f)=0.
> $$
> 因而非常数椭圆函数至少有一个极点和一个零点。
>
> **证明思路**：在边界避开零点和极点的基本平行四边形上应用辐角原理；相对边上的函数值和导数由周期性抵消，边界积分为零。

<!-- elliptic_function_residue_sum -->
> [!Theorem]
> **椭圆函数留数和为零 Sum of Residues of an Elliptic Function**：椭圆函数在一个基本平行四边形内所有极点的留数之和为零：
> $$
> \sum_{a\in\mathcal P}\operatorname{Res}(f,a)=0.
> $$
>
> **证明思路**：对基本平行四边形边界应用留数定理；相对边上的积分因周期性方向相反而相互抵消。

## 商空间观点

<!-- complex_torus_from_lattice -->
> [!Definition]
> **格商复环面 Complex Torus from a Lattice**：商空间
> $$
> \mathbb C/\Lambda
> $$
> 将相差格元素的点视为同一点，得到一个紧致复环面。椭圆函数正好对应于该复环面上的亚纯函数。
>
> **注**：双周期函数和椭圆函数基础参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 7，以及 Serge Lang, *Elliptic Functions*, Chapter 1。
