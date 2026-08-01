## 函数方程

<!-- analytic_number_theory_jacobi_theta_transformation_theorem -->
> [!Theorem]
> **Jacobi theta 变换公式 Jacobi Theta Transformation Formula**：对任意 $t>0$，Jacobi theta 函数
>
> $$\vartheta(t)=\sum_{n\in\mathbb{Z}}e^{-\pi n^2t}$$
>
> 满足
>
> $$\vartheta(t)=t^{-1/2}\vartheta\left(\frac1t\right).$$
>
> **证明思路**：对高斯函数 $e^{-\pi t x^2}$ 应用 Poisson 求和公式；其 Fourier 变换为 $t^{-1/2}e^{-\pi \xi^2/t}$。

<!-- analytic_number_theory_riemann_zeta_functional_equation -->
> [!Theorem]
> **Riemann 函数方程 Riemann Functional Equation**：Riemann zeta 函数满足
>
> $$\pi^{-s/2}\Gamma\left(\frac{s}{2}\right)\zeta(s)=\pi^{-(1-s)/2}\Gamma\left(\frac{1-s}{2}\right)\zeta(1-s).$$
>
> 等价地，完成 zeta 函数
>
> $$\xi(s)=\frac12s(s-1)\pi^{-s/2}\Gamma\left(\frac{s}{2}\right)\zeta(s)$$
>
> 是整函数，并满足 $\xi(s)=\xi(1-s)$。
>
> **证明思路**：对 $\vartheta(t)-1$ 作 Mellin 变换，并按区间 $(0,1)$ 与 $(1,\infty)$ 分开积分；theta 变换把前一部分改写为 $1-s$ 的对应积分，随后由解析延拓得到结论。

<!-- analytic_number_theory_zeta_zero_symmetry_corollary -->
> [!Corollary]
> **zeta 零点的对称性 Symmetry of Zeta Zeros**：若 $\rho$ 是 $\zeta$ 的非平凡零点，则 $\overline{\rho}$、$1-\rho$ 和 $1-\overline{\rho}$ 也是非平凡零点，且具有相同重数。
>
> **证明思路**：由 Dirichlet 级数系数为实数可得 $\zeta(\overline{s})=\overline{\zeta(s)}$；再利用函数方程的对称性。