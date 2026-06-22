## 莫比乌斯反演

<!-- mobius_inversion_divisor_form -->
> [!Theorem]
> **莫比乌斯反演公式（整除形式）Möbius Inversion Formula**：设 $f, g: \mathbb{Z}^+ \to \mathbb{C}$ 是数论函数。若对所有正整数 $n$ 有
>
> $$f(n) = \sum_{d \mid n} g(d)$$
>
> 则
>
> $$g(n) = \sum_{d \mid n} \mu\!\left(\frac{n}{d}\right) f(d) = \sum_{d \mid n} \mu(d)\, f\!\left(\frac{n}{d}\right)$$
>
> 反之亦然：若后者成立，则前者也成立。
>
> **证明思路**：将 $f(d) = \sum_{e \mid d} g(e)$ 代入右端，得
>
> $$\sum_{d \mid n} \mu\!\left(\frac{n}{d}\right) \sum_{e \mid d} g(e) = \sum_{e \mid n} g(e) \sum_{\substack{d \mid n \\ e \mid d}} \mu\!\left(\frac{n}{d}\right)$$
>
> 令 $d = ek$，内层求和变为 $\sum_{k \mid (n/e)} \mu\!\left(\frac{n}{ek}\right) = \varepsilon\!\left(\frac{n}{e}\right)$，当且仅当 $e = n$ 时为 $1$，否则为 $0$，故整个表达式等于 $g(n)$。

<!-- mobius_inversion_multiple_form -->
> [!Theorem]
> **莫比乌斯反演公式（倍数形式）Möbius Inversion Formula (Multiple Form)**：设 $f, g: \mathbb{Z}^+ \to \mathbb{C}$。若对所有正整数 $n$ 有
>
> $$f(n) = \sum_{n \mid m} g(m)$$
>
> （其中求和对 $n$ 的所有倍数 $m$ 进行，取有限和需限制范围，此形式常用于解析数论），则
>
> $$g(n) = \sum_{n \mid m} \mu\!\left(\frac{m}{n}\right) f(m)$$

> **注**：莫比乌斯反演的本质是 Dirichlet 卷积中 $\mu$ 为 $\mathbf{1}$ 的逆元（即 $\mu * \mathbf{1} = \varepsilon$），整除形式的反演等价于：若 $f = g * \mathbf{1}$，则 $g = f * \mu$。

<!-- mobius_inversion_example_phi -->
> [!Example]+
> **欧拉函数的莫比乌斯反演 Möbius Inversion for Euler's Totient**：由 $\sum_{d \mid n} \varphi(d) = n = \mathrm{id}(n)$，利用莫比乌斯反演得
>
> $$\varphi(n) = \sum_{d \mid n} \mu(d) \cdot \frac{n}{d} = n \sum_{d \mid n} \frac{\mu(d)}{d}$$
>
> 此式给出欧拉函数的另一表达。利用 $\mu$ 的性质可直接验证它等价于乘积公式 $\varphi(n) = n \prod_{p \mid n}(1 - 1/p)$。
