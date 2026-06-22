## 无限连分数

<!-- infinite_cf_definition -->
> [!Definition]
> **无限连分数 Infinite Continued Fraction**：设 $a_0 \in \mathbb{Z}$，$a_i \in \mathbb{Z}^+$（$i \geq 1$），称极限
> $$[a_0; a_1, a_2, \ldots] = \lim_{n \to \infty} [a_0; a_1, \ldots, a_n]$$
> 为**无限（简单）连分数**，其中 $[a_0; a_1, \ldots, a_n] = p_n/q_n$ 为第 $n$ 个渐近分数。

<!-- infinite_cf_convergence -->
> [!Theorem]
> **无限连分数的收敛性 Convergence of Infinite Continued Fractions**：无限简单连分数 $[a_0; a_1, a_2, \ldots]$ 的渐近分数序列 $\{p_n/q_n\}$ 收敛，且其极限为无理数。
>
> **证明思路**：
> - 由渐近分数的行列式恒等式 $p_n q_{n-1} - p_{n-1} q_n = (-1)^{n-1}$，奇数项渐近分数单调递减且有下界（被偶数项序列界定），偶数项渐近分数单调递增且有上界，故两子列各自收敛。
> - 由 $|p_n/q_n - p_{n-1}/q_{n-1}| = 1/(q_n q_{n-1}) \to 0$（因 $q_n \geq n$，递增趋于无穷），两子列极限相同，故整体收敛。
> - 极限为无理数：若极限 $\alpha = p/q$ 为有理数，则有限连分数展开有限步终止，矛盾。

<!-- irrational_cf_expansion -->
> [!Theorem]
> **无理数的连分数展开 Continued Fraction Expansion of Irrational Numbers**：每个无理数 $\alpha$ 有唯一的无限简单连分数展开 $\alpha = [a_0; a_1, a_2, \ldots]$，其中
> $$a_0 = \lfloor \alpha \rfloor, \quad \alpha_1 = \frac{1}{\alpha - a_0}, \quad a_k = \lfloor \alpha_k \rfloor, \quad \alpha_{k+1} = \frac{1}{\alpha_k - a_k}$$
> 称 $\alpha_k$ 为**完全商**（complete quotients）。
>
> **证明思路**：由 $\alpha$ 为无理数，每步余项 $\alpha_k - a_k \neq 0$，故过程无限延续，构造出唯一的无限连分数展开。反过来，无限简单连分数之值均为无理数，从而建立了双射。

<!-- best_rational_approximation -->
> [!Theorem]
> **渐近分数的最佳有理逼近性质 Best Rational Approximation Property of Convergents**：设 $\alpha$ 为无理数，$p_k/q_k$ 为其连分数展开的第 $k$ 个渐近分数，则：
> 1. **单侧逼近估计**：
> $$\frac{1}{q_k(q_{k+1}+q_k)} < \left|\alpha - \frac{p_k}{q_k}\right| < \frac{1}{q_k q_{k+1}}$$
> 2. **最佳逼近性**：若有理数 $p/q$ 满足 $0 < q \leq q_k$，则
> $$\left|\alpha - \frac{p_k}{q_k}\right| \leq \left|\alpha - \frac{p}{q}\right|$$
> 等号仅在 $p/q = p_k/q_k$ 时成立；对分母不超过 $q_k$ 的所有分数，$p_k/q_k$ 是最佳逼近。
> 3. **狄利克雷逼近**：对任意无理数 $\alpha$，存在无穷多有理数 $p/q$ 满足
> $$\left|\alpha - \frac{p}{q}\right| < \frac{1}{q^2}$$
> 且这些分数均出现在 $\alpha$ 的连分数渐近分数中。
>
> **证明思路**：性质 1 利用相邻渐近分数之差的公式 $\alpha - p_k/q_k = (-1)^k/[q_k(q_{k+1} + \theta q_k)]$（$0 < \theta < 1$）推导；性质 2 通过假设存在更好逼近导致矛盾；性质 3 由渐近分数的递推关系和上界估计直接得到。

<!-- hurwitz_theorem -->
> [!Theorem]
> **赫尔维茨定理 Hurwitz's Theorem**：对任意无理数 $\alpha$，存在无穷多有理数 $p/q$ 满足
> $$\left|\alpha - \frac{p}{q}\right| < \frac{1}{\sqrt{5}\, q^2}$$
> 且常数 $\sqrt{5}$ 不可改进（$\alpha = \varphi = (1+\sqrt{5})/2$ 时取等的极限情形）。
>
> **证明思路**：在三个相邻渐近分数 $p_{k-1}/q_{k-1}$，$p_k/q_k$，$p_{k+1}/q_{k+1}$ 中，至少有一个满足上述不等式，利用部分商与渐近分数分母的关系以及 $a_{k+1} \geq 1$ 进行估计。
