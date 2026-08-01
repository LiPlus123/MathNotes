# 直积分与一般 Plancherel 理论

## 非紧群的连续谱分解

<!-- abstract_unitary_dual_definition -->
> [!Definition]
> **单位对偶 Unitary Dual**：局部紧群 $G$ 的单位对偶 $\widehat G$ 是所有不可约强连续酉表示的酉等价类集合。它携带 Fell 拓扑或 Borel 结构；非交换或非紧情形中，$\widehat G$ 通常不是可由单纯点集参数完全描述的良好空间。

<!-- abstract_direct_integral_definition -->
> [!Definition]
> **Hilbert 空间直积分 Direct Integral of Hilbert Spaces**：给定测度空间 $(X,\mu)$ 和可测 Hilbert 空间场 $\{\mathcal{H}_x\}_{x\in X}$，其直积分
> $$
> \int_X^\oplus\mathcal{H}_x\,d\mu(x)
> $$
> 由可测截面 $v(x)$ 构成，满足 $\int_X\|v(x)\|^2\,d\mu(x)<+\infty$，并以逐点内积积分定义 Hilbert 结构。

<!-- abstract_direct_integral_representation -->
> [!Definition]
> **表示的直积分 Direct Integral of Representations**：若 $\pi_x$ 是可测表示场，则
> $$
> \pi=\int_X^\oplus\pi_x\,d\mu(x)
> $$
> 表示由 $(\pi(g)v)(x)=\pi_x(g)v(x)$ 定义。它将连续谱表示为不可约表示的可测叠加，而非离散直和。

<!-- abstract_type_i_group_definition -->
> [!Definition]
> **类型 I 群 Type I Group**：局部紧群称为类型 I 群，若其所有因子表示生成的 von Neumann 代数均为类型 I。对第二可数类型 I 群，酉表示具有由单位对偶参数化的良好唯一性直积分分解；此条件是一般 Plancherel 理论可操作的核心假设。

<!-- abstract_general_plancherel_theorem -->
> [!Theorem]
> **一般 Plancherel 定理 General Plancherel Theorem**：对适当的第二可数、幺模、类型 I 局部紧群 $G$，存在单位对偶上的 Plancherel 测度 $d\mu_{\mathrm{Pl}}(\pi)$，使左正则表示可分解为不可约表示的直积分，并存在相应的算子值 Fourier 变换，将 $L^2(G)$ 等距分解为 Hilbert-Schmidt 算子场的直积分。具体的形式及形式维数因子依赖于群和测度归一化。
>
> **证明思路**：将左正则表示及其生成的 von Neumann 代数作中心分解。类型 I 条件保证分量可由不可约表示参数化；由表示论的 Parseval 恒等式确定 Plancherel 测度和等距变换。

<!-- abstract_regular_representation_spectrum -->
> [!Proposition]
> **正则表示与谱 Regular Representation and Spectrum**：紧群中正则表示按 Peter--Weyl 定理离散分解；非紧 Abel 群中它由对偶群上的乘法表示连续分解；半单 Lie 群还可能同时具有离散谱和连续谱。故一般 Plancherel 理论是这些谱现象的统一语言。

> **来源**：Jacques Dixmier, *C*-Algebras*；George W. Mackey, *The Theory of Unitary Group Representations*；Gerald B. Folland, *A Course in Abstract Harmonic Analysis*, Chapter 7。
