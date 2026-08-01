# Taylor 级数

<!-- real_analysis_taylor_polynomial_and_series_definition -->
> [!Definition]
> **Taylor 多项式与 Taylor 级数 Taylor Polynomial and Taylor Series**：设 $f$ 在 $x_0$ 的邻域内具有各阶导数。其 $n$ 阶 Taylor 多项式为
> $$
> T_n(x)=\sum_{k=0}^n\frac{f^{(k)}(x_0)}{k!}(x-x_0)^k,
> $$
> 相应的 Taylor 级数为 $\sum_{k=0}^\infty f^{(k)}(x_0)(x-x_0)^k/k!$。

<!-- real_analysis_taylor_formula_with_lagrange_remainder -->
> [!Theorem]
> **Taylor 公式及 Lagrange 余项 Taylor's Formula with Lagrange Remainder**：若 $f$ 在包含 $x_0,x$ 的区间上有 $n+1$ 阶导数，则存在介于 $x_0$ 与 $x$ 之间的 $\xi$，使得
> $$
> f(x)=T_n(x)+\frac{f^{(n+1)}(\xi)}{(n+1)!}(x-x_0)^{n+1}.
> $$
>
> **证明思路**：构造在 $x_0$ 具有高阶零点的辅助函数，并反复应用 Rolle 定理。

<!-- real_analysis_taylor_expansion_condition -->
> [!Theorem]
> **Taylor 展开的充分条件 Sufficient Condition for Taylor Expansion**：若在某个以 $x_0$ 为中心的区间内，Taylor 余项 $R_n(x)=f(x)-T_n(x)$ 随 $n\to\infty$ 趋于 $0$，则该区间内
> $$
> f(x)=\sum_{k=0}^\infty\frac{f^{(k)}(x_0)}{k!}(x-x_0)^k.
> $$
> 特别地，若对每个固定 $x$，有 $|f^{(n+1)}(\xi)|\leq M_n$ 且 $M_n|x-x_0|^{n+1}/(n+1)!\to0$，则结论成立。
>
> **证明思路**：将 Lagrange 余项的估计代入 Taylor 公式。

<!-- real_analysis_taylor_series_uniqueness -->
> [!Theorem]
> **Taylor 系数的唯一性 Uniqueness of Taylor Coefficients**：若 $f$ 在 $x_0$ 邻域内表示为幂级数
> $$
> f(x)=\sum_{n=0}^\infty a_n(x-x_0)^n,
> $$
> 则 $a_n=f^{(n)}(x_0)/n!$。因此幂级数表示若存在便唯一。
>
> **证明思路**：在收敛半径内逐项求导 $n$ 次，再令 $x=x_0$。

<!-- real_analysis_elementary_taylor_expansions -->
> [!Example]+
> **初等函数的 Taylor 展开 Elementary Taylor Expansions**：在各自收敛区间内，
> $$
> e^x=\sum_{n=0}^\infty\frac{x^n}{n!},\qquad
> \sin x=\sum_{n=0}^\infty(-1)^n\frac{x^{2n+1}}{(2n+1)!},
> $$
> $$
> \cos x=\sum_{n=0}^\infty(-1)^n\frac{x^{2n}}{(2n)!},\qquad
> \frac1{1-x}=\sum_{n=0}^\infty x^n\quad(|x|<1).
> $$
> **证明思路**：计算各阶导数在展开点的值，并用 Lagrange 余项估计或几何级数恒等式证明收敛到原函数。

> **注**：$C^\infty$ 函数未必等于其 Taylor 级数；必须验证余项趋于零。参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 8。