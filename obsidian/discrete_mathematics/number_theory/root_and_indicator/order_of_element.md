## 元素的阶

<!-- order_definition -->
> [!Definition]
> **元素的阶 Order of an Element**：设 $m \in \mathbb{Z}^+$，$a \in \mathbb{Z}$，$\gcd(a, m) = 1$。使得 $a^d \equiv 1 \pmod{m}$ 成立的最小正整数 $d$，称为 $a$ 模 $m$ 的**阶**，记作 $\mathrm{ord}_m(a)$。

<!-- order_divides_power -->
> [!Theorem]
> **阶的整除性 Divisibility of Order**：设 $m \in \mathbb{Z}^+$，$\gcd(a, m) = 1$。若正整数 $n$ 满足 $a^n \equiv 1 \pmod{m}$，则 $\mathrm{ord}_m(a) \mid n$。
>
> **证明思路**：设 $d = \mathrm{ord}_m(a)$，由带余除法写 $n = qd + r$，$0 \leq r < d$。则 $a^r = a^{n - qd} \equiv 1 \pmod{m}$。由 $d$ 的最小性得 $r = 0$，即 $d \mid n$。

<!-- order_divides_phi -->
> [!Corollary]
> **阶整除欧拉函数值 Order Divides Euler's Totient**：设 $m \in \mathbb{Z}^+$，$\gcd(a, m) = 1$，则：
> $$\mathrm{ord}_m(a) \mid \varphi(m)$$
>
> **证明思路**：由欧拉定理 $a^{\varphi(m)} \equiv 1 \pmod{m}$，再由阶的整除性即得。

<!-- order_of_power -->
> [!Theorem]
> **幂的阶 Order of a Power**：设 $m \in \mathbb{Z}^+$，$\gcd(a, m) = 1$，$d = \mathrm{ord}_m(a)$，则对任意整数 $k \geq 0$：
> $$\mathrm{ord}_m(a^k) = \frac{d}{\gcd(d, k)}$$
>
> **证明思路**：设 $e = \mathrm{ord}_m(a^k)$，$\delta = \gcd(d,k)$。注意到 $(a^k)^{d/\delta} = a^{k \cdot d/\delta} \equiv 1 \pmod{m}$，故 $e \mid d/\delta$。又 $(a^k)^e \equiv 1 \pmod{m}$ 蕴含 $d \mid ke$，故 $d/\delta \mid e$。综合得 $e = d/\delta$。

<!-- order_congruence_iff -->
> [!Theorem]
> **同阶幂的判定 Criterion for Equal Powers**：设 $m \in \mathbb{Z}^+$，$\gcd(a, m) = 1$，$d = \mathrm{ord}_m(a)$，则：
> $$a^i \equiv a^j \pmod{m} \iff d \mid (i - j)$$
>
> **证明思路**：$a^i \equiv a^j$ 等价于 $a^{i-j} \equiv 1$（不妨设 $i \geq j$，利用 $\gcd(a,m)=1$ 消去 $a^j$），再由阶的整除性即得。

> **注**：元素的阶是群论中元素阶概念在 $(\mathbb{Z}/m\mathbb{Z})^\times$ 上的具体体现。$\mathrm{ord}_m(a) = \varphi(m)$ 当且仅当 $a$ 是模 $m$ 的原根。
