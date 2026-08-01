# 集合运算与极限

## 集合的基本运算

<!-- set_complement_and_de_morgan_laws -->
> [!Theorem]
> **De Morgan 律 De Morgan's Laws**：设 $X$ 为全集，$\{A_i\}_{i\in I}$ 为 $X$ 的子集族。则
> $$
> \left(\bigcup_{i\in I}A_i\right)^c=\bigcap_{i\in I}A_i^c,
> \qquad
> \left(\bigcap_{i\in I}A_i\right)^c=\bigcup_{i\in I}A_i^c,
> $$
> 其中补集相对于 $X$ 取。特别地，$A\setminus B=A\cap B^c$。
>
> **证明思路**：对任意 $x\in X$，逐一展开“属于并集”“属于交集”和“属于补集”的逻辑条件，再用否定的量词律即可。

<!-- disjointification_of_countable_family -->
> [!Lemma]
> **可数集族的互不交化 Disjointification of a Countable Family**：对任意集合列 $\{A_n\}_{n\geq1}$，令
> $$
> B_1=A_1,
> \qquad
> B_n=A_n\setminus\bigcup_{k=1}^{n-1}A_k\quad(n\geq2).
> $$
> 则 $\{B_n\}_{n\geq1}$ 两两不交，且
> $$
> \bigcup_{n=1}^{\infty}B_n=\bigcup_{n=1}^{\infty}A_n.
> $$
>
> **证明思路**：$B_n$ 去除了所有先前的集合，故互不交；任取首次落入某个 $A_n$ 的点，它同时属于对应的 $B_n$，从而两个并集相同。

## 集合列的上极限与下极限

<!-- set_sequence_limsup_liminf_definition -->
> [!Definition]
> **集合列的上极限与下极限 Limit Superior and Limit Inferior of Sets**：设 $\{A_n\}_{n\geq1}$ 是全集 $X$ 的子集列。定义
> $$
> \limsup_{n\to\infty}A_n
> =\bigcap_{n=1}^{\infty}\bigcup_{k=n}^{\infty}A_k,
> \qquad
> \liminf_{n\to\infty}A_n
> =\bigcup_{n=1}^{\infty}\bigcap_{k=n}^{\infty}A_k.
> $$
> 前者恰为属于无穷多个 $A_n$ 的点所成集合，后者恰为除有限多个指标外属于所有 $A_n$ 的点所成集合。

<!-- set_sequence_limit_definition -->
> [!Definition]
> **集合列的极限 Limit of a Sequence of Sets**：若
> $$
> \limsup_{n\to\infty}A_n=\liminf_{n\to\infty}A_n=A,
> $$
> 则称集合列 $\{A_n\}_{n\geq1}$ 收敛于 $A$，记为 $A_n\to A$。等价地，对每个 $x\in X$，指标函数 $\mathbf{1}_{A_n}(x)$ 最终恒等于 $\mathbf{1}_A(x)$。

<!-- increasing_decreasing_set_sequence_limits -->
> [!Proposition]
> **单调集合列的极限 Limits of Monotone Sequences of Sets**：若 $A_1\subseteq A_2\subseteq\cdots$，则
> $$
> \lim_{n\to\infty}A_n=\bigcup_{n=1}^{\infty}A_n.
> $$
> 若 $A_1\supseteq A_2\supseteq\cdots$，则
> $$
> \lim_{n\to\infty}A_n=\bigcap_{n=1}^{\infty}A_n.
> $$
>
> **证明思路**：递增时，一旦点进入某个 $A_n$，此后永远保留；递减时，点若在所有集合中，则始终保留。将这一逐点事实代入上、下极限的定义即可。

## 特殊集族

<!-- pi_system_definition -->
> [!Definition]
> **$\pi$ 系 $\pi$-System**：设 $X$ 是集合，$\mathcal{P}\subseteq\mathcal{P}(X)$。若对任意 $A,B\in\mathcal{P}$ 均有 $A\cap B\in\mathcal{P}$，则称 $\mathcal{P}$ 为 $X$ 上的 $\pi$ 系。

<!-- dynkin_system_definition -->
> [!Definition]
> **$\lambda$ 系（Dynkin 系） $\lambda$-System (Dynkin System)**：设 $X$ 是集合，$\mathcal{D}\subseteq\mathcal{P}(X)$。若满足：
> 1. $X\in\mathcal{D}$；
> 2. 对每个 $A\in\mathcal{D}$，有 $A^c\in\mathcal{D}$；
> 3. 若 $\{A_n\}_{n\geq1}\subseteq\mathcal{D}$ 两两不交，则 $\bigcup_{n=1}^{\infty}A_n\in\mathcal{D}$；
>
> 则称 $\mathcal{D}$ 为 $X$ 上的 $\lambda$ 系。

<!-- set_algebra_definition -->
> [!Definition]
> **集合代数 Algebra of Sets**：设 $X$ 是集合，$\mathcal{A}\subseteq\mathcal{P}(X)$。若满足：
> 1. $X\in\mathcal{A}$；
> 2. 对每个 $A\in\mathcal{A}$，有 $A^c\in\mathcal{A}$；
> 3. 对任意 $A,B\in\mathcal{A}$，有 $A\cup B\in\mathcal{A}$；
>
> 则称 $\mathcal{A}$ 为 $X$ 上的集合代数。由 De Morgan 律，它也对有限交和集合差封闭。

<!-- sigma_algebra_definition_preliminary -->
> [!Definition]
> **$\sigma$ 代数 $\sigma$-Algebra**：设 $X$ 是集合，$\mathcal{F}\subseteq\mathcal{P}(X)$。若满足：
> 1. $X\in\mathcal{F}$；
> 2. 对每个 $A\in\mathcal{F}$，有 $A^c\in\mathcal{F}$；
> 3. 对每个集合列 $\{A_n\}_{n\geq1}\subseteq\mathcal{F}$，有 $\bigcup_{n=1}^{\infty}A_n\in\mathcal{F}$；
>
> 则称 $\mathcal{F}$ 为 $X$ 上的 $\sigma$ 代数。它特别是集合代数，并对可数交封闭。

<!-- pi_lambda_theorem -->
> [!Theorem]
> **$\pi$-$\lambda$ 定理 $\pi$-$\lambda$ Theorem**：若 $\mathcal{P}$ 是 $X$ 上的 $\pi$ 系，$\mathcal{D}$ 是包含 $\mathcal{P}$ 的 $\lambda$ 系，则
> $$
> \sigma(\mathcal{P})\subseteq\mathcal{D},
> $$
> 其中 $\sigma(\mathcal{P})$ 表示包含 $\mathcal{P}$ 的最小 $\sigma$ 代数。
>
> **证明思路**：先考虑包含 $\mathcal{P}$ 的最小 $\lambda$ 系，利用 $\mathcal{P}$ 的有限交封闭性证明它也对有限交封闭；再将可列并化为互不交可列并，得到该 $\lambda$ 系实为 $\sigma$ 代数。

> **注**：本小节参见 Donald L. Cohn, *Measure Theory*, 2nd ed., Sections 1.1--1.2；Gerald B. Folland, *Real Analysis*, 2nd ed., Section 1.1。
