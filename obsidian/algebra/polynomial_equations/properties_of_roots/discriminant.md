# 判别式 Discriminant

## 判别式的定义

<!-- discriminant_def -->
> [!Definition]
> **判别式 Discriminant**：设 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_0 \in K[x]$ 是次数为 $n \geq 1$ 的多项式，$\alpha_1, \alpha_2, \ldots, \alpha_n \in \mathbb{C}$ 是 $f(x)$ 的 $n$ 个根（计入重数），定义 $f(x)$ 的**判别式**（discriminant）为
> $$\Delta(f) = a_n^{2n-2} \prod_{1 \leq i < j \leq n} (\alpha_i - \alpha_j)^2.$$

> **注**：$\Delta(f)$ 是 $f$ 的系数的对称多项式函数，故 $\Delta(f) \in K$（尽管 $\alpha_i$ 不一定在 $K$ 中）。这由根的对称函数基本定理（fundamental theorem of symmetric polynomials）保证。

## 低次多项式的判别式

<!-- discriminant_quadratic -->
> [!Example]+
> **二次多项式的判别式 Discriminant of Quadratic**：设 $f(x) = ax^2 + bx + c \in K[x]$（$a \neq 0$），则
> $$\Delta(f) = b^2 - 4ac.$$

> **证明思路**：$f$ 的两根满足 $\alpha_1 + \alpha_2 = -b/a$，$\alpha_1 \alpha_2 = c/a$（维达定理）。$(\alpha_1 - \alpha_2)^2 = (\alpha_1 + \alpha_2)^2 - 4\alpha_1\alpha_2 = b^2/a^2 - 4c/a$，故 $\Delta(f) = a^{2 \cdot 2 - 2} \cdot (\alpha_1 - \alpha_2)^2 = a^2 \cdot (b^2/a^2 - 4c/a) = b^2 - 4ac$。

<!-- discriminant_cubic -->
> [!Example]+
> **三次多项式的判别式 Discriminant of Cubic**：设 $f(x) = x^3 + px + q \in K[x]$（**压缩三次式**，首一且无二次项），则
> $$\Delta(f) = -4p^3 - 27q^2.$$

> **注**：一般三次多项式 $ax^3 + bx^2 + cx + d$ 可经变量替换 $x \mapsto x - b/(3a)$ 化为压缩形式，其判别式为
> $$\Delta = 18abcd - 4b^3d + b^2c^2 - 4ac^3 - 27a^2d^2.$$

## 判别式与重根的关系

<!-- discriminant_multiple_root_thm -->
> [!Theorem]
> **判别式与重根 Discriminant and Multiple Roots**：设 $f(x) \in K[x]$ 是次数 $n \geq 1$ 的非零多项式，则
> $$\Delta(f) = 0 \iff f(x) \text{ 在 } \mathbb{C} \text{ 中有重根}.$$

> **证明思路**：$\Delta(f) = 0 \iff \prod_{i < j}(\alpha_i - \alpha_j)^2 = 0 \iff$ 存在 $i \neq j$ 使 $\alpha_i = \alpha_j$，即 $f$ 有重根。结合重根判定定理，$f$ 有重根当且仅当 $\gcd(f, f') \not\sim 1$，而判别式可用结式（resultant）表达为 $\Delta(f) = (-1)^{n(n-1)/2} a_n^{-1} \mathrm{Res}(f, f')$，故 $\Delta(f) = 0 \iff \mathrm{Res}(f, f') = 0 \iff f$ 与 $f'$ 有公根 $\iff f$ 有重根。

## 判别式与实根的关系（二次情形）

<!-- discriminant_real_roots_quadratic -->
> [!Corollary]
> **二次方程根的情况 Roots of Quadratic by Discriminant**：设 $f(x) = ax^2 + bx + c \in \mathbb{R}[x]$（$a \neq 0$），令 $\Delta = b^2 - 4ac$，则：
> - $\Delta > 0$：$f(x)$ 有两个不相等的实根；
> - $\Delta = 0$：$f(x)$ 有一个二重实根 $-b/(2a)$；
> - $\Delta < 0$：$f(x)$ 无实根，有两个互为共轭的复根。

> **证明思路**：由求根公式 $\alpha_{1,2} = \dfrac{-b \pm \sqrt{\Delta}}{2a}$，分三种情况讨论 $\Delta$ 的符号即得。
