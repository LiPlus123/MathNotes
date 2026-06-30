# 特征多项式与特征值

## 特征多项式

<!-- characteristic_polynomial_def -->
> [!Definition]
> **特征多项式 Characteristic Polynomial**：设 $A \in M_n(F)$，称关于 $\lambda$ 的多项式
> $$p_A(\lambda) = \det(\lambda I_n - A)$$
> 为矩阵 $A$ 的**特征多项式**。

> **注**：$p_A(\lambda)$ 是关于 $\lambda$ 的 $n$ 次首一多项式。展开后得
> $$p_A(\lambda) = \lambda^n - \mathrm{tr}(A)\,\lambda^{n-1} + \cdots + (-1)^n \det(A)$$
> 其中 $\lambda^{n-1}$ 的系数由矩阵的迹确定，常数项为 $(-1)^n \det(A)$。

## 特征值

<!-- eigenvalue_def -->
> [!Definition]
> **特征值 Eigenvalue**：设 $A \in M_n(F)$，称使得方程 $p_A(\lambda) = 0$ 成立的标量 $\lambda \in F$ 为矩阵 $A$ 的**特征值**，即特征多项式的根。等价地，$\lambda$ 是 $A$ 的特征值当且仅当 $\det(\lambda I_n - A) = 0$，即 $\lambda I_n - A$ 不可逆。

## 代数重数

<!-- algebraic_multiplicity_def -->
> [!Definition]
> **代数重数 Algebraic Multiplicity**：设 $\lambda_0$ 是矩阵 $A \in M_n(F)$ 的特征值，$\lambda_0$ 作为特征多项式 $p_A(\lambda)$ 的根的重数称为 $\lambda_0$ 的**代数重数**，记为 $m_a(\lambda_0)$。

> **注**：由于 $p_A(\lambda)$ 是 $n$ 次多项式，所有特征值的代数重数之和在代数闭域上等于 $n$，即
> $$\sum_{\lambda_0} m_a(\lambda_0) = n$$

## 特征值的性质

<!-- eigenvalue_trace_det_theorem -->
> [!Theorem]
> **特征值与迹和行列式 Eigenvalues, Trace and Determinant**：设 $A \in M_n(F)$ 在代数闭包中的特征值为 $\lambda_1, \lambda_2, \ldots, \lambda_n$（按代数重数计），则
> $$\sum_{i=1}^n \lambda_i = \mathrm{tr}(A), \qquad \prod_{i=1}^n \lambda_i = \det(A)$$
>
> **证明思路**：将 $p_A(\lambda) = \prod_{i=1}^n (\lambda - \lambda_i)$ 展开，比较 $\lambda^{n-1}$ 项系数可得 $\sum \lambda_i = \mathrm{tr}(A)$；令 $\lambda = 0$ 得 $p_A(0) = (-1)^n \prod \lambda_i = \det(-A) = (-1)^n \det(A)$，故 $\prod \lambda_i = \det(A)$。

<!-- similar_matrices_same_characteristic_polynomial -->
> [!Theorem]
> **相似矩阵有相同的特征多项式 Similar Matrices Have the Same Characteristic Polynomial**：若 $A \sim B$，即存在可逆矩阵 $P \in M_n(F)$ 使得 $B = P^{-1}AP$，则
> $$p_A(\lambda) = p_B(\lambda)$$
> 从而 $A$ 与 $B$ 有相同的特征值（含代数重数）。
>
> **证明思路**：
> $$p_B(\lambda) = \det(\lambda I - P^{-1}AP) = \det\!\left(P^{-1}(\lambda I - A)P\right) = \det(P^{-1})\cdot\det(\lambda I - A)\cdot\det(P) = p_A(\lambda)$$

> **注**：相似矩阵有相同的特征多项式（从而有相同的特征值、迹和行列式），但反之不成立——特征多项式相同的矩阵未必相似。

## 最小多项式

<!-- minimal_polynomial_def -->
> [!Definition]
> **最小多项式 Minimal Polynomial**：设 $A \in M_n(F)$，在所有满足 $f(A) = O$ 的非零多项式 $f(\lambda) \in F[\lambda]$ 中，次数最低的首一多项式称为 $A$ 的**最小多项式**，记为 $m_A(\lambda)$。

<!-- minimal_polynomial_divides_annihilating_poly -->
> [!Theorem]
> **最小多项式的整除性 Divisibility of Minimal Polynomial**：设 $A \in M_n(F)$，若多项式 $f(\lambda) \in F[\lambda]$ 满足 $f(A) = O$，则 $m_A(\lambda) \mid f(\lambda)$。特别地，由 Cayley–Hamilton 定理（见后续章节）知 $m_A(\lambda) \mid p_A(\lambda)$。
>
> **证明思路**：对 $f$ 关于 $m_A$ 作带余除法 $f = q \cdot m_A + r$，代入 $A$ 得 $r(A) = O$；若 $r \neq 0$，则 $r$ 是次数低于 $m_A$ 的零化多项式，与 $m_A$ 的最小性矛盾，故 $r = 0$，即 $m_A \mid f$。

<!-- minimal_polynomial_same_roots -->
> [!Theorem]
> **最小多项式与特征多项式有相同的根 Same Roots of Minimal and Characteristic Polynomials**：设 $A \in M_n(F)$，$\lambda_0 \in \overline{F}$（$F$ 的代数闭包），则
> $$p_A(\lambda_0) = 0 \iff m_A(\lambda_0) = 0$$
> 即最小多项式与特征多项式有完全相同的根（不计重数）。
>
> **证明思路**：（$\Leftarrow$）由 $m_A \mid p_A$，$m_A$ 的根都是 $p_A$ 的根。（$\Rightarrow$）若 $\lambda_0$ 是 $p_A$ 的根，则 $\lambda_0 - \lambda$ 整除 $p_A(\lambda)$，故 $\lambda_0 - \lambda$ 整除 $m_A(\lambda)$，即 $\lambda_0$ 也是 $m_A$ 的根。
