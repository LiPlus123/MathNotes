# 根的个数上界 Bound on the Number of Roots

## 根的个数上界（含重数）

<!-- root_count_bound_with_multiplicity -->
> [!Theorem]
> **根的个数上界（含重数） Bound on Roots Counting Multiplicity**：设 $f(x) \in K[x]$ 是次数为 $n$ 的非零多项式，$\alpha_1, \ldots, \alpha_r$ 是 $f(x)$ 在 $K$ 中的全部不同的根，重数分别为 $k_1, \ldots, k_r$，则
> $$k_1 + k_2 + \cdots + k_r \leq n.$$

> **证明思路**：由因式分解定理，$f(x) = (x - \alpha_1)^{k_1} \cdots (x - \alpha_r)^{k_r} q(x)$，其中 $q(x)$ 非零，故
> $$n = \deg f = k_1 + \cdots + k_r + \deg q \geq k_1 + \cdots + k_r.$$

## 根的个数上界（不含重数）

<!-- root_count_bound_distinct -->
> [!Corollary]
> **根的个数上界（不含重数） Bound on Distinct Roots**：数域 $K$ 上次数为 $n$ 的非零多项式在 $K$ 中至多有 $n$ 个不同的根。

> **证明思路**：不同根的个数 $r \leq k_1 + \cdots + k_r \leq n$。

## 多项式相等判别

<!-- polynomial_equality_by_roots -->
> [!Corollary]
> **多项式相等判别 Criterion for Polynomial Equality**：设 $f(x), g(x) \in K[x]$ 的次数均不超过 $n$。若存在 $n+1$ 个不同的 $a_0, a_1, \ldots, a_n \in K$，使得对所有 $i$ 均有 $f(a_i) = g(a_i)$，则 $f(x) = g(x)$。

> **证明思路**：令 $h(x) = f(x) - g(x)$，则 $\deg h \leq n$，但 $h$ 有 $n+1$ 个根，由上述推论知 $h = 0$，即 $f = g$。
