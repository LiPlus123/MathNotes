# 稠密性与可分性

## $L^p$ 中的稠密子空间

<!-- simple_functions_dense_in_lp -->
> [!Theorem]
> **简单函数在 $L^p$ 中稠密 Density of Simple Functions in $L^p$**：设 $(X,\mathcal{A},\mu)$ 为测度空间，$1\leq p<+\infty$。则所有属于 $L^p(\mu)$ 的简单函数在 $L^p(\mu)$ 中稠密：对每个 $f\in L^p(\mu)$，存在简单函数列 $s_n$ 使得
> $$
> \|f-s_n\|_p\to0.
> $$
>
> **证明思路**：先截断函数值并限制在有限测度的水平集上，得到有界且有限支撑的可测函数；再以分层简单函数一致逼近截断函数。由控制收敛定理处理截断误差。

<!-- continuous_compactly_supported_functions_dense -->
> [!Theorem]
> **紧支撑连续函数的稠密性 Density of Compactly Supported Continuous Functions**：设 $1\leq p<+\infty$。则
> $$
> C_c(\mathbb{R}^n)
> $$
> 在 $L^p(\mathbb{R}^n,m)$ 中稠密。
>
> **证明思路**：先以简单函数逼近 $f$，再用 Lebesgue 测度的正则性将简单函数中的可测集在测度意义下夹逼为紧集与开集；利用 Urysohn 型连续函数在两者之间插值，从而以紧支撑连续函数逼近示性函数。

<!-- smooth_compactly_supported_functions_dense -->
> [!Theorem]
> **紧支撑光滑函数的稠密性 Density of Compactly Supported Smooth Functions**：设 $1\leq p<+\infty$。则
> $$
> C_c^\infty(\mathbb{R}^n)
> $$
> 在 $L^p(\mathbb{R}^n,m)$ 中稠密。
>
> **证明思路**：先由 $C_c(\mathbb{R}^n)$ 的稠密性作连续近似。对紧支撑连续函数与磨光核卷积，得到 $C_c^\infty$ 函数；平移在 $L^p$ 中连续，从而磨光函数在 $L^p$ 范数下收敛于原函数。

## 可分性

<!-- lp_separability_theorem -->
> [!Theorem]
> **Euclidean 空间中 $L^p$ 的可分性 Separability of $L^p$ on Euclidean Space**：对 $1\leq p<+\infty$，
> $$
> L^p(\mathbb{R}^n,m)
> $$
> 是可分 Banach 空间。
>
> **证明思路**：取所有具有有理端点矩形上的、取值为有理复数的有限线性组合。这是可数集，且先由矩形简单函数逼近一般简单函数，再由简单函数稠密性得到其在 $L^p$ 中稠密。

<!-- l_infinity_nonseparability_example -->
> [!Example]+
> **$L^\infty$ 的不可分性 Nonseparability of $L^\infty$**：$L^\infty([0,1],m)$ 不是可分空间。事实上，可构造不可数多个可测集 $E_\alpha\subseteq[0,1]$，使得任意不同的 $\alpha,\beta$ 满足
> $$
> \|\mathbf{1}_{E_\alpha}-\mathbf{1}_{E_\beta}\|_\infty=1.
> $$
> 因而该空间含有不可数个两两距离至少为 $1$ 的点，不可能具有可数稠密子集。

<!-- separability_caveat_general_measure_spaces -->
> [!Proposition]
> **一般测度空间上的可分性条件 Separability Conditions on General Measure Spaces**：对一般测度空间，$1\leq p<+\infty$ 时 $L^p(\mu)$ 未必可分。若 $\mathcal{A}$ 模去零测集后由可数个集合生成，则 $L^p(\mu)$ 可分；欧氏空间上的 Lebesgue $\sigma$ 代数满足这一条件。
>
> **证明思路**：由可数生成集族通过有限集合运算构成可数的简单函数族；该族生成的 $\sigma$ 代数中的简单函数足以在 $L^p$ 中逼近一般可测函数。反例可由带不可数多个正测度原子的空间构造。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 6.2；Walter Rudin, *Real and Complex Analysis*, 3rd ed., Chapter 3。
