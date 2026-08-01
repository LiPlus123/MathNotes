# $\mathrm{GL}(n)$ 上的解析数论

## 高阶自守系数与求和变换

<!-- number_theory_rankin_selberg_l_function_definition -->
> [!Definition]
> **Rankin--Selberg $L$ 函数 Rankin--Selberg $L$-Function**：对 $\mathrm{GL}_n$ 上的尖点自守表示 $\pi$ 与 $\mathrm{GL}_m$ 上的尖点自守表示 $\pi'$，其 Rankin--Selberg $L$ 函数由局部 Langlands 参数定义为
> $$
> L(s,\pi\times\pi')=\prod_vL(s,\pi_v\times\pi'_v).
> $$
> 在适当归一化下，它具有解析延拓和函数方程；当 $\pi'=\widetilde\pi$ 时在特定情形可能出现极点。

<!-- number_theory_voronoi_summation_concept -->
> [!Concept]
> **Voronoi 求和公式 Voronoi Summation Formula**：对 $\mathrm{GL}_n$ 自守形式的 Fourier--Whittaker 系数，带加法扭曲的有限和经 Mellin 变换和全局函数方程转化为对偶表示系数、Kloosterman 型和与 Hankel 型积分变换的和。精确公式取决于水平、无穷处类型及加法扭曲的模数。

<!-- number_theory_functoriality_concept -->
> [!Concept]
> **Langlands 函子性与解析数论 Langlands Functoriality and Analytic Number Theory**：函子性预言不同群的自守表示及其 $L$ 函数之间的转移。已知的提升与 Rankin--Selberg 理论可将高阶 $L$ 函数的解析性质、零点问题与系数平均归约到更可处理的自守数据。

<!-- number_theory_automorphic_prime_number_theorem -->
> [!Theorem]
> **自守素数定理的形式 Automorphic Prime Number Theorem Form**：若一个自守 $L$ 函数具有所需的零自由区域和零密度控制，则其对数导数的显式公式导出相应广义 von Mangoldt 系数的素数定理型渐近。该结论的误差项和适用表示族取决于零点信息，不能仅由函数方程推出。
>
> **证明思路**：对 $-L'/L$ 使用 Perron 或 Mellin 反演，将求和转为复积分；移动积分线时以零自由区域控制可能的极点和零点贡献。

<!-- number_theory_gl_n_kloosterman_concept -->
> [!Concept]
> **高阶 Kloosterman 和与谱理论 Higher Kloosterman Sums and Spectral Theory**：高秩 Voronoi 和 Kuznetsov 型公式产生广义 Kloosterman 和。它们连接长 Weyl 元、局部 Whittaker 函数与谱平均，是研究自守 Fourier 系数消去和双曲流形算术谱的关键对象。

> **来源**：Hervé Jacquet, Ilja Piatetski-Shapiro, and Joseph Shalika, "Rankin-Selberg Convolutions"；Stephen D. Miller and Wilfried Schmid, "Automorphic Distributions, $L$-Functions, and Voronoi Summation for $\mathrm{GL}(3)$"；Daniel Bump, *Automorphic Forms and Representations*。
