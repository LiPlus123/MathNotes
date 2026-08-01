## 大筛法

<!-- analytic_number_theory_large_sieve_inequality -->
> [!Theorem]
> **大筛不等式 Large Sieve Inequality**：对任意复数列 $(a_n)_{M<n\leq M+N}$ 和任意 $Q\geq1$，有
>
> $$\sum_{q\leq Q}\ \sum_{\substack{a\bmod q\\\gcd(a,q)=1}}
> \left|\sum_{M<n\leq M+N}a_ne^{2\pi ian/q}\right|^2
> \leq (N+Q^2-1)\sum_{M<n\leq M+N}|a_n|^2.$$
>
> **证明思路**：将既约分数 $a/q$ 视为单位圆上的分离点，应用对偶性原理和指数和的大筛间距估计；不同分母的既约分数之间至少相隔约 $Q^{-2}$。

<!-- analytic_number_theory_large_sieve_arithmetic_progressions_corollary -->
> [!Corollary]
> **算术级数中的大筛 Large Sieve for Arithmetic Progressions**：大筛不等式控制数列在众多模数和既约剩余类上的平均偏差。例如，它给出
>
> $$\sum_{q\leq Q}\sum_{\substack{a\bmod q\\\gcd(a,q)=1}}
> \left|\sum_{\substack{M<n\leq M+N\\n\equiv a\, (\mathrm{mod}\,q)}}a_n-
> \frac{1}{\varphi(q)}\sum_{\substack{M<n\leq M+N\\\gcd(n,q)=1}}a_n\right|^2$$
>
> 的上界可由 $(N+Q^2)\sum|a_n|^2$ 量级控制。
>
> **证明思路**：使用 Dirichlet 特征的正交关系将同余类偏差转化为非主特征扭曲和，再对这些和应用大筛不等式的对偶形式。

<!-- analytic_number_theory_bombieri_vinogradov_theorem -->
> [!Theorem]
> **Bombieri-Vinogradov 定理 Bombieri-Vinogradov Theorem**：对每个 $A>0$，存在 $B>0$，使得当
>
> $$Q\leq\frac{\sqrt{x}}{(\log x)^B}$$
>
> 时，
>
> $$\sum_{q\leq Q}\max_{\gcd(a,q)=1}
> \left|\psi(x;q,a)-\frac{x}{\varphi(q)}\right|
> \ll_A\frac{x}{(\log x)^A}.$$
>
> **证明思路**：结合 Vaughan 恒等式将 von Mangoldt 和拆为 I 型与 II 型双线性和；分别运用大筛不等式、均值估计和 Siegel-Walfisz 定理处理小模数部分，得到平均意义下接近 $x^{1/2}$ 的分布水平。

<!-- analytic_number_theory_level_of_distribution_note -->
> [!Definition]
> **分布水平 Level of Distribution**：若对每个 $A>0$，存在 $B>0$，使得当 $Q\leq x^{\vartheta}/(\log x)^B$ 时，Bombieri-Vinogradov 型平均误差界成立，则称素数的分布水平至少为 $\vartheta$。Bombieri-Vinogradov 定理表明可取 $\vartheta=1/2$。