# $L^p$ 收敛

## $L^p$ 收敛与其他收敛方式

<!-- lp_convergence_definition -->
> [!Definition]
> **$L^p$ 收敛 Convergence in $L^p$**：设 $1\leq p\leq+\infty$，且 $f_n,f\in L^p(\mu)$。若
> $$
> \|f_n-f\|_p\to0,
> $$
> 则称 $f_n$ 在 $L^p$ 中收敛于 $f$，记为
> $$
> f_n\to f\quad\text{in }L^p.
> $$

<!-- lp_convergence_implies_convergence_in_measure -->
> [!Proposition]
> **$L^p$ 收敛蕴含依测度收敛 $L^p$ Convergence Implies Convergence in Measure**：若 $1\leq p<+\infty$ 且 $f_n\to f$ 在 $L^p$ 中成立，则
> $$
> f_n\xrightarrow{\mu}f.
> $$
>
> **证明思路**：对每个 $\varepsilon>0$，由 Chebyshev 不等式，
> $$
> \mu(\{|f_n-f|>\varepsilon\})
> \leq\varepsilon^{-p}\|f_n-f\|_p^p.
> $$
> 右侧趋于 $0$。

<!-- lp_convergence_subsequence_ae -->
> [!Theorem]
> **$L^p$ 收敛的几乎处处收敛子列 Almost-Everywhere Convergent Subsequence of an $L^p$-Convergent Sequence**：若 $1\leq p<+\infty$ 且 $f_n\to f$ 在 $L^p$ 中成立，则存在子列 $\{f_{n_k}\}$，使得
> $$
> f_{n_k}\to f\quad\text{a.e.}
> $$
>
> **证明思路**：选取子列使 $\sum_k\|f_{n_k}-f\|_p^p<+\infty$。由 Tonelli 定理，$\sum_k|f_{n_k}-f|^p$ 几乎处处有限，故其各项几乎处处趋于零。

<!-- dominated_ae_convergence_implies_lp -->
> [!Theorem]
> **受控的几乎处处收敛蕴含 $L^p$ 收敛 Dominated Almost-Everywhere Convergence Implies $L^p$ Convergence**：设 $1\leq p<+\infty$，$f_n\to f$ 几乎处处。若存在 $g\in L^p(\mu)$，使得
> $$
> |f_n|\leq g\quad\text{a.e.}
> $$
> 对所有 $n$ 成立，则
> $$
> \|f_n-f\|_p\to0.
> $$
>
> **证明思路**：几乎处处有 $|f|\leq g$，且 $|f_n-f|^p\leq(2g)^p$。对 $|f_n-f|^p$ 应用控制收敛定理，再取 $p$ 次方根。

## 一致可积性

<!-- p_uniform_integrability_definition -->
> [!Definition]
> **$p$ 次一致可积性 $p$-Uniform Integrability**：设 $1\leq p<+\infty$，且 $\mathcal{F}\subseteq L^p(\mu)$。若函数族
> $$
> \{|f|^p:f\in\mathcal{F}\}
> $$
> 在 $L^1(\mu)$ 中一致可积，则称 $\mathcal{F}$ 为 $p$ 次一致可积的。等价地，
> $$
> \lim_{K\to+\infty}\sup_{f\in\mathcal{F}}\int_{\{|f|^p>K\}}|f|^p\,d\mu=0.
> $$

<!-- vitali_lp_convergence_theorem -->
> [!Theorem]
> **Vitali 的 $L^p$ 收敛定理 Vitali $L^p$ Convergence Theorem**：设 $(X,\mathcal{A},\mu)$ 为有限测度空间，$1\leq p<+\infty$，$f_n,f\in L^p(\mu)$。则下列条件等价：
> 1. $f_n\to f$ 在 $L^p$ 中成立；
> 2. $f_n\xrightarrow{\mu}f$，且族 $\{|f_n|^p\}_{n\geq1}$ 一致可积。
>
> **证明思路**：第二项对 $|f_n-f|^p$ 应用 $L^1$ 的 Vitali 收敛定理，注意 $|f|^p$ 由依测度收敛与一致可积性控制。反向由 $L^p$ 收敛得到依测度收敛，并利用 $|f_n|^p$ 被 $|f|^p+|f_n-f|^p$ 的适当倍数控制，证明一致可积性。

<!-- lp_convergence_not_ae_example -->
> [!Example]+
> **$L^p$ 收敛不蕴含整列几乎处处收敛 $L^p$ Convergence Does Not Imply Almost-Everywhere Convergence of the Full Sequence**：在 $([0,1],\mathcal{L},m)$ 上，按二进区间逐层依次排列的函数列
> $$
> f_n=\mathbf{1}_{I_n}
> $$
> 满足对每个 $1\leq p<+\infty$，
> $$
> \|f_n\|_p=m(I_n)^{1/p}\to0,
> $$
> 所以 $f_n\to0$ 在 $L^p$ 中成立；但每个 $x\in[0,1)$ 落在无穷多个 $I_n$ 中，故原序列不几乎处处收敛于 $0$。这与存在几乎处处收敛子列并不矛盾。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 6.1；Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 3。
