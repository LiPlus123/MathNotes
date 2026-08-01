## 误差项

<!-- analytic_number_theory_pnt_classical_error_term -->
> [!Theorem]
> **素数定理的经典误差项 Classical Error Term in the Prime Number Theorem**：存在常数 $c>0$，使得
>
> $$\psi(x)=x+O\left(x\exp\left(-c\sqrt{\log x}\right)\right).$$
>
> 因而
>
> $$\pi(x)=\operatorname{li}(x)+O\left(\frac{x\exp\left(-c\sqrt{\log x}\right)}{\log x}\right).$$
>
> **证明思路**：由 zeta 函数的经典零点无空隙区，对 $-\zeta'/\zeta$ 使用 Perron 公式并移动积分路径；选取合适截断高度后平衡各部分误差。

<!-- analytic_number_theory_pnt_error_term_zero_free_region_relation -->
> [!Theorem]
> **误差项与零点无空隙区 Error Terms and Zero-Free Regions**：若 zeta 函数在区域
>
> $$\operatorname{Re}(s)\geq1-\eta(|\operatorname{Im}(s)|)$$
>
> 内无零，并且其对数导数在该区域有适当增长估计，则 Perron 公式允许将积分路径左移，从而给出 $\psi(x)-x$ 的定量误差。更宽的零点无空隙区通常导出更强的误差项。
>
> **证明思路**：显式公式或 Perron 积分中，零点决定可移动路径的位置；新路径越靠左，因子 $x^s$ 衰减越强。

<!-- analytic_number_theory_riemann_hypothesis_pnt_error_term -->
> [!Theorem]
> **Riemann 猜想下的素数定理误差项 Prime Number Theorem Error Term under the Riemann Hypothesis**：Riemann 猜想蕴含
>
> $$\psi(x)=x+O\left(\sqrt{x}(\log x)^2\right)$$
>
> 以及
>
> $$\pi(x)=\operatorname{li}(x)+O\left(\sqrt{x}\log x\right).$$
>
> **证明思路**：在显式公式中，所有非平凡零点的实部均为 $1/2$；估计零点和并处理截断误差，得到第一个估计。再由部分求和将其转化为 $\pi(x)$ 的误差项。

> **注**：Riemann 猜想本身尚未证明，因此本小节最后一个定理是条件性结论。