# 弱收敛与弱*收敛

<!-- functional_analysis_weak_convergence_definition -->
> [!Definition]
> **弱收敛 Weak Convergence**：设 $X$ 是 Banach 空间，$(x_n)_{n\geq1}\subseteq X$，$x\in X$。若对每个 $f\in X^*$ 都有
> $$
> f(x_n)\to f(x),
> $$
> 则称 $(x_n)$ **弱收敛 Weakly Converges** 到 $x$，记为 $x_n\rightharpoonup x$。

<!-- functional_analysis_weak_convergence_properties -->
> [!Proposition]
> **弱收敛的基本性质 Basic Properties of Weak Convergence**：设 $x_n\rightharpoonup x$ 于 Banach 空间 $X$。则：
> 1. 极限唯一；
> 2. $(x_n)$ 范数有界；
> 3. $\|x\|\leq\liminf_{n\to\infty}\|x_n\|$；
> 4. 对任意 $T\in\mathcal{L}(X,Y)$，有 $Tx_n\rightharpoonup Tx$。
>
> **证明思路**：唯一性由 Hahn-Banach 定理给出的对偶分离点得到。将 $x_n$ 视为 $X^*$ 上的有界线性泛函并应用一致有界性定理，得到范数有界性；范数的对偶表示给出弱下半连续性。最后对 $g\in Y^*$ 使用 $T^*g\in X^*$。

<!-- functional_analysis_weak_star_convergence_definition -->
> [!Definition]
> **弱*收敛 Weak-Star Convergence**：设 $X$ 是 Banach 空间，$(f_n)_{n\geq1}\subseteq X^*$，$f\in X^*$。若对每个 $x\in X$ 都有
> $$
> f_n(x)\to f(x),
> $$
> 则称 $(f_n)$ **弱*收敛 Weak-Star Converges** 到 $f$，记为 $f_n\overset{*}{\rightharpoonup}f$。

<!-- functional_analysis_weak_star_convergence_properties -->
> [!Proposition]
> **弱*收敛的基本性质 Basic Properties of Weak-Star Convergence**：设 $f_n\overset{*}{\rightharpoonup}f$ 于 $X^*$。则极限唯一；当 $X$ 是 Banach 空间时，$(f_n)$ 在对偶范数下有界；且对任意 $x\in X$，典范嵌入满足
> $$
> (Jx)(f_n)\to(Jx)(f).
> $$
>
> **证明思路**：唯一性由线性泛函作为函数的相等性得到。逐点收敛意味着对每个 $x$，数列 $(f_n(x))$ 有界；将 $f_n$ 视为 $X$ 上的算子，对 Banach 空间 $X$ 应用一致有界性定理即可。最后一式就是弱*收敛的定义。

<!-- functional_analysis_norm_weak_weak_star_relations -->
> [!Proposition]
> **依范数、弱与弱*收敛的关系 Relations among Norm, Weak, and Weak-Star Convergence**：
> $$
> x_n\to x\ \text{依范数}\Longrightarrow x_n\rightharpoonup x.
> $$
> 对 $X^*$ 中的序列，还成立
> $$
> f_n\to f\ \text{依范数}\Longrightarrow f_n\rightharpoonup f
> \Longrightarrow f_n\overset{*}{\rightharpoonup}f.
> $$
> 这些蕴含在无限维空间中一般均不能反向。
>
> **证明思路**：有界泛函保持范数收敛；而弱收敛测试所有 $X^{**}$ 中的泛函，弱*收敛只测试典范嵌入的像 $J(X)\subseteq X^{**}$。在 $\ell^2$ 中，标准正交基弱收敛到 $0$ 而不依范数收敛，说明第一蕴含一般不可逆。