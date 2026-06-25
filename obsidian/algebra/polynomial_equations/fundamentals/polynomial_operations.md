# 多项式的运算 Polynomial Operations

## 加法与减法

<!-- polynomial_addition_def -->
> [!Definition]
> **多项式加法 Polynomial Addition**：设 $f(x) = \sum_{i=0}^{m} a_i x^i$，$g(x) = \sum_{i=0}^{n} b_i x^i$ 是数域 $K$ 上的两个多项式（不妨设 $m \leq n$，并令 $a_i = 0$ 对 $i > m$），定义它们的**和**（sum）为
> $$f(x) + g(x) = \sum_{i=0}^{n} (a_i + b_i) x^i.$$
> 类似地，定义**差**（difference）为
> $$f(x) - g(x) = \sum_{i=0}^{n} (a_i - b_i) x^i.$$

## 乘法

<!-- polynomial_multiplication_def -->
> [!Definition]
> **多项式乘法 Polynomial Multiplication**：设 $f(x) = \sum_{i=0}^{m} a_i x^i$，$g(x) = \sum_{j=0}^{n} b_j x^j$ 是数域 $K$ 上的两个多项式，定义它们的**积**（product）为
> $$f(x) \cdot g(x) = \sum_{k=0}^{m+n} c_k x^k, \quad \text{其中 } c_k = \sum_{\substack{i+j=k \\ 0 \leq i \leq m,\, 0 \leq j \leq n}} a_i b_j.$$
> $c_k$ 称为 $x^k$ 项的**卷积系数**。

## 运算律

<!-- polynomial_operation_laws -->
> [!Theorem]
> **多项式运算律 Laws of Polynomial Operations**：设 $f(x), g(x), h(x) \in K[x]$，则：
> 1. **加法交换律**：$f(x) + g(x) = g(x) + f(x)$；
> 2. **加法结合律**：$(f(x) + g(x)) + h(x) = f(x) + (g(x) + h(x))$；
> 3. **乘法交换律**：$f(x) \cdot g(x) = g(x) \cdot f(x)$；
> 4. **乘法结合律**：$(f(x) \cdot g(x)) \cdot h(x) = f(x) \cdot (g(x) \cdot h(x))$；
> 5. **分配律**：$f(x) \cdot (g(x) + h(x)) = f(x) \cdot g(x) + f(x) \cdot h(x)$；
> 6. **加法零元**：$f(x) + 0 = f(x)$；
> 7. **乘法单位元**：$f(x) \cdot 1 = f(x)$。

> **证明思路**：各条均可由系数级别的运算直接验证，利用 $K$ 中的域运算律即得。

## 次数公式

<!-- polynomial_degree_sum -->
> [!Theorem]
> **和的次数 Degree of Sum**：设 $f(x), g(x)$ 是 $K$ 上的非零多项式，则
> $$\deg(f(x) + g(x)) \leq \max(\deg f,\, \deg g).$$
> 当 $\deg f \neq \deg g$ 时等号成立；当 $\deg f = \deg g$ 时可能严格不等（首项相消）。

<!-- polynomial_degree_product -->
> [!Theorem]
> **积的次数 Degree of Product**：设 $f(x), g(x)$ 是 $K$ 上的非零多项式，则
> $$\deg(f(x) \cdot g(x)) = \deg f + \deg g.$$

> **证明思路**：积 $f(x)g(x)$ 的首项为 $a_m b_n x^{m+n}$，其中 $a_m, b_n$ 分别是 $f, g$ 的首项系数。由于 $K$ 是数域（故无零因子），$a_m b_n \neq 0$，从而 $\deg(fg) = m + n$。

## 多项式环

<!-- polynomial_ring_def -->
> [!Definition]
> **多项式环 Polynomial Ring**：数域 $K$ 上所有一元多项式的集合，连同上述加法与乘法运算，构成一个**交换环**（commutative ring），称为 $K$ 上的**多项式环**（polynomial ring），记为 $K[x]$。

<!-- polynomial_integral_domain -->
> [!Theorem]
> **$K[x]$ 是整环 $K[x]$ is an Integral Domain**：多项式环 $K[x]$ 是一个**整环**（integral domain），即若 $f(x), g(x) \in K[x]$ 满足 $f(x) \cdot g(x) = 0$，则 $f(x) = 0$ 或 $g(x) = 0$。

> **证明思路**：由次数公式 $\deg(fg) = \deg f + \deg g$，若 $f \neq 0$ 且 $g \neq 0$，则 $fg \neq 0$，故 $K[x]$ 无零因子，即为整环。

> **注**：$K[x]$ 不是域，因为一般多项式（非零常数除外）没有乘法逆元。
