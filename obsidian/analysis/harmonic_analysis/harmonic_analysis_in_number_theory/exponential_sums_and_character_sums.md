# 指数和与特征和

## 有限域上的振荡与平方根相消

<!-- number_theory_complete_exponential_sum_definition -->
> [!Definition]
> **完全指数和 Complete Exponential Sum**：对整数 $q\geq1$ 和函数 $f$，模 $q$ 的完全指数和为
> $$
> S(f;q)=\sum_{x\bmod q}e^{2\pi i f(x)/q}.
> $$
> 当 $q$ 为素数或素数幂时，可将它视为有限域上的加法角色和。

<!-- number_theory_gauss_jacobi_sum_definition -->
> [!Definition]
> **Gauss 和与 Jacobi 和 Gauss and Jacobi Sums**：对素数 $p$、非平凡乘法角色 $\chi$ 和非平凡加法角色 $\psi$，
> $$
> \tau(\chi,\psi)=\sum_{x\in\mathbb{F}_p^\times}\chi(x)\psi(x).
> $$
> 对乘法角色 $\chi_1,\chi_2$，Jacobi 和为
> $$
> J(\chi_1,\chi_2)=\sum_{x\in\mathbb{F}_p}\chi_1(x)\chi_2(1-x).
> $$
> 两者由角色的 Fourier 变换及乘法卷积联系。

<!-- number_theory_gauss_sum_absolute_value -->
> [!Theorem]
> **Gauss 和绝对值 Gauss-Sum Absolute Value**：若 $\chi$ 和 $\psi$ 均非平凡，则
> $$
> |\tau(\chi,\psi)|=p^{1/2}.
> $$
>
> **证明思路**：展开模平方，以变量替换将其化为加法角色的正交关系；非平凡乘法角色使对角外项相消。

<!-- number_theory_kloosterman_weil_bound -->
> [!Theorem]
> **Kloosterman 和的 Weil 界 Weil Bound for Kloosterman Sums**：对 $(a,p)=1$，
> $$
> \operatorname{Kl}_2(a;p)=\sum_{x\in\mathbb{F}_p^\times}
> e^{2\pi i(x+ax^{-1})/p}
> $$
> 满足
> $$
> |\operatorname{Kl}_2(a;p)|\leq2p^{1/2}.
> $$
>
> **证明思路**：将和实现为 Kloosterman 层的 Frobenius 迹；权为 $1$ 的纯性给出特征值绝对值，而秩给出常数 $2$。

<!-- number_theory_multidimensional_kloosterman_concept -->
> [!Concept]
> **高维 Kloosterman 和与谱理论 Higher Kloosterman Sums and Spectral Theory**：在模形式的 Kuznetsov 型迹公式和高阶 Voronoi 求和中，Kloosterman 和作为几何侧的振荡核出现。其平方根界与谱侧的 Fourier 系数估计共同支撑许多算术平均结果。

> **来源**：Henryk Iwaniec and Emmanuel Kowalski, *Analytic Number Theory*；Nicholas M. Katz, *Gauss Sums, Kloosterman Sums, and Monodromy Groups*。
