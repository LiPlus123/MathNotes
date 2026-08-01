# 外推与向量值估计

## Rubio de Francia 外推

<!-- rubio_de_francia_extrapolation -->
> [!Theorem]
> **Rubio de Francia 外推定理 Rubio de Francia Extrapolation Theorem**：设 $1<p_0<+\infty$，并设 $\mathcal{F}$ 是非负可测函数对 $(f,g)$ 的族。若对所有 $w\in A_{p_0}$ 都有
> $$
> \|f\|_{L^{p_0}(w)}\leq C([w]_{A_{p_0}})\|g\|_{L^{p_0}(w)},
> $$
> 则对每个 $1<p<+\infty$ 及每个 $w\in A_p$，都有
> $$
> \|f\|_{L^p(w)}\leq C_p([w]_{A_p})\|g\|_{L^p(w)}.
> $$
>
> **证明思路**：对对偶测试函数迭代加权极大算子，构造支配它的 $A_1$ 权。再以幂变换产生适用于 $p_0$ 的辅助权，并应用初始估计和加权对偶性。

<!-- weak_extrapolation_theorem -->
> [!Theorem]
> **弱型外推 Weak-Type Extrapolation**：若对某个 $1\leq p_0<+\infty$，所有 $w\in A_{p_0}$ 上均有一致的弱型估计
> $$
> \|f\|_{L^{p_0,\infty}(w)}\leq C([w]_{A_{p_0}})\|g\|_{L^{p_0}(w)},
> $$
> 则在标准外推假设下，可推出对所有 $p>1$、$w\in A_p$ 的相应弱型或强型加权估计；具体结论取决于函数对族的封闭性质。
>
> **注**：弱型外推有若干版本，须精确指定起始指数、权类和函数对结构；其共同机制仍是 Rubio de Francia 的 $A_1$ 权构造。

<!-- lorentz_extrapolation -->
> [!Corollary]
> **Lorentz 空间外推 Lorentz-Space Extrapolation**：在强型外推的条件下，实插值与分布函数方法可将许多 $L^p(w)$ 估计提升为 Lorentz 估计
> $$
> \|Tf\|_{L^{p,q}(w)}\leq C\|f\|_{L^{p,q}(w)},
> \qquad 1<p<+\infty,\quad0<q\leq+\infty.
> $$
> 这里 $L^{p,q}(w)$ 以测度 $w(x)\,dx$ 定义。

<!-- weighted_vector_valued_maximal -->
> [!Theorem]
> **加权向量值极大函数不等式 Weighted Vector-Valued Maximal Inequality**：若 $1<p,q<+\infty$ 且 $w\in A_p$，则对有限函数列 $(f_k)$，
> $$
> \left\|\left(\sum_k|Mf_k|^q\right)^{1/q}\right\|_{L^p(w)}
> \leq C\left\|\left(\sum_k|f_k|^q\right)^{1/q}\right\|_{L^p(w)}.
> $$
> 这称为 Fefferman-Stein 向量值极大不等式，是加权平方函数理论的基础。
>
> **证明思路**：先证明一个指数处的加权不等式，或使用加权良 $\lambda$ 技术；再将向量值表达式作为函数对应用外推。

<!-- weighted_square_function_estimate -->
> [!Corollary]
> **加权平方函数估计 Weighted Square-Function Estimate**：对适当的 Littlewood-Paley 平方函数 $S$，当 $1<p<+\infty$、$w\in A_p$ 时，
> $$
> \|Sf\|_{L^p(w)}\asymp\|f\|_{L^p(w)}.
> $$
> 该结论依赖于 Littlewood-Paley 投影的向量值 Calderón-Zygmund 估计及其对偶估计。

> **来源**：José L. Rubio de Francia, *Factorization Theory and $A_p$ Weights*, American Mathematical Society, 1986；David Cruz-Uribe, José María Martell, and Carlos Pérez, *Weights, Extrapolation and the Theory of Rubio de Francia*, Birkhäuser, 2011。
