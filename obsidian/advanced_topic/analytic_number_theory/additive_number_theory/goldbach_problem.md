## Goldbach 猜想

<!-- analytic_number_theory_strong_goldbach_conjecture -->
> [!Definition]
> **强 Goldbach 猜想 Strong Goldbach Conjecture**：每个不小于 $4$ 的偶整数都可表示为两个素数之和。该猜想至今未被证明。

<!-- analytic_number_theory_weak_goldbach_theorem -->
> [!Theorem]
> **弱 Goldbach 定理 Weak Goldbach Theorem**：每个不小于 $7$ 的奇整数都可表示为三个奇素数之和。
>
> **证明思路**：Vinogradov 已证明充分大的奇整数满足该结论；Helfgott 结合圆法的精确估计与有限计算，处理了余下的有限范围。

<!-- analytic_number_theory_vinogradov_three_primes_theorem -->
> [!Theorem]
> **Vinogradov 三素数定理 Vinogradov's Three-Primes Theorem**：每个充分大的奇整数均可表示为三个素数之和。
>
> **证明思路**：对素数加权指数和使用圆法。主弧由算术级数中的素数分布给出主项，余弧由 Vinogradov 的指数和估计控制，从而证明表示数最终为正。

<!-- analytic_number_theory_chen_theorem -->
> [!Theorem]
> **Chen 定理 Chen's Theorem**：每个充分大的偶整数都可表示为一个素数与一个至多含两个素因子的正整数之和。
>
> **证明思路**：将加性表示问题转化为关于素数的筛问题，结合加权筛法与素数在算术级数中的平均分布结果，筛出至多两个素因子的第二加数。

> **注**：Chen 定理距离强 Goldbach 猜想只差将“至多两个素因子”加强为“素数”，但这一提升受筛法 parity problem 的限制。