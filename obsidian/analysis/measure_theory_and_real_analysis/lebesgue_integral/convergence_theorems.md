# 收敛定理综述

## 基本收敛定理

<!-- monotone_convergence_theorem_summary -->
> [!Theorem]
> **单调收敛定理 Monotone Convergence Theorem**：若非负可测函数列满足 $f_n\uparrow f$，则
> $$
> \int_Xf_n\,d\mu\uparrow\int_Xf\,d\mu.
> $$
> 该定理不要求测度空间具有有限总测度，也不要求极限函数可积。
>
> **证明思路**：以简单函数从下逼近极限函数，再用测度从下连续性将逼近信息传递到函数列的积分。

<!-- fatou_lemma_summary -->
> [!Theorem]
> **Fatou 引理 Fatou's Lemma**：对任意非负可测函数列 $\{f_n\}_{n\geq1}$，
> $$
> \int_X\liminf_{n\to\infty}f_n\,d\mu
> \leq\liminf_{n\to\infty}\int_Xf_n\,d\mu.
> $$
> 该不等式为在缺乏支配函数时传递积分下界提供了工具。
>
> **证明思路**：令 $g_n=\inf_{k\geq n}f_k$，则 $g_n$ 单调递增到 $\liminf f_n$；应用单调收敛定理并与尾项积分的下确界比较。

<!-- dominated_convergence_theorem_summary -->
> [!Theorem]
> **控制收敛定理 Dominated Convergence Theorem**：若 $f_n\to f$ 几乎处处，并存在 $g\in L^1(\mu)$ 使 $|f_n|\leq g$ 几乎处处，则
> $$
> \int_X|f_n-f|\,d\mu\to0,
> \qquad
> \int_Xf_n\,d\mu\to\int_Xf\,d\mu.
> $$
>
> **证明思路**：将 Fatou 引理应用于 $g+f_n$ 与 $g-f_n$，并以 $2g$ 控制 $|f_n-f|$。

## 有限测度与一致可积性

<!-- bounded_convergence_theorem -->
> [!Theorem]
> **有界收敛定理 Bounded Convergence Theorem**：设 $\mu(X)<+\infty$，$f_n:X\to\mathbb{R}$ 可测，$f_n\to f$ 几乎处处，且存在常数 $M\geq0$ 使得
> $$
> |f_n|\leq M\quad\text{a.e.}
> $$
> 则
> $$
> \int_X|f_n-f|\,d\mu\to0,
> \qquad
> \int_Xf_n\,d\mu\to\int_Xf\,d\mu.
> $$
>
> **证明思路**：常值函数 $g=M$ 在有限测度空间上可积，故这是控制收敛定理的直接推论。

<!-- uniform_integrability_definition -->
> [!Definition]
> **一致可积性 Uniform Integrability**：一族可积函数 $\mathcal{F}\subseteq L^1(\mu)$ 称为一致可积的，若
> $$
> \lim_{K\to+\infty}\sup_{f\in\mathcal{F}}\int_{\{|f|>K\}}|f|\,d\mu=0.
> $$
> 在有限测度空间中，这等价于：对每个 $\varepsilon>0$，存在 $\delta>0$，使得任意 $A\in\mathcal{A}$ 满足 $\mu(A)<\delta$ 时均有
> $$
> \sup_{f\in\mathcal{F}}\int_A|f|\,d\mu<\varepsilon.
> $$

<!-- vitali_convergence_theorem -->
> [!Theorem]
> **Vitali 收敛定理 Vitali Convergence Theorem**：设 $(X,\mathcal{A},\mu)$ 为有限测度空间，$f_n,f\in L^1(\mu)$。若 $f_n\xrightarrow{\mu}f$，且族 $\{f_n\}_{n\geq1}$ 一致可积，则
> $$
> \int_X|f_n-f|\,d\mu\to0.
> $$
> 因而 $\int_Xf_n\,d\mu\to\int_Xf\,d\mu$。
>
> **证明思路**：由依测度收敛抽取任意子列的几乎处处收敛子子列。利用一致可积性控制函数的大值部分及小测度误差集合，证明该子子列 $L^1$ 收敛；子列原则遂给出原序列 $L^1$ 收敛。

<!-- convergence_theorem_selection_principle -->
> [!Proposition]
> **收敛定理的选择原则 Selection Principle for Convergence Theorems**：对非负单调递增列使用单调收敛定理；对非负函数列的下极限使用 Fatou 引理；对存在单一可积控制函数的几乎处处收敛列使用控制收敛定理；在有限测度空间中，对一致有界列可使用有界收敛定理；对依测度收敛且一致可积的列使用 Vitali 收敛定理。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 2.2；Donald L. Cohn, *Measure Theory*, 2nd ed., Chapter 3。
