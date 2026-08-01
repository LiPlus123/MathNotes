# 有限 Abel 群与有限域 Fourier 分析

## 角色、正交关系与指数和

<!-- local_finite_group_fourier_transform_definition -->
> [!Definition]
> **有限 Abel 群 Fourier 变换 Fourier Transform on a Finite Abelian Group**：设 $A$ 是有限 Abel 群，$\widehat A$ 是其特征标群。对 $f:A\to\mathbb{C}$，定义
> $$
> \widehat f(\chi)=\sum_{x\in A}f(x)\overline{\chi(x)}.
> $$
> 反演公式和 Plancherel 恒等式分别为
> $$
> f(x)=\frac1{|A|}\sum_{\chi\in\widehat A}\widehat f(\chi)\chi(x),
> \qquad
> \sum_{x\in A}|f(x)|^2=\frac1{|A|}\sum_{\chi\in\widehat A}|\widehat f(\chi)|^2.
> $$

<!-- local_character_orthogonality -->
> [!Theorem]
> **角色正交关系 Character Orthogonality Relations**：对 $x\in A$ 与 $\chi\in\widehat A$，
> $$
> \sum_{\chi\in\widehat A}\chi(x)=\begin{cases}|A|,&x=0,\\0,&x\ne0,\end{cases}
> \qquad
> \sum_{x\in A}\chi(x)=\begin{cases}|A|,&\chi=1,\\0,&\chi\ne1.\end{cases}
> $$
> 这些关系是有限 Fourier 反演和 Parseval 恒等式的基础。
>
> **证明思路**：若角色非平凡，选取使角色值不为 $1$ 的群元并平移求和，原和乘以非 $1$ 的常数后仍等于自身，故和为零。

<!-- local_finite_field_characters_definition -->
> [!Definition]
> **有限域的加法角色与乘法角色 Additive and Multiplicative Characters of a Finite Field**：设 $k=\mathbb{F}_q$。非平凡加法角色可取为
> $$
> \psi(x)=e^{2\pi i\operatorname{Tr}_{k/\mathbb{F}_p}(x)/p}.
> $$
> 乘法角色是群同态 $\chi:k^\times\to\mathbb{C}^\times$，通常将非平凡乘法角色延拓为 $\chi(0)=0$。

<!-- local_gauss_sum_definition -->
> [!Definition]
> **Gauss 和 Gauss Sum**：对非平凡乘法角色 $\chi$ 与非平凡加法角色 $\psi$，定义
> $$
> \tau(\chi,\psi)=\sum_{x\in k^\times}\chi(x)\psi(x).
> $$
> 它描述加法和乘法谐振之间的基本相互作用。

<!-- local_gauss_sum_magnitude -->
> [!Theorem]
> **Gauss 和的模 Gauss Sum Magnitude**：若 $\chi$ 非平凡，则
> $$
> |\tau(\chi,\psi)|=q^{1/2}.
> $$
>
> **证明思路**：展开 $|\tau(\chi,\psi)|^2$，以变量比值重参数化双重和；对非零差使用加法角色正交性，剩余项恰给出 $q$。

<!-- local_jacobi_sum_definition -->
> [!Definition]
> **Jacobi 和 Jacobi Sum**：对乘法角色 $\chi_1,\chi_2$，定义
> $$
> J(\chi_1,\chi_2)=\sum_{x\in k}\chi_1(x)\chi_2(1-x).
> $$
> 当 $\chi_1,\chi_2,\chi_1\chi_2$ 都非平凡时，
> $$
> J(\chi_1,\chi_2)=\frac{\tau(\chi_1,\psi)\tau(\chi_2,\psi)}{\tau(\chi_1\chi_2,\psi)},
> $$
> 从而 $|J(\chi_1,\chi_2)|=q^{1/2}$。
>
> **证明思路**：将两个 Gauss 和的乘积按 $x+y$ 分组；非零和的部分经缩放变成 Jacobi 和，零和部分由角色非平凡性消失。

<!-- local_weil_bound_note -->
> [!Theorem]
> **有限域指数和的平方根消去 Square-Root Cancellation for Finite-Field Exponential Sums**：在非退化条件下，有限域上多项式或有理函数的加法角色和通常具有 $O(q^{1/2})$ 级消去；精确常数由相位的次数、极点和几何退化性控制。Weil 界是这一现象的原型。
>
> **证明思路**：深层证明将指数和解释为 Frobenius 在 étale 上同调上的迹，再用特征值的权给出平方根界；低次数情形也可由角色和恒等式直接处理。

> **来源**：Rudolf Lidl and Harald Niederreiter, *Finite Fields*, Chapters 5--6；Nicholas M. Katz, *Gauss Sums, Kloosterman Sums, and Monodromy Groups*。
