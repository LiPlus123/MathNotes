## 循环连分数

<!-- periodic_cf_definition -->
> [!Definition]
> **循环连分数 Periodic Continued Fraction**：若无限连分数 $[a_0; a_1, a_2, \ldots]$ 的部分商序列从某项起周期性重复，即存在 $m \geq 0$ 和 $\ell \geq 1$ 使得对所有 $k \geq m$ 有 $a_{k+\ell} = a_k$，则称其为**循环连分数**，记作
> $$[a_0; a_1, \ldots, a_{m-1}, \overline{a_m, a_{m+1}, \ldots, a_{m+\ell-1}}]$$
> 其中上划线部分为**循环节**，$\ell$ 为**最小正周期**。若 $m = 0$（从第一项起即循环），则称为**纯循环连分数**。

<!-- quadratic_irrational_definition -->
> [!Definition]
> **二次无理数 Quadratic Irrational**：形如
> $$\alpha = \frac{a + b\sqrt{D}}{c}$$
> 的数称为**二次无理数**，其中 $a, b, c \in \mathbb{Z}$，$b \neq 0$，$c \neq 0$，$D \in \mathbb{Z}^+$ 且 $D$ 不是完全平方数。二次无理数的**共轭**定义为 $\alpha' = (a - b\sqrt{D})/c$。

<!-- lagrange_theorem_cf -->
> [!Theorem]
> **拉格朗日定理（连分数）Lagrange's Theorem on Continued Fractions**：实数 $\alpha$ 的连分数展开是循环连分数，当且仅当 $\alpha$ 是二次无理数。
>
> **证明思路**：
> - **充分性**：设 $\alpha$ 为二次无理数，其完全商 $\alpha_k = (P_k + \sqrt{D})/Q_k$（$P_k, Q_k \in \mathbb{Z}$，可验证 $Q_k \mid (D - P_k^2)$）。由于 $P_k, Q_k$ 的取值范围有界，故完全商序列必有重复，从而连分数展开循环。
> - **必要性**：循环连分数满足以某个完全商 $\alpha_k$ 为根的二次方程（由循环节方程反解），故 $\alpha_k$ 是二次无理数，进而 $\alpha = [a_0; a_1, \ldots, a_{k-1}, \alpha_k]$ 也是二次无理数。

<!-- purely_periodic_cf_theorem -->
> [!Theorem]
> **纯循环连分数定理 Purely Periodic Continued Fractions**：二次无理数 $\alpha > 1$ 的连分数展开是纯循环的，当且仅当 $-1 < \alpha' < 0$（其中 $\alpha'$ 为 $\alpha$ 的共轭），此时称 $\alpha$ 为**约化二次无理数**。
>
> **证明思路**：
> - 若 $\alpha = [\overline{a_0; a_1, \ldots, a_{\ell-1}}]$ 是纯循环的，则 $\alpha$ 满足一个整系数二次方程，另一根即为 $-1/\alpha_{\ell-1}' \in (-1, 0)$，而此根等于 $\alpha'$，故 $-1 < \alpha' < 0$。
> - 反之若 $-1 < \alpha' < 0$，则每个完全商均满足同样条件，取值有界，且展开从第一项起循环。

<!-- sqrt_d_cf_expansion -->
> [!Example]+
> **$\sqrt{D}$ 的连分数展开 Continued Fraction Expansion of $\sqrt{D}$**：设 $D$ 不是完全平方数，$a_0 = \lfloor \sqrt{D} \rfloor$，则 $\sqrt{D}$ 的连分数展开具有形式
> $$\sqrt{D} = [a_0; \overline{a_1, a_2, \ldots, a_{\ell-1}, 2a_0}]$$
> 即循环节以 $2a_0$ 结尾。
>
> 例：$\sqrt{2} = [1; \overline{2}]$，$\sqrt{3} = [1; \overline{1, 2}]$，$\sqrt{5} = [2; \overline{4}]$，$\sqrt{6} = [2; \overline{2, 4}]$，$\sqrt{7} = [2; \overline{1, 1, 1, 4}]$。
>
> **证明思路**：直接计算完全商 $\alpha_k = (P_k + \sqrt{D})/Q_k$，利用循环节末尾完全商与 $\sqrt{D} + a_0$ 相同（即约化二次无理数条件）推导出循环节必以 $2a_0$ 结尾。
