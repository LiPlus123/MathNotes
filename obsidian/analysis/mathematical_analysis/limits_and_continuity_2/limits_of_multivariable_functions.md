# 多元函数的极限

<!-- real_analysis_multivariable_function_limit_definition -->
> [!Definition]
> **多元函数的极限 Limit of a Multivariable Function**：设 $D\subseteq\mathbb{R}^n$，$a$ 是 $D$ 的聚点，且 $f:D\to\mathbb{R}^m$。若对任意 $\varepsilon>0$，存在 $\delta>0$，使得对任意 $x\in D$，
> $$
> 0<\|x-a\|<\delta\Longrightarrow\|f(x)-L\|<\varepsilon,
> $$
> 则称 $f(x)$ 当 $x\to a$ 时的极限为 $L\in\mathbb{R}^m$，记作 $\lim_{x\to a}f(x)=L$。

<!-- real_analysis_multivariable_limit_uniqueness -->
> [!Theorem]
> **多元函数极限的唯一性 Uniqueness of Multivariable Limits**：在同一聚点处，多元函数的极限至多有一个。
>
> **证明思路**：若 $L_1\ne L_2$ 都是极限，取 $\varepsilon=\|L_1-L_2\|/3$，由三角不等式得到矛盾。

<!-- real_analysis_multivariable_heine_criterion -->
> [!Theorem]
> **多元 Heine 归结原则 Heine Criterion for Multivariable Limits**：设 $a$ 是 $D$ 的聚点。则 $\lim_{x\to a}f(x)=L$，当且仅当对每个满足 $x_k\in D\setminus\{a\}$ 且 $x_k\to a$ 的序列，都有 $f(x_k)\to L$。
>
> **证明思路**：必要性直接由极限定义得到。反之，若极限定义失败，可对每个 $k$ 在 $B(a,1/k)$ 中选取使函数值不落入 $B(L,\varepsilon_0)$ 的点，得到矛盾序列。

<!-- real_analysis_multivariable_iterated_limit_definition -->
> [!Definition]
> **累次极限 Iterated Limit**：设 $f$ 定义在 $(a,b)$ 的去心邻域内。若对每个充分接近 $a$ 且 $x\ne a$ 的 $x$，内层极限 $g(x)=\lim_{y\to b}f(x,y)$ 存在，且 $\lim_{x\to a}g(x)$ 存在，则称后者为 $f$ 在 $(a,b)$ 处的累次极限，记作
> $$
> \lim_{x\to a}\left(\lim_{y\to b}f(x,y)\right).
> $$

<!-- real_analysis_multivariable_iterated_vs_joint_limit -->
> [!Theorem]
> **重极限与累次极限 Joint and Iterated Limits**：若二元函数的重极限 $\lim_{(x,y)\to(a,b)}f(x,y)=L$ 存在，且两个累次极限都有定义，则二者均等于 $L$；反之，两个累次极限相等并不保证重极限存在。
>
> **证明思路**：重极限控制所有趋近路径，特别控制固定一变量后的趋近。反例可取 $f(x,y)=xy/(x^2+y^2)$（$(x,y)\ne(0,0)$）：两个累次极限都为 $0$，但沿 $y=x$ 的值恒为 $1/2$。

<!-- real_analysis_multivariable_limit_at_infinity_definition -->
> [!Definition]
> **多元函数在无穷远处的极限 Limit at Infinity in Euclidean Space**：设 $f:D\to\mathbb{R}^m$，且 $D$ 无界。若对任意 $\varepsilon>0$，存在 $M>0$，使得任意 $x\in D$ 满足 $\|x\|>M$ 时都有 $\|f(x)-L\|<\varepsilon$，则记为
> $$
> \lim_{\|x\|\to+\infty}f(x)=L.
> $$

<!-- real_analysis_multivariable_limit_algebraic_and_composition_rules -->
> [!Theorem]
> **多元函数极限的运算法则与复合法则 Algebraic and Composition Rules**：若 $f,g:D\to\mathbb{R}$ 在 $a$ 处分别趋于 $A,B$，则线性组合、乘积与在 $B\ne0$ 时的商分别趋于相应的线性组合、乘积与商。若 $f:D\to\mathbb{R}^m$ 在 $a$ 处趋于 $b$，而 $g$ 在 $b$ 处连续，则
> $$
> \lim_{x\to a}g(f(x))=g(b).
> $$
>
> **证明思路**：标量运算由一元情形同样的范数估计得到。复合法则将 $g$ 的连续性定义与 $f$ 的极限定义依次应用。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 4；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 4。