# 广义实数系

## 广义实数与序结构

<!-- extended_real_numbers_definition -->
> [!Definition]
> **广义实数系 Extended Real Number System**：在实数系中添加两个符号 $-\infty$ 与 $+\infty$，得到
> $$
> \overline{\mathbb{R}}=[-\infty,+\infty]=\mathbb{R}\cup\{-\infty,+\infty\}.
> $$
> 其全序由实数上的通常序延拓，即对任意 $x\in\mathbb{R}$，
> $$
> -\infty<x<+\infty.
> $$
> 在测度论中，非负广义实数集合记为 $[0,+\infty]$。

<!-- extended_real_order_arithmetic -->
> [!Definition]
> **广义实数的算术约定 Arithmetic Conventions for Extended Real Numbers**：对 $x\in\mathbb{R}$ 及 $a>0$，规定
> $$
> x+(+\infty)=+\infty,
> \qquad
> x+(-\infty)=-\infty,
> $$
> $$
> a(+\infty)=+\infty,
> \qquad
> a(-\infty)=-\infty,
> $$
> 并规定 $0\cdot(\pm\infty)=0$。除这一专门约定外，表达式
> $$
> (+\infty)+(-\infty),\qquad 0\cdot(+\infty),\qquad 0\cdot(-\infty),
> $$
> 在未作上述专门约定时不定义；尤其 $+\infty-+\infty$ 与 $-\infty-(-\infty)$ 均不定义。为了避免歧义，测度论中通常只对取值于 $[0,+\infty]$ 的函数进行无条件的加法和积分构造。

<!-- extended_real_completeness -->
> [!Theorem]
> **广义实数的完备性 Completeness of the Extended Real Numbers**：每个非空集合 $E\subseteq\overline{\mathbb{R}}$ 都有上确界与下确界，分别记为 $\sup E$ 与 $\inf E$，它们属于 $\overline{\mathbb{R}}$。
>
> **证明思路**：若 $E$ 包含 $+\infty$，则上确界为 $+\infty$；若不含但在 $\mathbb{R}$ 中无上界，也令上确界为 $+\infty$；其余情形归结为实数完备性。下确界同理。

## 上确界、下确界与广义极限

<!-- supremum_and_infimum_definition -->
> [!Definition]
> **上确界与下确界 Supremum and Infimum**：设 $E\subseteq\overline{\mathbb{R}}$ 非空。若 $s\in\overline{\mathbb{R}}$ 满足：
> 1. 对所有 $x\in E$，$x\leq s$；
> 2. 对每个满足 $x\leq u$（对所有 $x\in E$）的 $u\in\overline{\mathbb{R}}$，有 $s\leq u$；
>
> 则称 $s$ 为 $E$ 的上确界，记为 $s=\sup E$。下确界 $\inf E$ 对偶地定义为最大的下界。

<!-- extended_real_sequence_limsup_liminf -->
> [!Definition]
> **广义实数列的上极限与下极限 Limit Superior and Limit Inferior of an Extended-Real Sequence**：设 $\{x_n\}_{n\geq1}\subseteq\overline{\mathbb{R}}$。定义
> $$
> \limsup_{n\to\infty}x_n
> =\inf_{n\geq1}\sup_{k\geq n}x_k,
> \qquad
> \liminf_{n\to\infty}x_n
> =\sup_{n\geq1}\inf_{k\geq n}x_k.
> $$
> 总有
> $$
> \liminf_{n\to\infty}x_n\leq\limsup_{n\to\infty}x_n.
> $$
> 当二者相等时，称 $\{x_n\}$ 在广义实数意义下收敛，其公共值记为 $\lim_{n\to\infty}x_n$。

<!-- monotone_extended_real_sequence_convergence -->
> [!Theorem]
> **单调广义实数列收敛定理 Monotone Convergence for Extended-Real Sequences**：若 $\{x_n\}_{n\geq1}\subseteq\overline{\mathbb{R}}$ 单调递增，则
> $$
> \lim_{n\to\infty}x_n=\sup_{n\geq1}x_n.
> $$
> 若 $\{x_n\}_{n\geq1}$ 单调递减，则
> $$
> \lim_{n\to\infty}x_n=\inf_{n\geq1}x_n.
> $$
>
> **证明思路**：递增情形中，每项不超过上确界；若极限不能任意接近上确界，则可构造更小的上界而矛盾。递减情形对偶。

<!-- extended_real_arithmetic_example -->
> [!Example]+
> **广义实数算术的例子 Examples of Extended-Real Arithmetic**：对 $x_n=n$，有 $\lim_{n\to\infty}x_n=+\infty$；对 $y_n=-n$，有 $\lim_{n\to\infty}y_n=-\infty$。但若
> $$
> z_n=x_n+y_n=n+(-n)=0,
> $$
> 则 $z_n$ 恒为 $0$。因此不能仅由 $\lim x_n=+\infty$ 与 $\lim y_n=-\infty$ 推断 $\lim(x_n+y_n)$，这正是将 $+\infty+(-\infty)$ 视为未定式的原因。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Appendix A；Donald L. Cohn, *Measure Theory*, 2nd ed., Section 1.1。
