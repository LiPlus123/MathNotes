# $L^p$ 空间的对偶

## $L^p$ 与 $L^q$ 的对偶

<!-- conjugate_exponent_definition -->
> [!Definition]
> **共轭指数 Conjugate Exponents**：对 $1\leq p\leq+\infty$，若 $q$ 满足
> $$
> \frac{1}{p}+\frac{1}{q}=1,
> $$
> 则称 $q$ 为 $p$ 的共轭指数。特别地，$1$ 与 $+\infty$ 互为共轭指数；当 $1<p<+\infty$ 时，
> $$
> q=\frac{p}{p-1}.
> $$

<!-- lp_duality_functional -->
> [!Definition]
> **由 $L^q$ 函数给出的对偶泛函 Functional Induced by an $L^q$ Function**：设 $f\in L^q(\mu)$，其中 $p,q$ 共轭。定义
> $$
> T_f:L^p(\mu)\to\mathbb{C},
> \qquad
> T_f(g)=\int_Xg\overline{f}\,d\mu.
> $$
> 则 $T_f$ 是连续线性泛函，并由 Hölder 不等式满足
> $$
> \|T_f\|\leq\|f\|_q.
> $$

<!-- lp_duality_theorem -->
> [!Theorem]
> **$L^p$ 对偶定理 $L^p$ Duality Theorem**：设 $(X,\mathcal{A},\mu)$ 为 $\sigma$ 有限测度空间，$1\leq p<+\infty$，$q$ 为 $p$ 的共轭指数。则映射
> $$
> L^q(\mu)\to(L^p(\mu))^*,
> \qquad
> f\mapsto T_f
> $$
> 是等距同构；即每个连续线性泛函 $T\in(L^p(\mu))^*$ 都唯一地可表示为
> $$
> T(g)=\int_Xg\overline{f}\,d\mu
> $$
> 对某个 $f\in L^q(\mu)$ 成立，并且
> $$
> \|T\|=\|f\|_q.
> $$
>
> **证明思路**：Hölder 不等式给出 $T_f$ 的有界性。反向对泛函 $T$，先在有限测度的可测集上定义带号或复测度 $E\mapsto T(\mathbf{1}_E)$，证明其对 $\mu$ 绝对连续；再用 Radon-Nikodym 定理得到密度 $f$。最后利用特定的幂函数测试或截断函数证明 $f\in L^q$ 且范数相等；$\sigma$ 有限性用于拼接局部构造。

<!-- riesz_representation_l2_theorem -->
> [!Theorem]
> **Hilbert 空间的 Riesz 表示定理 Riesz Representation Theorem for $L^2$**：对每个连续线性泛函 $T\in(L^2(\mu))^*$，存在唯一的 $f\in L^2(\mu)$，使得
> $$
> T(g)=\langle g,f\rangle_{L^2}
> =\int_Xg\overline{f}\,d\mu
> $$
> 对所有 $g\in L^2(\mu)$ 成立，且 $\|T\|=\|f\|_2$。
>
> **证明思路**：这是一般 Hilbert 空间 Riesz 表示定理在 $L^2$ 上的应用；也可看作 $p=q=2$ 的 $L^p$ 对偶定理。

<!-- dual_of_l_infinity_proposition -->
> [!Proposition]
> **$L^\infty$ 的对偶 Dual of $L^\infty$**：对每个 $f\in L^1(\mu)$，
> $$
> T_f(g)=\int_Xg\overline{f}\,d\mu
> $$
> 定义 $(L^\infty(\mu))^*$ 中的连续线性泛函，并满足 $\|T_f\|=\|f\|_1$。但一般情况下
> $$
> (L^\infty(\mu))^*\ne L^1(\mu).
> $$
> $L^\infty$ 的完整对偶可由有界有限可加测度描述，因而可能包含不由 $L^1$ 函数表示的泛函。
>
> **证明思路**：嵌入 $L^1\hookrightarrow(L^\infty)^*$ 来自 Hölder 不等式。对非原子空间，可用 Hahn-Banach 定理构造不对弱星连续的泛函，说明该嵌入通常不是满射。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 6.2；Walter Rudin, *Real and Complex Analysis*, 3rd ed., Chapter 6。
