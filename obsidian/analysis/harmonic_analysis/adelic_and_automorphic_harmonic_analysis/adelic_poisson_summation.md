# 阿代尔 Poisson 求和与 Tate 论文

## 全局 Fourier 分析与函数方程

<!-- adelic_bruhat_schwartz_definition -->
> [!Definition]
> **阿代尔 Bruhat-Schwartz 空间 Adelic Bruhat-Schwartz Space**：$\mathcal S(\mathbb A_K)$ 是各局部 Bruhat-Schwartz 空间的受限张量积。其典型纯张量形如 $\Phi=\bigotimes_v\Phi_v$，其中对几乎所有非 Archimedean $v$，
> $$
> \Phi_v=\mathbf{1}_{\mathcal O_v}.
> $$

<!-- adelic_global_fourier_transform -->
> [!Definition]
> **阿代尔 Fourier 变换 Adelic Fourier Transform**：固定 $\mathbb A_K/K$ 的非平凡连续加法角色 $\psi$，并取相对于它的自对偶 Haar 测度 $dx$。对 $\Phi\in\mathcal S(\mathbb A_K)$，定义
> $$
> \widehat\Phi(y)=\int_{\mathbb A_K}\Phi(x)\psi(-xy)\,dx.
> $$
> 对纯张量，该变换分解为各局部 Fourier 变换的张量积。

<!-- adelic_poisson_summation_theorem -->
> [!Theorem]
> **阿代尔 Poisson 求和公式 Adelic Poisson Summation Formula**：对 $\Phi\in\mathcal S(\mathbb A_K)$，
> $$
> \sum_{\gamma\in K}\Phi(\gamma)
> =\sum_{\gamma\in K}\widehat\Phi(\gamma).
> $$
> 级数绝对收敛；该公式建立在 $K\subset\mathbb A_K$ 离散且 $\mathbb A_K/K$ 紧的自对偶性上。
>
> **证明思路**：将 $\Phi$ 对 $K$ 周期化为紧商 $\mathbb A_K/K$ 上的函数，并对该紧 Abel 群作 Fourier 级数展开。湮没子 $K^\perp$ 在适当角色归一化下再次等于 $K$。

<!-- adelic_tate_global_zeta_definition -->
> [!Definition]
> **Tate 全局 zeta 积分 Tate Global Zeta Integral**：对 Hecke 角色 $\chi:K^\times\backslash\mathbb A_K^\times\to\mathbb{C}^\times$ 及 $\Phi\in\mathcal S(\mathbb A_K)$，定义
> $$
> Z(\Phi,\chi,s)=\int_{K^\times\backslash\mathbb A_K^\times}
> \Phi(x)\chi(x)|x|_{\mathbb A}^s\,d^\times x.
> $$
> 在收敛域中，若数据可分解，则该积分分解为局部 Tate 积分的 Euler 乘积。

<!-- adelic_tate_global_functional_equation -->
> [!Theorem]
> **Tate 全局函数方程 Tate Global Functional Equation**：Tate zeta 积分具有亚纯延拓，并满足将 $(\Phi,\chi,s)$ 与 $(\widehat\Phi,\chi^{-1},1-s)$ 联系的函数方程。其局部化给出各位置的局部 $\gamma$ 因子，乘积公式保证全局常数的一致性。
>
> **证明思路**：把 idelic 积分按模长分裂，并对阿代尔 Poisson 求和应用于加法群上的周期化函数。局部 Fourier 反演将对偶积分写为 $\widehat\Phi$ 的 zeta 积分，随后由 Euler 分解辨识局部因子。

<!-- adelic_global_l_function_note -->
> [!Proposition]
> **全局 $L$ 函数的 Euler 分解 Euler Factorization of Global $L$-Functions**：对几乎所有未分歧位置 $v$，局部数据由标准测试函数归一化，故
> $$
> L(s,\chi)=\prod_vL(s,\chi_v)
> $$
> 在右半平面收敛。Tate 论文由此给出 Hecke $L$ 函数的解析延拓与函数方程。

> **来源**：John Tate, "Fourier Analysis in Number Fields and Hecke's Zeta-Functions", in *Algebraic Number Theory*；Stephen Gelbart, *Automorphic Forms on Adele Groups*。
