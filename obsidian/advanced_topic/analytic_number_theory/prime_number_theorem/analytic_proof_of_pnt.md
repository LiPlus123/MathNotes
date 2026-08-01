## 素数定理的解析证明

<!-- analytic_number_theory_zeta_logarithmic_derivative_pole -->
> [!Theorem]
> **zeta 对数导数的极点 Logarithmic-Derivative Pole of zeta**：函数
>
> $$-\frac{\zeta'(s)}{\zeta(s)}-\frac{1}{s-1}$$
>
> 在闭半平面 $\operatorname{Re}(s)\geq1$ 上连续，除 $s=1$ 的主部已被减去外无奇点。
>
> **证明思路**：$\zeta(s)$ 在 $s=1$ 有留数为 $1$ 的单极点，故其对数导数的主部为 $-1/(s-1)$。zeta 函数在 $\operatorname{Re}(s)=1$ 无零，排除了其他由 $1/\zeta(s)$ 产生的奇点。

<!-- analytic_number_theory_wiener_ikehara_tauberian_theorem -->
> [!Theorem]
> **Wiener-Ikehara Tauber 定理 Wiener-Ikehara Tauberian Theorem**：设 $a_n\geq0$，且
>
> $$F(s)=\sum_{n=1}^{\infty}\frac{a_n}{n^s}$$
>
> 在 $\operatorname{Re}(s)>1$ 收敛。若 $F(s)-A/(s-1)$ 连续延拓到 $\operatorname{Re}(s)\geq1$，则
>
> $$\sum_{n\leq x}a_n\sim Ax.$$
>
> **证明思路**：将 Dirichlet 级数经变量替换转化为 Laplace-Stieltjes 变换；Wiener 的近似定理控制边界行为，再由 Tauber 型论证恢复非负系数的部分和渐近。

<!-- analytic_number_theory_analytic_prime_number_theorem -->
> [!Theorem]
> **素数定理的解析证明 Analytic Proof of the Prime Number Theorem**：由 zeta 函数在 $\operatorname{Re}(s)=1$ 上无零，可推出
>
> $$\psi(x)\sim x,$$
>
> 从而得到 $\pi(x)\sim x/\log x$。
>
> **证明思路**：对 $a_n=\Lambda(n)$ 应用 Wiener-Ikehara 定理。前一结果表明其 Dirichlet 级数 $-\zeta'/\zeta$ 满足定理所需的边界延拓条件，且 $\Lambda(n)\geq0$；最后使用三种等价形式。

<!-- analytic_number_theory_newman_pnt_proof -->
> [!Theorem]
> **Newman 的素数定理简化证明 Newman's Simplified Proof of the Prime Number Theorem**：Newman 的方法直接从 $\zeta(s)$ 在单位实部直线无零出发，利用复分析积分与一个基本的 Tauber 型引理证明 $\psi(x)=x+o(x)$，避免使用 Wiener-Ikehara 定理的完整一般形式。
>
> **证明思路**：将 $\psi(x)-x$ 的适当归一化积分表示为边界积分；通过包含 $1/\zeta(s)$ 的辅助函数消除极点，并用有限高度矩形上的估计使边界积分趋于零。