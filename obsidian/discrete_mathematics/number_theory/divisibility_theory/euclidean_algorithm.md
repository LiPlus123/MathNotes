## 欧几里得算法

<!-- euclidean_key_lemma -->
> [!Lemma]
> **欧几里得关键引理 Euclidean Key Lemma**：设 $a, b \in \mathbb{Z}$，$b \neq 0$。若 $a = bq + r$（$q, r \in \mathbb{Z}$），则：
> $$\gcd(a, b) = \gcd(b, r)$$
>
> **证明思路**：若 $d \mid a$ 且 $d \mid b$，则 $d \mid (a - bq) = r$；反之若 $d \mid b$ 且 $d \mid r$，则 $d \mid (bq + r) = a$。故 $\{a, b\}$ 与 $\{b, r\}$ 有完全相同的公因数集，从而 $\gcd(a, b) = \gcd(b, r)$。

<!-- euclidean_algorithm_theorem -->
> [!Theorem]
> **欧几里得算法 Euclidean Algorithm**：设 $a, b \in \mathbb{Z}^+$，$a \geq b$。对 $a, b$ 反复施用带余除法：
> $$\begin{align*}
> a      &= b q_1 + r_1,      \quad 0 \leq r_1 < b \\
> b      &= r_1 q_2 + r_2,    \quad 0 \leq r_2 < r_1 \\
> r_1    &= r_2 q_3 + r_3,    \quad 0 \leq r_3 < r_2 \\
>        &\;\vdots \\
> r_{n-2} &= r_{n-1} q_n + r_n, \quad 0 < r_n < r_{n-1} \\
> r_{n-1} &= r_n q_{n+1}
> \end{align*}$$
> 余数序列 $b > r_1 > r_2 > \cdots > r_n > 0$ 严格递减，算法在有限步内终止，最后一个非零余数满足：
> $$r_n = \gcd(a, b)$$
>
> **证明思路**：余数严格递减且非负，故必有限步内某个余数为零而终止。由欧几里得关键引理逐步推导：
> $$\gcd(a, b) = \gcd(b, r_1) = \gcd(r_1, r_2) = \cdots = \gcd(r_{n-1}, r_n) = \gcd(r_n, 0) = r_n$$

<!-- extended_euclidean_algorithm -->
> [!Theorem]
> **扩展欧几里得算法 Extended Euclidean Algorithm**：设 $a, b \in \mathbb{Z}$，不全为零。则存在整数 $x, y$，使得：
> $$ax + by = \gcd(a, b)$$
> 上述系数 $x, y$ 可通过对欧几里得算法各步等式逐步**回代**求出：从 $r_n = r_{n-2} - r_{n-1} q_n$ 出发，将每个余数 $r_k$ 递归地表示为 $a$ 与 $b$ 的整系数线性组合，最终得到 $\gcd(a, b) = ax + by$。
>
> **证明思路**：对算法步数归纳，每一步余数均可表示为 $a, b$ 的整系数线性组合，最后一步即给出所求 $x, y$。
