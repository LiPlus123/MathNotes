# Cayley–Hamilton 定理

## 定理叙述

<!-- cayley_hamilton_theorem -->
> [!Theorem]
> **Cayley–Hamilton 定理 Cayley–Hamilton Theorem**：设 $A \in M_n(F)$，$p_A(\lambda) = \det(\lambda I_n - A)$ 是 $A$ 的特征多项式，则
> $$p_A(A) = O$$
> 即每个方阵都是自身特征多项式的根。

> **注**：将 $p_A(\lambda) = \lambda^n + c_{n-1}\lambda^{n-1} + \cdots + c_1\lambda + c_0$ 代入矩阵 $A$ 得
> $$p_A(A) = A^n + c_{n-1}A^{n-1} + \cdots + c_1 A + c_0 I_n = O$$
> 这里 $c_0 = (-1)^n \det(A)$。

<!-- cayley_hamilton_proof_sketch -->
> **证明思路**：设 $B(\lambda) = \mathrm{adj}(\lambda I - A)$ 是 $\lambda I - A$ 的经典伴随矩阵（各元素为 $\lambda$ 的多项式，次数至多 $n-1$），则由伴随矩阵性质有
> $$(\lambda I - A)\, B(\lambda) = p_A(\lambda)\, I_n$$
> 将 $B(\lambda) = B_{n-1}\lambda^{n-1} + \cdots + B_1\lambda + B_0$ 代入，比较两边各次 $\lambda^k$ 的矩阵系数，得到一组递推关系；依次对递推关系左乘 $A^k$ 并求和，所有中间项相消，最终得到 $p_A(A) = O$。

<!-- cayley_hamilton_implies_minimal_divides_characteristic -->
> [!Corollary]
> **最小多项式整除特征多项式 Minimal Polynomial Divides Characteristic Polynomial**：设 $A \in M_n(F)$，则 $m_A(\lambda) \mid p_A(\lambda)$。
>
> **证明思路**：由 Cayley–Hamilton 定理，$p_A(A) = O$，即 $p_A$ 是 $A$ 的零化多项式；再由最小多项式的整除性知 $m_A \mid p_A$。

## 定理的应用

<!-- cayley_hamilton_compute_high_power -->
> [!Example]+
> **利用 Cayley–Hamilton 定理计算矩阵高次幂 Computing High Powers of a Matrix via Cayley–Hamilton**：设 $A \in M_n(F)$，特征多项式为 $p_A(\lambda)$。对任意多项式 $f(\lambda)$，用 $p_A(\lambda)$ 作带余除法得 $f(\lambda) = q(\lambda)\, p_A(\lambda) + r(\lambda)$，其中 $\deg r < n$，则
> $$f(A) = q(A)\, p_A(A) + r(A) = r(A)$$
> 从而将 $A$ 的高次幂 $A^k$（$k \geq n$）化归为 $A^0, A^1, \ldots, A^{n-1}$ 的线性组合。

<!-- cayley_hamilton_compute_inverse -->
> [!Example]+
> **利用 Cayley–Hamilton 定理求逆矩阵 Computing the Inverse Matrix via Cayley–Hamilton**：设 $A \in M_n(F)$ 可逆（即 $\det(A) \neq 0$），特征多项式为
> $$p_A(\lambda) = \lambda^n + c_{n-1}\lambda^{n-1} + \cdots + c_1\lambda + c_0$$
> 其中 $c_0 = (-1)^n \det(A) \neq 0$。由 $p_A(A) = O$ 得
> $$A^n + c_{n-1}A^{n-1} + \cdots + c_1 A + c_0 I = O$$
> 两边右乘 $(-c_0^{-1})$ 并提取 $A$，得
> $$A^{-1} = -\frac{1}{c_0}\left(A^{n-1} + c_{n-1}A^{n-2} + \cdots + c_1 I\right)$$
> 从而无需行变换即可用矩阵多项式表达逆矩阵。
