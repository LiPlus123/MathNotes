## 佩尔方程

<!-- pell_equation_definition -->
> [!Definition]
> **佩尔方程 Pell's Equation**：设 $D \in \mathbb{Z}^+$ 不是完全平方数，称方程
> $$x^2 - D y^2 = 1$$
> 为**佩尔方程**，其中求正整数解 $(x, y) \in \mathbb{Z}^+ \times \mathbb{Z}^+$。

> **注**：方程名称源于误归，实为费马（Fermat）和布龙克尔（Brouncker）最先系统研究，欧拉误将其归于约翰·佩尔（John Pell）。当 $D$ 为完全平方数时，方程 $(x - \sqrt{D}\,y)(x + \sqrt{D}\,y) = 1$ 仅有有限个整数解。

<!-- pell_equation_fundamental_solution -->
> [!Theorem]
> **佩尔方程的基本解 Fundamental Solution of Pell's Equation**：佩尔方程 $x^2 - Dy^2 = 1$ 有无穷多正整数解。设 $\sqrt{D} = [a_0; \overline{a_1, \ldots, a_\ell}]$，$\ell$ 为循环节长度，$p_k/q_k$ 为 $\sqrt{D}$ 连分数展开的第 $k$ 个渐近分数，则：
> - 若 $\ell$ 为偶数，基本解（最小正整数解）为 $(x_1, y_1) = (p_{\ell-1},\, q_{\ell-1})$。
> - 若 $\ell$ 为奇数，基本解为 $(x_1, y_1) = (p_{2\ell-1},\, q_{2\ell-1})$。
>
> **证明思路**：
> - 利用 $\sqrt{D}$ 的连分数展开，完全商 $\alpha_\ell = a_\ell + 1/\alpha_1 = 2a_0 + 1/\alpha_1$（循环节末尾），通过渐近分数递推关系推导 $p_{\ell-1}^2 - D q_{\ell-1}^2 = (-1)^\ell$。
> - 当 $\ell$ 为偶数时直接得 $p_{\ell-1}^2 - D q_{\ell-1}^2 = 1$；当 $\ell$ 为奇数时需取 $2\ell$ 步渐近分数。
> - 最小性由最佳有理逼近性质保证：分母最小的满足条件的渐近分数即为基本解。

<!-- pell_equation_all_solutions -->
> [!Theorem]
> **佩尔方程的全部解 All Solutions of Pell's Equation**：设 $(x_1, y_1)$ 为佩尔方程 $x^2 - Dy^2 = 1$ 的基本解，则全部正整数解由以下递推给出：
> $$x_n + y_n \sqrt{D} = (x_1 + y_1 \sqrt{D})^n \quad (n = 1, 2, 3, \ldots)$$
> 或等价地，递推关系为：
> $$x_{n+1} = x_1 x_n + D y_1 y_n, \quad y_{n+1} = x_1 y_n + y_1 x_n$$
>
> **证明思路**：
> - 验证 $(x_1 + y_1\sqrt{D})^n$ 给出的 $(x_n, y_n)$ 确为解：$(x_n + y_n\sqrt{D})(x_n - y_n\sqrt{D}) = (x_1 + y_1\sqrt{D})^n (x_1 - y_1\sqrt{D})^n = (x_1^2 - Dy_1^2)^n = 1$。
> - 完备性：若 $(x, y)$ 为任意正整数解，则 $1 \leq x_1 + y_1\sqrt{D} \leq x + y\sqrt{D}$，由此证明 $x + y\sqrt{D}$ 必为 $(x_1 + y_1\sqrt{D})$ 的某个整数次幂。

<!-- pell_equation_negative -->
> [!Definition]
> **负佩尔方程 Negative Pell's Equation**：称方程
> $$x^2 - D y^2 = -1$$
> 为**负佩尔方程**。它有正整数解当且仅当 $\sqrt{D}$ 的连分数展开的循环节长度 $\ell$ 为奇数，此时基本解为 $(p_{\ell-1}, q_{\ell-1})$，全部解为 $(p_{(2k-1)\ell - 1}, q_{(2k-1)\ell-1})$（$k = 1, 2, 3, \ldots$）。

<!-- pell_equation_example -->
> [!Example]+
> **佩尔方程求解举例 Example of Solving Pell's Equation**：求 $x^2 - 2y^2 = 1$ 的全部正整数解。
>
> $\sqrt{2} = [1; \overline{2}]$，循环节长度 $\ell = 1$（奇数），故需取 $2\ell = 2$ 步渐近分数：
> $$p_0 = 1,\; q_0 = 1;\quad p_1 = 3,\; q_1 = 2$$
> 验算：$3^2 - 2 \cdot 2^2 = 9 - 8 = 1$，故基本解为 $(x_1, y_1) = (3, 2)$。
>
> 全部解由 $x_n + y_n\sqrt{2} = (3 + 2\sqrt{2})^n$ 给出：
>
> | $n$ | $x_n$ | $y_n$ |
> |-----|--------|--------|
> | 1   | 3      | 2      |
> | 2   | 17     | 12     |
> | 3   | 99     | 70     |
> | 4   | 577    | 408    |
