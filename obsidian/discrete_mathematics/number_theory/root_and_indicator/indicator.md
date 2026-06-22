## 指标

<!-- indicator_definition -->
> [!Definition]
> **指标（离散对数）Index (Discrete Logarithm)**：设 $m$ 是存在原根的正整数，$g$ 是模 $m$ 的一个固定原根。对任意满足 $\gcd(a, m) = 1$ 的整数 $a$，存在唯一的整数 $k$，$0 \leq k \leq \varphi(m) - 1$，使得：
> $$g^k \equiv a \pmod{m}$$
> 称 $k$ 为 $a$ 关于底 $g$ 模 $m$ 的**指标**，记作 $\mathrm{ind}_g(a)$，也称为**离散对数**。

> **注**：指标的存在唯一性来自于原根生成完整简化剩余系的性质。类比于实数对数，指标将模 $m$ 下的乘法运算转化为整数加法运算。

<!-- indicator_product_rule -->
> [!Theorem]
> **指标的乘积法则 Product Rule for Index**：设 $m$ 存在原根 $g$，$\gcd(a, m) = 1$，$\gcd(b, m) = 1$，则：
> $$\mathrm{ind}_g(ab) \equiv \mathrm{ind}_g(a) + \mathrm{ind}_g(b) \pmod{\varphi(m)}$$
>
> **证明思路**：设 $\mathrm{ind}_g(a) = s$，$\mathrm{ind}_g(b) = t$，则 $g^s \equiv a$，$g^t \equiv b$，故 $ab \equiv g^{s+t}$。由指标的唯一性（模 $\varphi(m)$）得 $\mathrm{ind}_g(ab) \equiv s + t \pmod{\varphi(m)}$。

<!-- indicator_power_rule -->
> [!Theorem]
> **指标的幂次法则 Power Rule for Index**：设 $m$ 存在原根 $g$，$\gcd(a, m) = 1$，$n \in \mathbb{Z}$，则：
> $$\mathrm{ind}_g(a^n) \equiv n \cdot \mathrm{ind}_g(a) \pmod{\varphi(m)}$$
>
> **证明思路**：由乘积法则反复应用 $n$ 次即得正整数情形；利用 $a \cdot a^{-1} \equiv 1$ 与 $\mathrm{ind}_g(1) = 0$ 推广到负整数。

<!-- indicator_change_of_base -->
> [!Theorem]
> **换底公式 Change of Base Formula**：设 $m$ 存在原根 $g$ 和 $h$，则：
> $$\mathrm{ind}_h(a) \equiv \mathrm{ind}_g(a) \cdot \mathrm{ind}_h(g)^{-1} \pmod{\varphi(m)}$$
> 其中逆元在模 $\varphi(m)$ 意义下取得（$\gcd(\mathrm{ind}_h(g), \varphi(m)) = 1$ 保证逆元存在）。
>
> **证明思路**：由 $g^{\mathrm{ind}_g(a)} \equiv a \equiv h^{\mathrm{ind}_h(a)}$ 以及 $g \equiv h^{\mathrm{ind}_h(g)}$，代入得 $h^{\mathrm{ind}_h(g) \cdot \mathrm{ind}_g(a)} \equiv h^{\mathrm{ind}_h(a)}$，再由阶的判定定理取模 $\varphi(m)$ 即得。

<!-- indicator_power_congruence -->
> [!Theorem]
> **指标在幂次同余方程中的应用 Application to Power Congruences**：设 $m$ 存在原根 $g$，$\gcd(a, m) = 1$，$n \in \mathbb{Z}^+$。则同余方程 $x^n \equiv a \pmod{m}$ 有解当且仅当：
> $$\varphi(m) \mid \gcd(n, \varphi(m)) \cdot \frac{\mathrm{ind}_g(a)}{\gcd(n,\varphi(m))} \iff \gcd(n, \varphi(m)) \mid \mathrm{ind}_g(a)$$
> 即 $\gcd(n, \varphi(m)) \mid \mathrm{ind}_g(a)$。若有解，则恰有 $\gcd(n, \varphi(m))$ 个不同余的解。
>
> **证明思路**：令 $x = g^y$，则方程化为 $ny \equiv \mathrm{ind}_g(a) \pmod{\varphi(m)}$，这是关于 $y$ 的线性同余方程，由裴蜀定理知其有解的充要条件及解数。
