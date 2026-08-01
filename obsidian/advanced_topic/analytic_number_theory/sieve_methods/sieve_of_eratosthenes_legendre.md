## Eratosthenes-Legendre 筛法

<!-- analytic_number_theory_sifted_set_definition -->
> [!Definition]
> **筛余集 Sifted Set**：设 $\mathcal{A}$ 是有限整数集，$\mathcal{P}$ 是素数集合，$z\geq2$。令
>
> $$P(z)=\prod_{\substack{p<z\\p\in\mathcal{P}}}p,$$
>
> 并定义筛余集的基数为
>
> $$S(\mathcal{A},\mathcal{P},z)=\#\{n\in\mathcal{A}:\gcd(n,P(z))=1\}.$$
>
> 它计数未被 $\mathcal P$ 中小于 $z$ 的任一素数整除的元素。

<!-- analytic_number_theory_eratosthenes_sieve_example -->
> [!Example]+
> **Eratosthenes 筛 Eratosthenes Sieve**：取 $\mathcal{A}=\{2,3,\ldots,x\}$、$\mathcal{P}$ 为全体素数、$z=\sqrt{x}$。则 $S(\mathcal{A},\mathcal{P},z)$ 恰为不超过 $x$ 的素数个数，因为每个不超过 $x$ 的合数都有不超过 $\sqrt{x}$ 的素因子。

<!-- analytic_number_theory_legendre_sieve_inclusion_exclusion_formula -->
> [!Theorem]
> **Legendre 筛与容斥公式 Legendre Sieve and Inclusion-Exclusion Formula**：令
>
> $$\mathcal{A}_d=\{n\in\mathcal{A}:d\mid n\}.$$
>
> 则有精确恒等式
>
> $$S(\mathcal{A},\mathcal{P},z)=\sum_{d\mid P(z)}\mu(d)\#\mathcal{A}_d.$$
>
> **证明思路**：对每个 $n\in\mathcal A$，Möbius 函数的基本求和性质给出
>
> $$\sum_{d\mid\gcd(n,P(z))}\mu(d)=\begin{cases}1,&\gcd(n,P(z))=1,\\0,&\text{否则}.\end{cases}$$
>
> 将该等式对 $n$ 求和并交换有限求和次序。

<!-- analytic_number_theory_legendre_sieve_density_estimate -->
> [!Theorem]
> **Legendre 筛的密度主项 Legendre Sieve Density Main Term**：若对每个 $d\mid P(z)$ 有
>
> $$\#\mathcal{A}_d=Xg(d)+r_d,$$
>
> 其中 $g$ 为积性函数且 $0\leq g(p)<1$，则
>
> $$S(\mathcal{A},\mathcal{P},z)=X\prod_{\substack{p<z\\p\in\mathcal P}}\left(1-g(p)\right)+\sum_{d\mid P(z)}\mu(d)r_d.$$
>
> **证明思路**：将近似式代入容斥公式。积性与 $P(z)$ 的平方自由性使主项的 Möbius 和分解为 Euler 乘积。

> **注**：直接容斥包含 $2^{\pi(z)}$ 个项；当 $z$ 增大时，误差项的累积通常使该精确公式难以直接使用，这促使了组合筛与加权筛的发展。