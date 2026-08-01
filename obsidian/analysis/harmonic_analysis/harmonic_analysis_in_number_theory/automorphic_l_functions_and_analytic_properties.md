# 自守 $L$ 函数的解析性质

## 积分表示、函数方程与中心值

<!-- number_theory_automorphic_l_function_definition -->
> [!Definition]
> **自守 $L$ 函数 Automorphic $L$-Function**：对不可约自守表示 $\pi=\bigotimes'_v\pi_v$ 及有限维对偶群表示 $r$，未分歧处的 Satake 参数定义局部因子 $L(s,\pi_v,r)$；在收敛半平面内
> $$
> L(s,\pi,r)=\prod_vL(s,\pi_v,r).
> $$
> 完备 $L$ 函数还应纳入 Archimedean 因子和适当的导数或 conductor 归一化。

<!-- number_theory_tate_functional_equation -->
> [!Theorem]
> **Tate 型函数方程 Tate-Type Functional Equation**：对全局域上的 Hecke 角色 $\chi$，Tate zeta 积分经 Fourier 变换满足函数方程，进而给出
> $$
> \Lambda(s,\chi)=\epsilon(s,\chi,\psi)\Lambda(1-s,\chi^{-1}).
> $$
> 其中 $\Lambda$ 包含局部无穷处因子，$\epsilon$ 为整体 epsilon 因子。
>
> **证明思路**：在阿代尔 Bruhat-Schwartz 空间上使用 Poisson 求和，将 zeta 积分中的测试函数替换为 Fourier 变换，并分解为局部函数方程。

<!-- number_theory_rankin_selberg_integral -->
> [!Definition]
> **Rankin--Selberg 积分 Rankin--Selberg Integral**：对适当的自守形式或表示，Rankin--Selberg 方法构造一个由自守函数、Eisenstein 级数或 Whittaker 函数配对所得的积分，使其 Euler 分解恢复 $L(s,\pi\times\widetilde\pi')$ 或相关 $L$ 函数。

<!-- number_theory_convexity_subconvexity_concept -->
> [!Concept]
> **凸性界与子凸性界 Convexity and Subconvexity Bounds**：函数方程与 Phragmen--Lindelof 原理通常给出中心线上的凸性界；任何关于解析 conductor 的非平凡幂次改进称为子凸性界。它依赖于和估计、谱方法、放大法或矩方法等额外算术输入。

<!-- number_theory_low_lying_zeros_concept -->
> [!Concept]
> **低零点与中心值 Low-Lying Zeros and Central Values**：$L$ 函数族的低零点统计可通过显式公式转化为素数或 Hecke 系数的加权和。中心值矩与非消失问题则由近似函数方程、谱平均和随机矩阵模型的比较推动。

> **来源**：John Tate, "Fourier Analysis in Number Fields and Hecke's Zeta-Functions"；Hervé Jacquet, Ilja Piatetski-Shapiro, and Joseph Shalika, "Rankin-Selberg Convolutions"。
