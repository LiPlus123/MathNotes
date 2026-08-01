# Tate 局部 zeta 积分

## 局部因子与函数方程

<!-- local_multiplicative_haar_measure_definition -->
> [!Definition]
> **乘法 Haar 测度 Multiplicative Haar Measure**：设 $F$ 为局部域，$dx$ 是加法 Haar 测度。乘法群 $F^\times$ 上的 Haar 测度通常写为
> $$
> d^\times x=c_F\frac{dx}{|x|_F},
> $$
> 其中 $c_F>0$ 的归一化常数可选为使 $\operatorname{vol}(\mathcal{O}_F^\times)=1$。它对乘法平移不变。

<!-- local_tate_zeta_integral_definition -->
> [!Definition]
> **Tate 局部 zeta 积分 Tate Local Zeta Integral**：对 $\Phi\in\mathcal{S}(F)$、准角色 $\chi:F^\times\to\mathbb{C}^\times$ 及复数 $s$，在绝对收敛域定义
> $$
> Z(\Phi,\chi,s)=\int_{F^\times}\Phi(x)\chi(x)|x|_F^s\,d^\times x.
> $$
> 它由乘法角色和加法 Fourier 分析共同构成局部 $L$ 因子的积分表示。

<!-- local_tate_meromorphic_continuation -->
> [!Theorem]
> **Tate 积分的有理性与延拓 Rationality and Continuation of Tate Integrals**：当 $F$ 为非阿基米德局部域时，$Z(\Phi,\chi,s)$ 是变量 $q^{-s}$ 的有理函数，因而亚纯延拓至全平面。由所有此类积分生成的分式理想由局部因子 $L(s,\chi)$ 生成。
>
> **证明思路**：按赋值壳层 $F^\times=\bigsqcup_{m\in\mathbb{Z}}\varpi^m\mathcal{O}_F^\times$ 分解积分。Bruhat-Schwartz 函数局部常值且紧支撑，使所得级数的尾部为有限个几何级数。

<!-- local_local_l_factor_definition -->
> [!Definition]
> **局部 $L$ 因子 Local $L$-Factor**：对非阿基米德域上的准角色 $\chi$，若 $\chi$ 在 $\mathcal{O}_F^\times$ 上平凡，则
> $$
> L(s,\chi)=\left(1-\chi(\varpi)q^{-s}\right)^{-1};
> $$
> 若 $\chi$ 分歧，则 $L(s,\chi)=1$。该定义与 Tate 积分产生的分式理想一致。

<!-- local_tate_functional_equation -->
> [!Theorem]
> **Tate 局部函数方程 Tate Local Functional Equation**：固定非平凡加法角色 $\psi$ 与相应自对偶测度。存在唯一的有理亚纯函数 $\gamma(s,\chi,\psi)$，使
> $$
> Z(\widehat\Phi,\chi^{-1},1-s)
> =\gamma(s,\chi,\psi)Z(\Phi,\chi,s).
> $$
> 写作
> $$
> \gamma(s,\chi,\psi)
> =\epsilon(s,\chi,\psi)
> \frac{L(1-s,\chi^{-1})}{L(s,\chi)},
> $$
> 定义局部 $\epsilon$ 因子；其依赖于角色、加法角色和测度归一化。
>
> **证明思路**：先对适当测试函数用 Fourier 反演与变量替换证明函数方程，再以 Tate 积分的有理性延拓到全体 $s$；比较分式理想得到 $L$ 因子分解。

<!-- local_tate_global_origin_note -->
> [!Proposition]
> **局部函数方程的全局来源 Global Origin of the Local Functional Equation**：全局域上 Tate zeta 积分的函数方程由阿代尔 Poisson 求和导出，并分解为各个赋值处的局部 $\\gamma$ 因子。局部理论由此成为全局 $L$ 函数函数方程的基本组成。
>
> **证明思路**：对可分解的 Bruhat-Schwartz 函数，阿代尔 Fourier 变换和 Poisson 求和将全局积分换成其对偶积分；Euler 分解把全局等式逐处因式分解。

> **来源**：John Tate, "Fourier Analysis in Number Fields and Hecke's Zeta-Functions", in *Algebraic Number Theory*；Jean-Pierre Serre, *Local Fields*, Chapter VI。
