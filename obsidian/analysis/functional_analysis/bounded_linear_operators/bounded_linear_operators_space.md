# 有界线性算子空间

<!-- functional_analysis_operator_space_normed -->
> [!Theorem]
> **有界线性算子空间是赋范空间 The Space of Bounded Linear Operators is Normed**：对任意赋范线性空间 $X,Y$，$\mathcal{L}(X,Y)$ 配备算子范数是赋范线性空间。
>
> **证明思路**：$\mathcal{L}(X,Y)$ 对加法和数乘封闭；算子范数的正定性、齐次性与三角不等式已由逐点范数估计得到。

<!-- functional_analysis_operator_norm_convergence_definition -->
> [!Definition]
> **依算子范数收敛 Operator-Norm Convergence**：若 $(T_n)_{n\geq1}\subseteq\mathcal{L}(X,Y)$ 与 $T\in\mathcal{L}(X,Y)$ 满足
> $$
> \|T_n-T\|\to0,
> $$
> 则称 $T_n$ **依算子范数收敛 Converges in Operator Norm** 到 $T$。

<!-- functional_analysis_operator_norm_convergence_uniform -->
> [!Proposition]
> **算子范数收敛等价于单位球上一致收敛 Operator-Norm Convergence is Uniform on the Unit Ball**：对 $T_n,T\in\mathcal{L}(X,Y)$，
> $$
> \|T_n-T\|\to0
> $$
> 当且仅当 $T_nx\to Tx$ 在 $X$ 的闭单位球上关于 $x$ 一致成立。
>
> **证明思路**：算子范数正是 $\sup_{\|x\|\leq1}\|(T_n-T)x\|_Y$，故命题只是该定义的改写。

<!-- functional_analysis_strong_operator_convergence_definition -->
> [!Definition]
> **强收敛 Strong Operator Convergence**：若对每个 $x\in X$ 都有
> $$
> \|T_nx-Tx\|_Y\to0,
> $$
> 则称 $(T_n)$ **强收敛 Strongly Converges** 到 $T$。

<!-- functional_analysis_operator_norm_implies_strong_convergence -->
> [!Proposition]
> **算子范数收敛蕴含强收敛 Operator-Norm Convergence Implies Strong Convergence**：依算子范数收敛必蕴含强收敛；反之一般不成立。
>
> **证明思路**：对固定 $x$，有 $\|(T_n-T)x\|\leq\|T_n-T\|\|x\|$。反例可取 $X=\ell^2$ 上的坐标截断算子 $P_n(x_1,x_2,\ldots)=(x_1,\ldots,x_n,0,\ldots)$；$P_n$ 强收敛到恒等算子，但 $\|P_n-I\|=1$。

<!-- functional_analysis_bounded_operator_space_complete -->
> [!Theorem]
> **有界线性算子空间的完备性 Completeness of the Space of Bounded Linear Operators**：若 $Y$ 是 Banach 空间，则对任意赋范线性空间 $X$，$\mathcal{L}(X,Y)$ 在算子范数下是 Banach 空间。
>
> **证明思路**：设 $(T_n)$ 是算子范数 Cauchy 列。对每个 $x\in X$，$(T_nx)$ 是 $Y$ 中 Cauchy 列，令 $Tx=\lim_nT_nx$。极限保持线性；由 $\|T_n-T_m\|$ 的一致控制并令 $m\to\infty$，可得 $\|T_n-T\|\to0$，并推出 $T$ 有界。