## 同余的定义与性质

<!-- congruence_definition -->
> [!Definition]
> **同余 Congruence**：设 $m \in \mathbb{Z}^+$，$a, b \in \mathbb{Z}$。若 $m \mid (a - b)$，则称 $a$ 与 $b$ 模 $m$ **同余**，记作 $a \equiv b \pmod{m}$；否则称 $a$ 与 $b$ 模 $m$ **不同余**，记作 $a \not\equiv b \pmod{m}$。正整数 $m$ 称为**模数**。

> **注**：$a \equiv b \pmod{m}$ 当且仅当 $a$ 与 $b$ 除以 $m$ 所得余数相同，即它们属于同一个剩余类。

<!-- congruence_equivalence -->
> [!Theorem]
> **同余是等价关系 Congruence as an Equivalence Relation**：模 $m$ 的同余关系 $\equiv \pmod{m}$ 是 $\mathbb{Z}$ 上的等价关系，即满足：
> 1. **自反性**：$a \equiv a \pmod{m}$；
> 2. **对称性**：若 $a \equiv b \pmod{m}$，则 $b \equiv a \pmod{m}$；
> 3. **传递性**：若 $a \equiv b \pmod{m}$ 且 $b \equiv c \pmod{m}$，则 $a \equiv c \pmod{m}$。
>
> **证明思路**：由整除定义直接验证：$m \mid 0$；$m \mid (a-b) \Rightarrow m \mid (b-a)$；$m \mid (a-b)$ 且 $m \mid (b-c)$ 则 $m \mid (a-c)$。

<!-- congruence_arithmetic_properties -->
> [!Theorem]
> **同余的算术相容性 Arithmetic Compatibility of Congruence**：设 $m \in \mathbb{Z}^+$，若 $a \equiv b \pmod{m}$ 且 $c \equiv d \pmod{m}$，则：
> 1. $a + c \equiv b + d \pmod{m}$（加法相容性）；
> 2. $a - c \equiv b - d \pmod{m}$（减法相容性）；
> 3. $ac \equiv bd \pmod{m}$（乘法相容性）；
> 4. $a^n \equiv b^n \pmod{m}$，对任意正整数 $n$（幂次相容性）；
> 5. 若 $f(x) \in \mathbb{Z}[x]$ 为整系数多项式，则 $f(a) \equiv f(b) \pmod{m}$。
>
> **证明思路**：令 $a = b + km$，$c = d + lm$，则 $a + c = (b+d) + (k+l)m$，$ac = bd + (kd + lb + klm)m$，均为 $m$ 的倍数差。幂次由乘法相容性对 $n$ 归纳得到；多项式性质由加、乘相容性组合得到。

<!-- congruence_cancellation -->
> [!Theorem]
> **同余的消去律 Cancellation Law for Congruence**：设 $m \in \mathbb{Z}^+$，$d = \gcd(c, m)$。若 $ac \equiv bc \pmod{m}$，则：
> $$a \equiv b \pmod{m/d}$$
> 特别地，若 $\gcd(c, m) = 1$，则由 $ac \equiv bc \pmod{m}$ 可得 $a \equiv b \pmod{m}$。
>
> **证明思路**：$m \mid c(a-b)$，令 $c = dc'$，$m = dm'$，其中 $\gcd(c', m') = 1$，则 $m' \mid c'(a-b)$，由 $\gcd(c', m') = 1$ 得 $m' \mid (a-b)$，即 $a \equiv b \pmod{m/d}$。
