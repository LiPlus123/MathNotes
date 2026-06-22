## 雅可比符号

<!-- jacobi_symbol_definition -->
> [!Definition]
> **雅可比符号 Jacobi Symbol**：设 $n$ 是正奇数，$n = p_1^{e_1} p_2^{e_2} \cdots p_k^{e_k}$ 是素因子分解，$a \in \mathbb{Z}$。雅可比符号定义为：
> $$\left(\frac{a}{n}\right) = \left(\frac{a}{p_1}\right)^{e_1} \left(\frac{a}{p_2}\right)^{e_2} \cdots \left(\frac{a}{p_k}\right)^{e_k}$$
> 其中右边每个因子均为勒让德符号。约定 $\left(\dfrac{a}{1}\right) = 1$。

<!-- jacobi_symbol_properties -->
> [!Theorem]
> **雅可比符号的基本性质 Basic Properties of Jacobi Symbol**：设 $n, m$ 是正奇数，$a, b \in \mathbb{Z}$，则：
> 1. **完全积性**：$\left(\dfrac{ab}{n}\right) = \left(\dfrac{a}{n}\right)\left(\dfrac{b}{n}\right)$，$\left(\dfrac{a}{mn}\right) = \left(\dfrac{a}{m}\right)\left(\dfrac{a}{n}\right)$；
> 2. **周期性**：若 $a \equiv b \pmod{n}$，则 $\left(\dfrac{a}{n}\right) = \left(\dfrac{b}{n}\right)$；
> 3. **特殊值**：$\left(\dfrac{0}{n}\right) = \begin{cases}1 & n=1\\ 0 & n>1\end{cases}$，$\left(\dfrac{1}{n}\right) = 1$；
> 4. **取值**：$\left(\dfrac{a}{n}\right) \in \{-1, 0, 1\}$；若 $\gcd(a,n) > 1$ 则值为 $0$。
>
> **证明思路**：均由定义展开为勒让德符号之积，再利用勒让德符号的对应性质逐项化简。

<!-- jacobi_symbol_qr_caution -->
> [!Theorem]
> **雅可比符号与二次剩余的关系 Jacobi Symbol and QR**：设 $n$ 是正奇数，$\gcd(a,n) = 1$。
> - 若 $a$ 是模 $n$ 的二次剩余（即 $x^2 \equiv a \pmod{n}$ 有解），则 $\left(\dfrac{a}{n}\right) = 1$；
> - 反之，$\left(\dfrac{a}{n}\right) = 1$ **不能**推出 $a$ 是模 $n$ 的二次剩余（当 $n$ 为合数时）。
>
> **证明思路**：若 $x^2 \equiv a \pmod{n}$，则对 $n$ 的每个素因子 $p_i$，均有 $x^2 \equiv a \pmod{p_i}$，故每个勒让德符号均为 $1$，乘积亦为 $1$。反向不成立的反例：$n = 15$，$a = 4$，$\left(\dfrac{4}{15}\right) = 1$，但 $x^2 \equiv 4 \pmod{15}$ 的解为 $x \equiv \pm 2 \pmod{15}$，确实有解；而 $a = -1$，$\left(\dfrac{-1}{15}\right) = 1$，但 $x^2 \equiv -1 \pmod{15}$ 无解。

<!-- jacobi_symbol_reciprocity -->
> [!Theorem]
> **雅可比符号的互反律 Reciprocity Law for Jacobi Symbol**：设 $m, n$ 是互素的正奇数，则：
> $$\left(\frac{m}{n}\right)\left(\frac{n}{m}\right) = (-1)^{\frac{m-1}{2} \cdot \frac{n-1}{2}}$$
>
> 以及补充公式：
> $$\left(\frac{-1}{n}\right) = (-1)^{(n-1)/2}, \quad \left(\frac{2}{n}\right) = (-1)^{(n^2-1)/8}$$
>
> **证明思路**：将 $m, n$ 展开为素因子之积，对每对素因子应用勒让德符号的二次互反律，利用指数的算术性质（关于 $\dfrac{p-1}{2}$ 的加法性）归纳整合，得到与勒让德情形完全相同形式的公式。

<!-- jacobi_symbol_computation_use -->
> [!Corollary]
> **雅可比符号的计算应用 Computational Use of Jacobi Symbol**：利用雅可比符号的互反律，可以在**不对 $n$ 做素因子分解**的情况下，像辗转相除一样递归计算 $\left(\dfrac{a}{n}\right)$：
> $$\left(\frac{a}{n}\right) = \left(\frac{a \bmod n}{n}\right), \quad \left(\frac{2a}{n}\right) = \left(\frac{2}{n}\right)\left(\frac{a}{n}\right)$$
> 结合互反律翻转分子分母（带符号修正），直至分子为 $0$ 或 $1$ 为止。
>
> **证明思路**：该算法的正确性来自雅可比符号的周期性与完全积性，时间复杂度与欧几里得算法相同，为 $O(\log n)$ 步。

> **注**：雅可比符号是判断模 $n$ 二次剩余的必要条件工具（而非充要条件），在 Solovay–Strassen 素性测试等算法中有重要应用。其互反律使得勒让德符号的计算可推广到合数分母，而无需素因子分解。
