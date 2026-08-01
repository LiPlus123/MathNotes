# 模形式与自守形式的谱理论

## 模性、Hecke 算子与谱分解

<!-- number_theory_theta_function_definition -->
> [!Definition]
> **Jacobi theta 函数 Jacobi Theta Function**：对上半平面 $\mathfrak{H}$ 中的 $\tau$，定义
> $$
> \vartheta(\tau)=\sum_{n\in\mathbb{Z}}e^{\pi i n^2\tau}.
> $$
> Poisson 求和给出其在模变换 $\tau\mapsto-1/\tau$ 下的变换律，是半整数权模形式的基本来源。

<!-- number_theory_eisenstein_fourier_expansion -->
> [!Theorem]
> **Eisenstein 级数的 Fourier 展开 Fourier Expansion of Eisenstein Series**：对 $\operatorname{SL}_2(\mathbb{Z})$ 的非全纯 Eisenstein 级数 $E(z,s)$，在 $\operatorname{Re}s>1$ 初始定义域有 Fourier 展开
> $$
> E(z,s)=y^s+\varphi(s)y^{1-s}
> +\sum_{n\ne0}c_n(y,s)e^{2\pi i nx}.
> $$
> 其中 $c_n(y,s)$ 由除数和与 $K$-Bessel 函数给出，常数项系数 $\varphi(s)$ 满足函数方程。
>
> **证明思路**：沿平移子群展开并用 Poisson 求和处理非零格点；Mellin 变换识别常数项中的 zeta 因子。

<!-- number_theory_hecke_operator_definition -->
> [!Definition]
> **Hecke 算子 Hecke Operator**：对权 $k$、水平 $1$ 的模形式，$n$ 阶 Hecke 算子可写为
> $$
> (T_nf)(z)=n^{k-1}\sum_{ad=n}\sum_{0\leq b<d}
> d^{-k}f\left(\frac{az+b}{d}\right).
> $$
> 在适当归一化下，$T_n$ 对 Petersson 内积自伴，且满足 Hecke 乘法关系。

<!-- number_theory_maass_spectral_decomposition -->
> [!Theorem]
> **模曲面上的谱分解 Spectral Decomposition on the Modular Surface**：在 $L^2(\operatorname{SL}_2(\mathbb{Z})\backslash\mathfrak{H})$ 的适当分解中，存在常数函数、Maass 尖点形式给出的离散谱，以及 Eisenstein 级数积分给出的连续谱。双曲 Laplace 算子与所有 Hecke 算子可同时在该谱框架中研究。
>
> **证明思路**：利用自伴 Laplace 算子的谱定理和 Eisenstein 级数的散射理论；尖点子空间与常数项部分分离，后者经 Eisenstein 变换对角化。

<!-- number_theory_trace_formula_concept -->
> [!Concept]
> **谱方法 Spectral Methods**：Petersson 公式与 Kuznetsov 公式将 Hecke Fourier 系数的谱平均与 Kloosterman 和的几何平均联系起来，是解析数论中在谱侧和算术侧之间传递估计的基本机制。

> **来源**：Henryk Iwaniec, *Spectral Methods of Automorphic Forms*；Henryk Iwaniec and Emmanuel Kowalski, *Analytic Number Theory*。
