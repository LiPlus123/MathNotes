# 局部域加法群上的 Fourier 分析

## 非阿基米德结构与自对偶测度

<!-- local_local_field_definition -->
> [!Definition]
> **非阿基米德局部域 Non-Archimedean Local Field**：非阿基米德局部域 $F$ 是带有非平凡离散赋值 $v:F^\times\to\mathbb{Z}$ 的完备域，且其剩余域有限。取一致化元 $\varpi$ 使 $v(\varpi)=1$，并记
> $$
> \mathcal{O}_F=\{x\in F:v(x)\geq0\},
> \qquad \mathfrak p_F=\{x\in F:v(x)>0\},
> \qquad k_F=\mathcal{O}_F/\mathfrak p_F.
> $$
> 令 $q=|k_F|$，归一化绝对值为 $|x|_F=q^{-v(x)}$。

<!-- local_additive_character_definition -->
> [!Definition]
> **加法角色与导子 Additive Character and Conductor**：非平凡连续加法角色是同态 $\psi:F\to\mathbb{C}^\times$。存在唯一整数 $n(\psi)$，使 $\psi$ 在 $\mathfrak p_F^{-n(\psi)}$ 上平凡而在 $\mathfrak p_F^{-n(\psi)-1}$ 上不平凡；该整数称为 $\psi$ 的导子指数。

<!-- local_bruhat_schwartz_definition -->
> [!Definition]
> **Bruhat-Schwartz 空间 Bruhat-Schwartz Space**：在非阿基米德局部域上，$\mathcal{S}(F)$ 定义为局部常值且紧支撑的复值函数空间。对 Archimedean 局部域，$\mathcal{S}(F)$ 为通常的 Schwartz 空间。

<!-- local_self_dual_haar_measure -->
> [!Theorem]
> **自对偶 Haar 测度 Self-Dual Haar Measure**：对每个非平凡加法角色 $\psi$，$F$ 的加法群上存在唯一 Haar 测度 $dx$，使 Fourier 变换
> $$
> \widehat f(y)=\int_Ff(x)\psi(-xy)\,dx
> $$
> 对 $\mathcal{S}(F)$ 满足
> $$
> \widehat{\widehat f}(x)=f(-x).
> $$
> 此测度称为相对于 $\psi$ 的自对偶 Haar 测度。
>
> **证明思路**：任意 Haar 测度仅差正的比例常数；调整该常数使 Fourier 平方的比例因子为 $1$，再由局部常值紧支撑函数的 Fourier 反演验证结论。

<!-- local_fourier_inversion_plancherel -->
> [!Theorem]
> **局部 Fourier 反演与 Plancherel Local Fourier Inversion and Plancherel**：取自对偶测度时，对 $f\in\mathcal{S}(F)$，
> $$
> f(x)=\int_F\widehat f(y)\psi(xy)\,dy,
> \qquad
> \int_F|f(x)|^2\,dx=\int_F|\widehat f(y)|^2\,dy.
> $$
> Fourier 变换因此延拓为 $L^2(F)$ 上的酉算子。
>
> **证明思路**：先对特征函数 $\mathbf{1}_{a+\mathfrak p_F^r}$ 计算 Fourier 变换，利用角色正交性得到反演；线性组合稠密性和极化恒等式给出 Plancherel。

<!-- local_compact_open_poisson_formula -->
> [!Proposition]
> **紧开子群商上的 Poisson 公式 Poisson Formula on Compact-Open Quotients**：若 $U\subseteq F$ 是紧开加法子群，$U^\perp$ 是其关于 $\psi$ 的湮没子，则对 $U$-周期且在有限商 $F/U$ 上有有限支撑的函数 $f$，有限 Fourier 展开由 $F/U$ 的角色正交关系给出。特别地，
> $$
> \int_U\psi(xy)\,dx
> =\operatorname{vol}(U)\mathbf{1}_{U^\perp}(y).
> $$
> 该恒等式是局部 Fourier 反演的基本计算；全局阿代尔 Poisson 求和将来自不同赋值的局部结构组合起来。
>
> **证明思路**：若 $y\in U^\perp$，被积函数恒为 $1$。否则选取 $u\in U$ 使 $\psi(uy)\ne1$，对积分作平移 $x\mapsto x+u$，原积分乘以非 $1$ 常数仍不变，故积分为零。

> **来源**：André Weil, *Basic Number Theory*, Chapters II, VII；Jean-Pierre Serre, *Local Fields*, Chapter II。
