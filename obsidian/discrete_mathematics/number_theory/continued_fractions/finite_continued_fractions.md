## 有限连分数

<!-- finite_cf_definition -->
> [!Definition]
> **有限连分数 Finite Continued Fraction**：形如
> $$a_0 + \cfrac{1}{a_1 + \cfrac{1}{a_2 + \cfrac{1}{\ddots + \cfrac{1}{a_n}}}}$$
> 的表达式称为**有限连分数**，记作 $[a_0; a_1, a_2, \ldots, a_n]$，其中 $a_0 \in \mathbb{Z}$，$a_i \in \mathbb{Z}^+$（$i \geq 1$），称 $a_i$ 为**部分商**（partial quotients）。若所有 $a_i > 0$（$i \geq 1$）且 $a_n \geq 2$（当 $n \geq 1$），则称其为**正规连分数**。

<!-- convergent_definition -->
> [!Definition]
> **渐近分数 Convergent**：有限连分数 $[a_0; a_1, \ldots, a_n]$ 的第 $k$ 个**渐近分数**定义为
> $$\frac{p_k}{q_k} = [a_0; a_1, \ldots, a_k] \quad (0 \leq k \leq n)$$
> 其中分子、分母由递推关系确定：
> $$\begin{align*}
> p_{-1} &= 1, \quad p_0 = a_0, \quad p_k = a_k p_{k-1} + p_{k-2} \\
> q_{-1} &= 0, \quad q_0 = 1, \quad q_k = a_k q_{k-1} + q_{k-2}
> \end{align*}$$

<!-- convergent_properties -->
> [!Theorem]
> **渐近分数的基本性质 Basic Properties of Convergents**：设 $p_k/q_k$ 为有限连分数 $[a_0; a_1, \ldots, a_n]$ 的渐近分数，则：
> 1. **行列式恒等式**：$p_k q_{k-1} - p_{k-1} q_k = (-1)^{k-1}$，对 $k \geq 0$ 成立。
> 2. **互素性**：$\gcd(p_k, q_k) = 1$，即每个渐近分数已是最简分数。
> 3. **单调性**：奇数项渐近分数 $p_1/q_1 > p_3/q_3 > \cdots$ 单调递减，偶数项渐近分数 $p_0/q_0 < p_2/q_2 < \cdots$ 单调递增，且偶数项均小于奇数项。
> 4. **逼近性**：$\left|\frac{p_k}{q_k} - \frac{p_{k-1}}{q_{k-1}}\right| = \frac{1}{q_k q_{k-1}}$。
>
> **证明思路**：性质 1 由归纳法利用递推关系直接验证；性质 2 由性质 1 立得（$p_k q_{k-1} - p_{k-1} q_k = \pm 1$ 蕴含 $\gcd(p_k, q_k) = 1$）；性质 3、4 由行列式恒等式推导相邻渐近分数之差的符号和大小。

<!-- rational_cf_representation -->
> [!Theorem]
> **有理数的连分数表示 Continued Fraction Representation of Rationals**：每个有理数 $r \in \mathbb{Q}$ 都可以表示为有限连分数 $[a_0; a_1, \ldots, a_n]$。正规表示在 $a_n \geq 2$ 的约定下唯一，否则有恰好两种表示：$[a_0; a_1, \ldots, a_n] = [a_0; a_1, \ldots, a_n - 1, 1]$。
>
> **证明思路**：对 $r = p/q$（最简分数），令 $a_0 = \lfloor r \rfloor$，余项 $r - a_0 = p'/q' < 1$，则 $r = a_0 + 1/(q/p')$，对 $q/p'$ 递归展开，这正是对 $p, q$ 运行欧几里得算法的过程，故算法有限步终止，唯一性由欧几里得算法的唯一性保证。

<!-- cf_euclidean_connection -->
> [!Theorem]
> **连分数与欧几里得算法的联系 Connection Between Continued Fractions and Euclidean Algorithm**：对正整数 $a > b$，欧几里得算法
> $$a = q_1 b + r_1, \quad b = q_2 r_1 + r_2, \quad \ldots$$
> 给出 $a/b = [q_1; q_2, q_3, \ldots, q_k]$，其中 $q_i$ 恰为连分数的各部分商。
>
> **证明思路**：由带余除法 $a/b = q_1 + r_1/b = q_1 + 1/(b/r_1)$，再对 $b/r_1$ 递归展开即可。
