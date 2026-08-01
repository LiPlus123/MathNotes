## 数论函数的均值

<!-- analytic_number_theory_average_order_definition -->
> [!Definition]
> **平均阶 Average Order**：设 $f:\mathbb{Z}^+\to\mathbb{C}$ 为数论函数。若存在函数 $g:[1,\infty)\to\mathbb{C}$，使得
>
> $$\sum_{n\leq x}f(n)\sim\sum_{n\leq x}g(n)\qquad(x\to\infty),$$
>
> 则称 $g(n)$ 是 $f(n)$ 的**平均阶**。特别地，若 $\sum_{n\leq x}f(n)\sim cx$，则称常数 $c$ 是 $f$ 的平均值。

<!-- analytic_number_theory_normal_order_definition -->
> [!Definition]
> **正规阶 Normal Order**：设 $f$ 为实值数论函数，$g:[1,\infty)\to\mathbb{R}$。若对每个 $\varepsilon>0$，有
>
> $$\#\left\{n\leq x:\lvert f(n)-g(n)\rvert>\varepsilon\lvert g(n)\rvert\right\}=o(x)\qquad(x\to\infty),$$
>
> 则称 $g(n)$ 是 $f(n)$ 的正规阶。换言之，除去密度为零的一组整数，$f(n)$ 与 $g(n)$ 相对接近。

<!-- analytic_number_theory_divisor_count_average_order -->
> [!Theorem]
> **约数个数函数的平均阶 Average Order of the Divisor-Count Function**：当 $x\geq1$ 时，
>
> $$\sum_{n\leq x}d(n)=x\log x+(2\gamma-1)x+O\left(\sqrt{x}\right),$$
>
> 其中 $\gamma$ 为 Euler-Mascheroni 常数。因此 $d(n)$ 的平均阶为 $\log n$。
>
> **证明思路**：将左端重写为满足 $ab\leq x$ 的正整数点对数，并以双曲线法将格点按 $a\leq\sqrt{x}$ 与 $b\leq\sqrt{x}$ 分割；再估计取整函数的误差。

<!-- analytic_number_theory_divisor_sum_average_order -->
> [!Theorem]
> **约数和函数的平均阶 Average Order of the Divisor-Sum Function**：当 $x\geq1$ 时，
>
> $$\sum_{n\leq x}\sigma(n)=\frac{\pi^2}{12}x^2+O(x\log x).$$
>
> 因而 $\sigma(n)$ 的平均阶为 $\dfrac{\pi^2}{6}n$。
>
> **证明思路**：交换求和次序，得到 $\sum_{d\leq x}d\lfloor x/d\rfloor$。以 $\lfloor x/d\rfloor=x/d+O(1)$ 代换，并利用 $\sum_{d\geq1}d^{-2}=\pi^2/6$ 及尾和估计。

<!-- analytic_number_theory_euler_phi_average_order -->
> [!Theorem]
> **Euler 函数的平均阶 Average Order of Euler's Totient Function**：当 $x\geq1$ 时，
>
> $$\sum_{n\leq x}\varphi(n)=\frac{3}{\pi^2}x^2+O(x\log x).$$
>
> 因而 $\varphi(n)$ 的平均阶为 $\dfrac{6}{\pi^2}n$。
>
> **证明思路**：由 $\varphi(n)=n\sum_{d\mid n}\mu(d)/d$ 交换求和，主项化为 $\frac{x^2}{2}\sum_{d\geq1}\mu(d)/d^2$。再用 $\sum_{d\geq1}\mu(d)/d^2=1/\zeta(2)=6/\pi^2$，并估计截断与取整误差。