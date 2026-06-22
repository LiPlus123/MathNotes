## 狄利克雷卷积

<!-- dirichlet_convolution_definition -->
> [!Definition]
> **狄利克雷卷积 Dirichlet Convolution**：设 $f, g: \mathbb{Z}^+ \to \mathbb{C}$ 是数论函数，定义它们的**狄利克雷卷积** $f * g$ 为
>
> $$(f * g)(n) = \sum_{d \mid n} f(d)\, g\!\left(\frac{n}{d}\right) = \sum_{ab = n} f(a) g(b)$$
>
> 其中求和遍历 $n$ 的所有正因数 $d$（或等价地，遍历所有满足 $ab = n$ 的正整数对 $(a, b)$）。

<!-- dirichlet_convolution_properties -->
> [!Theorem]
> **狄利克雷卷积的基本性质 Basic Properties of Dirichlet Convolution**：狄利克雷卷积满足以下性质：
>
> 1. **交换律**：$f * g = g * f$；
> 2. **结合律**：$(f * g) * h = f * (g * h)$；
> 3. **单位元**：$\varepsilon$ 是 Dirichlet 卷积的单位元，即 $f * \varepsilon = \varepsilon * f = f$；
> 4. **分配律**：$f * (g + h) = f * g + f * h$（其中加法为逐点加法）。
>
> **证明思路**：交换律由求和指标对称性（将 $d$ 换为 $n/d$）直接得到。结合律：两边均等于 $\sum_{abc=n} f(a)g(b)h(c)$。单位元：$(f * \varepsilon)(n) = \sum_{d \mid n} f(d)\varepsilon(n/d) = f(n) \cdot \varepsilon(1) = f(n)$。

<!-- dirichlet_convolution_of_multiplicative -->
> [!Theorem]
> **积性函数的 Dirichlet 卷积仍是积性函数 Dirichlet Convolution Preserves Multiplicativity**：若 $f$ 和 $g$ 均是积性函数，则 $f * g$ 也是积性函数。
>
> **证明思路**：设 $\gcd(m,n)=1$。对 $mn$ 的因数集合，有双射 $\{d : d \mid mn\} \leftrightarrow \{(d_1, d_2) : d_1 \mid m,\ d_2 \mid n\}$（由 $\gcd(m,n)=1$ 保证分解唯一性）。故
>
> $$(f*g)(mn) = \sum_{d \mid mn} f(d)g\!\left(\!\frac{mn}{d}\!\right) = \sum_{d_1 \mid m} \sum_{d_2 \mid n} f(d_1 d_2)g\!\left(\!\frac{m}{d_1}\cdot\frac{n}{d_2}\!\right)$$
>
> 再由 $f, g$ 的积性（$\gcd(d_1,d_2)=1$ 及 $\gcd(m/d_1, n/d_2)=1$），右端分离为 $(f*g)(m)(f*g)(n)$。

<!-- dirichlet_inverse -->
> [!Theorem]
> **Dirichlet 逆 Dirichlet Inverse**：数论函数 $f$ 存在 Dirichlet 逆（即存在 $g$ 使得 $f * g = \varepsilon$）当且仅当 $f(1) \neq 0$。若 $f(1) \neq 0$，则 Dirichlet 逆 $f^{-1}$ 由以下递推唯一确定：
>
> $$f^{-1}(1) = \frac{1}{f(1)}, \qquad f^{-1}(n) = -\frac{1}{f(1)} \sum_{\substack{d \mid n \\ d < n}} f\!\left(\frac{n}{d}\right) f^{-1}(d) \quad (n > 1)$$
>
> 特别地，$\mathbf{1}$ 的 Dirichlet 逆为 $\mu$，即 $\mu * \mathbf{1} = \varepsilon$。
>
> **证明思路**：由 $(f * g)(1) = f(1)g(1) = 1$ 定出 $g(1) = 1/f(1)$；对 $n > 1$，由 $(f * g)(n) = 0$ 展开得关于 $g(n)$ 的线性方程，唯一解即上式。

<!-- dirichlet_convolution_ring -->
> [!Theorem]
> **数论函数环 Ring of Arithmetic Functions**：全体数论函数 $\mathcal{A} = \{f : \mathbb{Z}^+ \to \mathbb{C}\}$ 在逐点加法与 Dirichlet 卷积下构成一个**交换环**，称为**狄利克雷环**。其中：
> - 加法单位元为零函数 $\mathbf{0}$；
> - 乘法单位元为 $\varepsilon$；
> - 乘法可逆元恰好是满足 $f(1) \neq 0$ 的函数，它们构成 $\mathcal{A}$ 的乘法群。
>
> 此外，$\mathcal{A}$ 是整环（无零因子域）：若 $f * g = \mathbf{0}$ 且 $f \neq \mathbf{0}$，则 $g = \mathbf{0}$。
>
> **证明思路**：交换律、结合律、分配律已验证。乘法逆元存在性由上述定理给出。无零因子：设 $f(m_0)$ 为 $f$ 的第一个非零值，$g(n_0)$ 为 $g$ 的第一个非零值，则 $(f*g)(m_0 n_0)$ 的展开中仅有 $f(m_0)g(n_0)$ 一项非零，故 $f*g \neq \mathbf{0}$。

> **注**：常见 Dirichlet 卷积关系汇总：
> - $\mathbf{1} * \mathbf{1} = d$（约数个数函数）
> - $\mathrm{id} * \mathbf{1} = \sigma$（约数和函数）
> - $\varphi * \mathbf{1} = \mathrm{id}$（欧拉函数求和性质）
> - $\mu * \mathbf{1} = \varepsilon$（莫比乌斯函数基本性质）
> - $\mu * \mathrm{id} = \varphi$（莫比乌斯反演导出欧拉函数）
