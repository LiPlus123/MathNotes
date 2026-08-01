# Eisenstein 级数与连续谱

## 抛物诱导、常数项与互换算子

<!-- adelic_parabolic_subgroup_definition -->
> [!Definition]
> **抛物子群 Parabolic Subgroup**：约化群 $G$ 的 $K$-有理子群 $P$ 称为抛物子群，若其商 $G/P$ 是射影簇。取 Levi 分解
> $$
> P=MN,
> $$
> 其中 $M$ 为 Levi 因子，$N$ 为幂零根基。抛物子群组织自守形式的常数项与连续谱。

<!-- adelic_eisenstein_series_definition -->
> [!Definition]
> **Eisenstein 级数 Eisenstein Series**：设 $f_s$ 是从 $P(\mathbb A_K)$ 到 $G(\mathbb A_K)$ 的归一化诱导表示中的截面。在绝对收敛区域定义
> $$
> E(g,f_s)=\sum_{\gamma\in P(K)\backslash G(K)}f_s(\gamma g).
> $$
> 其解析延拓和函数方程由互换算子控制。

<!-- adelic_eisenstein_constant_term -->
> [!Theorem]
> **Eisenstein 级数的常数项 Constant Term of an Eisenstein Series**：沿 $P$ 取常数项，
> $$
> E_P(g,f_s)=\int_{N(K)\backslash N(\mathbb A_K)}E(ng,f_s)\,dn,
> $$
> 可表达为有限个由 Weyl 群指标的互换算子之和。在极小抛物子群情形，形式上为
> $$
> E_P(g,f_s)=\sum_{w\in W}M(w,s)f_s(g).
> $$
>
> **证明思路**：按双陪集 $P(K)\backslash G(K)/P(K)$ 展开求和；Bruhat 分解将双陪集以 Weyl 群参数化，逐项积分即产生互换算子。

<!-- adelic_intertwining_operator_definition -->
> [!Definition]
> **互换算子 Intertwining Operator**：对 Weyl 群元 $w$，标准互换算子在收敛区域由沿适当幂零子群的积分定义，形式上写为
> $$
> (M(w,s)f_s)(g)=\int_{N_w(\mathbb A_K)}f_s(w^{-1}ng)\,dn.
> $$
> 它亚纯延拓，并给出 Eisenstein 级数的函数方程。

<!-- adelic_automorphic_spectrum_decomposition -->
> [!Theorem]
> **自守谱的离散与连续部分 Discrete and Continuous Automorphic Spectrum**：适当中心角色下，$L^2\bigl(G(K)\backslash G(\mathbb A_K)\bigr)$ 分为离散谱和由 Eisenstein 级数诱导产生的连续谱。残数 Eisenstein 级数可贡献离散谱中的残数部分，而尖点谱构成离散谱的核心部分。
>
> **证明思路**：约化理论提供商空间的截断与增长控制；Eisenstein 级数的常数项和互换算子说明连续谱参数，谱分解则由 Langlands 的 Eisenstein 理论完成。

> **来源**：Robert P. Langlands, *On the Functional Equations Satisfied by Eisenstein Series*；Stephen Gelbart, *Automorphic Forms on Adele Groups*。
