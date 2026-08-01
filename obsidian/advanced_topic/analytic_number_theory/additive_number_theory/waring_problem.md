## Waring 问题

<!-- analytic_number_theory_waring_problem_definition -->
> [!Definition]
> **Waring 问题 Waring's Problem**：对整数 $k\geq2$，Waring 问题询问是否存在仅依赖于 $k$ 的整数 $s$，使每个正整数都能表示为至多 $s$ 个非负整数的 $k$ 次幂之和。

<!-- analytic_number_theory_waring_g_and_G_definition -->
> [!Definition]
> **$g(k)$ 与 $G(k)$ $g(k)$ and $G(k)$**：令 $g(k)$ 为使每个正整数均能表示为至多 $g(k)$ 个非负 $k$ 次幂之和的最小整数；令 $G(k)$ 为使每个充分大的正整数均能表示为至多 $G(k)$ 个非负 $k$ 次幂之和的最小整数。显然
>
> $$G(k)\leq g(k).$$

<!-- analytic_number_theory_hilbert_waring_theorem -->
> [!Theorem]
> **Hilbert-Waring 定理 Hilbert-Waring Theorem**：对每个整数 $k\geq2$，$g(k)$ 有限。换言之，每个正整数均可表示为个数仅依赖于 $k$ 的非负 $k$ 次幂之和。
>
> **证明思路**：Hilbert 的原始证明使用代数恒等式与归纳法。后续 Hardy-Littlewood 圆法给出了关于 $G(k)$ 的更有效估计，并揭示大整数表示问题的解析结构。

<!-- analytic_number_theory_waring_classical_values -->
> [!Theorem]
> **Waring 问题的经典结果 Classical Results on Waring's Problem**：有
>
> $$g(2)=4,\qquad g(3)=9,\qquad G(2)=4,\qquad G(3)=7.$$
>
> 其中 $g(2)=4$ 是四平方和定理；$g(3)=9$ 的下界由 $23$ 不能表示为少于九个正立方数之和给出。
>
> **证明思路**：二次情形来自 Lagrange 四平方和定理。三次情形的充分大整数表示由圆法的主弧分析与余弧指数和估计得到，再以有限计算处理例外范围。

<!-- analytic_number_theory_waring_circle_method_bound -->
> [!Theorem]
> **圆法对 $G(k)$ 的上界 Circle-Method Bounds for $G(k)$**：Hardy-Littlewood 圆法证明 $G(k)$ 对每个 $k$ 有限；现代 Vinogradov 中值定理给出随 $k$ 增长的有效上界，例如
>
> $$G(k)\leq k\bigl(\log k+\log\log k+2+o(1)\bigr)\qquad(k\to\infty).$$
>
> **证明思路**：以圆法将表示数写成 Weyl 和的积分。主弧给出正的奇异级数与奇异积分主项，余弧用高次矩估计控制；Vinogradov 中值定理提高了余弧界的效率。