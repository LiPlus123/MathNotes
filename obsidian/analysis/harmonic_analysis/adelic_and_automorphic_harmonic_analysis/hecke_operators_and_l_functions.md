# Hecke 算子与自守 $L$ 函数

## 双陪集、Satake 参数与 Whittaker 展开

<!-- adelic_hecke_operator_definition -->
> [!Definition]
> **Hecke 算子 Hecke Operator**：在有限位置 $v$，取紧开子群 $K_v\leq G(K_v)$。双陪集 $K_vgK_v$ 的示性函数属于局部 Hecke 代数，并通过右卷积作用在自守形式上：
> $$
> (T_{K_vgK_v}f)(x)=\int_{K_vgK_v}f(xh)\,dh.
> $$
> 当 $K_v$ 取极大紧开子群且 $v$ 未分歧时，该作用与球 Hecke 代数相容。

<!-- adelic_satake_parameter_definition -->
> [!Definition]
> **未分歧 Satake 参数 Unramified Satake Parameter**：设 $\pi_v$ 是 $G(K_v)$ 的未分歧不可约表示。Satake 同构将其球 Hecke 特征角色对应到 Langlands 对偶群 $\widehat G$ 中的半单共轭类 $s(\pi_v)$，称为 Satake 参数。

<!-- adelic_standard_l_factor_definition -->
> [!Definition]
> **标准局部与全局 $L$ 因子 Standard Local and Global $L$-Factors**：给定 $L$-群表示 $r:{}^LG\to\operatorname{GL}(V_r)$，在未分歧位置定义
> $$
> L_v(s,\pi_v,r)=\det\left(I-r(s(\pi_v))q_v^{-s}\right)^{-1}.
> $$
> 省略有限个分歧位置后，标准全局 $L$ 函数写为
> $$
> L^S(s,\pi,r)=\prod_{v\notin S}L_v(s,\pi_v,r).
> $$

<!-- adelic_euler_product_theorem -->
> [!Proposition]
> **Euler 乘积 Euler Product**：在绝对收敛的右半平面，适当归一化的 Hecke 本征自守表示的 $L$ 函数具有 Euler 乘积。分歧位置和 Archimedean 位置的局部因子须单独定义，并共同决定完成 $L$ 函数的函数方程与导子。
>
> **证明思路**：自守表示的受限张量积分解和 Whittaker 系数的乘法分解使全局积分或 Dirichlet 级数分解为局部积分，从而得到局部因子的乘积。

<!-- adelic_whittaker_model_definition -->
> [!Definition]
> **Whittaker 模型 Whittaker Model**：设 $G=\operatorname{GL}_n$，$N$ 是上三角幺幂子群，$\psi_N$ 是非退化角色。自守形式 $f$ 的 Whittaker 函数定义为
> $$
> W_f(g)=\int_{N(K)\backslash N(\mathbb A_K)}f(ng)\overline{\psi_N(n)}\,dn.
> $$
> 对泛型自守表示，Whittaker 模型将表示实现为满足 $W(ng)=\psi_N(n)W(g)$ 的函数空间。

<!-- adelic_fourier_whittaker_expansion -->
> [!Theorem]
> **Fourier-Whittaker 展开 Fourier-Whittaker Expansion**：对 $\operatorname{GL}_n$ 的尖点自守形式，沿上三角幺幂子群的 Fourier 展开由非退化 Whittaker 系数控制；在泛型情形中，自守形式可由其 Whittaker 函数重构。该展开将自守形式的 Fourier 系数与局部 Whittaker 模型连接起来。
>
> **证明思路**：逐层对幺幂商作 Fourier 展开。尖点条件消去退化常数项，剩余非退化 Fourier 系数经 Weyl 群操作组织为 Whittaker 项。

> **来源**：Daniel Bump, *Automorphic Forms and Representations*, Chapters 3--4；Hervé Jacquet and Robert Langlands, *Automorphic Forms on GL(2)*。
