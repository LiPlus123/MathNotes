# 测度

## 测度的定义与基本性质

<!-- measure_definition -->
> [!Definition]
> **测度 Measure**：设 $(X,\mathcal{A})$ 为可测空间。映射
> $$
> \mu:\mathcal{A}\to[0,+\infty]
> $$
> 称为 $X$ 上的测度，若满足：
> 1. $\mu(\varnothing)=0$；
> 2. 对任意两两不交的可测集列 $\{A_n\}_{n\geq1}$，
> $$
> \mu\left(\bigcup_{n=1}^{\infty}A_n\right)=\sum_{n=1}^{\infty}\mu(A_n).
> $$
> 此性质称为可数可加性。

<!-- measure_monotonicity_and_subadditivity -->
> [!Proposition]
> **测度的单调性与可数次可加性 Monotonicity and Countable Subadditivity**：若 $\mu$ 是测度，则对 $A,B\in\mathcal{A}$ 与任意 $\{A_n\}_{n\geq1}\subseteq\mathcal{A}$，有
> $$
> A\subseteq B\Rightarrow\mu(A)\leq\mu(B),
> \qquad
> \mu\left(\bigcup_{n=1}^{\infty}A_n\right)\leq\sum_{n=1}^{\infty}\mu(A_n).
> $$
>
> **证明思路**：将 $B$ 分解为不交并 $A\cup(B\setminus A)$ 得单调性；再将任意集合列互不交化，使用可数可加性和单调性。

<!-- measure_continuity -->
> [!Theorem]
> **测度的连续性 Continuity of a Measure**：设 $\mu$ 是测度。
> 1. 若 $A_1\subseteq A_2\subseteq\cdots$，则
> $$
> \mu\left(\bigcup_{n=1}^{\infty}A_n\right)=\lim_{n\to\infty}\mu(A_n).
> $$
> 2. 若 $A_1\supseteq A_2\supseteq\cdots$ 且 $\mu(A_1)<+\infty$，则
> $$
> \mu\left(\bigcap_{n=1}^{\infty}A_n\right)=\lim_{n\to\infty}\mu(A_n).
> $$
>
> **证明思路**：递增情形将 $A_n$ 写为逐项不交增量的有限并。递减情形对有限测度集 $A_1$ 取补后化为递增情形；有限性保证差值运算有意义。

<!-- probability_measure_definition -->
> [!Definition]
> **概率测度 Probability Measure**：满足
> $$
> \mu(X)=1
> $$
> 的测度 $\mu$ 称为概率测度。三元组 $(X,\mathcal{A},\mu)$ 称为概率空间。

<!-- sigma_finite_measure_definition -->
> [!Definition]
> **$\sigma$ 有限测度 $\sigma$-Finite Measure**：测度空间 $(X,\mathcal{A},\mu)$ 称为 $\sigma$ 有限的，若存在可测集列 $\{X_n\}_{n\geq1}$，使得
> $$
> X=\bigcup_{n=1}^{\infty}X_n,
> \qquad
> \mu(X_n)<+\infty\quad(n\geq1).
> $$

<!-- complete_measure_definition -->
> [!Definition]
> **完备测度 Complete Measure**：测度空间 $(X,\mathcal{A},\mu)$ 称为完备的，若每个零测可测集的任意子集均可测；即当 $N\in\mathcal{A}$、$\mu(N)=0$ 且 $E\subseteq N$ 时，有 $E\in\mathcal{A}$。

<!-- completion_of_measure -->
> [!Theorem]
> **测度的完备化 Completion of a Measure**：设 $(X,\mathcal{A},\mu)$ 是测度空间。令
> $$
> \overline{\mathcal{A}}=\{A\cup N:A\in\mathcal{A},\ N\subseteq Z\text{，其中 }Z\in\mathcal{A},\ \mu(Z)=0\}.
> $$
> 则 $\overline{\mathcal{A}}$ 是 $\sigma$ 代数，且
> $$
> \overline{\mu}(A\cup N)=\mu(A)
> $$
> 定义了其上的完备测度，称为 $\mu$ 的完备化。
>
> **证明思路**：零测可测集的子集可在并、补和可数并的运算中吸收进零测集；再利用测度对零测集的单调性验证 $\overline{\mu}$ 与表示无关，并继承可数可加性。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 1.1；Elias M. Stein and Rami Shakarchi, *Real Analysis*, Chapter 1。
