# 可测函数的收敛

## 收敛方式

<!-- almost_everywhere_convergence_definition -->
> [!Definition]
> **几乎处处收敛 Almost Everywhere Convergence**：设 $(X,\mathcal{A},\mu)$ 为测度空间，$f_n,f:X\to\overline{\mathbb{R}}$。若存在零测集 $N\in\mathcal{A}$，使得
> $$
> \lim_{n\to\infty}f_n(x)=f(x)\qquad(x\in X\setminus N),
> $$
> 则称 $f_n$ 几乎处处收敛于 $f$，记为
> $$
> f_n\to f\quad\text{a.e.}
> $$

<!-- convergence_in_measure_definition -->
> [!Definition]
> **依测度收敛 Convergence in Measure**：设 $(X,\mathcal{A},\mu)$ 为测度空间，且 $f_n,f:X\to\mathbb{R}$ 可测。若对每个 $\varepsilon>0$，都有
> $$
> \lim_{n\to\infty}\mu\bigl(\{x\in X:|f_n(x)-f(x)|>\varepsilon\}\bigr)=0,
> $$
> 则称 $f_n$ 依测度收敛于 $f$，记为 $f_n\xrightarrow{\mu}f$。

<!-- uniform_convergence_definition -->
> [!Definition]
> **一致收敛 Uniform Convergence**：设 $f_n,f:X\to\mathbb{R}$。若对每个 $\varepsilon>0$，存在 $N\in\mathbb{N}$，使得当 $n\geq N$ 时，对所有 $x\in X$ 都有
> $$
> |f_n(x)-f(x)|<\varepsilon,
> $$
> 则称 $f_n$ 一致收敛于 $f$，记为 $f_n\rightrightarrows f$。当上确界有限时，这等价于
> $$
> \sup_{x\in X}|f_n(x)-f(x)|\to0.
> $$

<!-- implications_between_convergence_modes -->
> [!Proposition]
> **收敛方式之间的蕴含 Implications between Modes of Convergence**：
> 1. 一致收敛必蕴含依测度收敛；
> 2. 若 $\mu(X)<+\infty$，则几乎处处收敛蕴含依测度收敛；
> 3. 一般而言，依测度收敛不蕴含几乎处处收敛，但每个依测度收敛的函数列都存在几乎处处收敛到同一极限的子列。
>
> **证明思路**：一致收敛时误差集合最终为空。有限测度情形的第二项可由 Egoroff 定理推出。第三项的子列结论可取使误差集合测度可求和的子列，并对这些异常集合应用 Borel-Cantelli 型估计。

<!-- convergence_in_measure_not_ae_example -->
> [!Example]+
> **依测度收敛但不几乎处处收敛 Convergence in Measure without Almost Everywhere Convergence**：在 $([0,1],\mathcal{L},m)$ 上，将每个区间 $[0,1]$ 依次细分为 $2^k$ 个长度为 $2^{-k}$ 的半开区间，并按层依序列出它们，记为 $I_1,I_2,\ldots$。令 $f_n=\mathbf{1}_{I_n}$。则 $m(I_n)\to0$，故 $f_n\xrightarrow{m}0$；但每个 $x\in[0,1)$ 在每一层恰属于一个区间，因而 $f_n(x)=1$ 无穷多次，函数列不在任何这样的点收敛到 $0$。

## 有限测度空间中的定理

<!-- egoroff_theorem -->
> [!Theorem]
> **Egoroff 定理 Egoroff's Theorem**：设 $\mu(X)<+\infty$，$f_n,f:X\to\mathbb{R}$ 可测，且 $f_n\to f$ 几乎处处。则对每个 $\varepsilon>0$，存在可测集 $E\subseteq X$，使得
> $$
> \mu(X\setminus E)<\varepsilon
> $$
> 且 $f_n$ 在 $E$ 上一致收敛于 $f$。
>
> **证明思路**：对每个误差阈值 $1/k$，考察“从第 $N$ 项起始终误差不超过 $1/k$”的集合。几乎处处收敛保证这些集合随 $N$ 递增并覆盖除零测集外的 $X$；选取适当的 $N_k$ 并删去总测度小于 $\varepsilon$ 的例外部分，即得一致控制。

<!-- lusin_theorem -->
> [!Theorem]
> **Lusin 定理 Lusin's Theorem**：设 $E\subseteq\mathbb{R}^n$ 为 Lebesgue 可测集且 $m(E)<+\infty$，$f:E\to\mathbb{R}$ 为 Lebesgue 可测函数并在 $E$ 上几乎处处有限。则对每个 $\varepsilon>0$，存在闭集 $F\subseteq E$，使得
> $$
> m(E\setminus F)<\varepsilon
> $$
> 且 $f|_F$ 连续。
>
> **证明思路**：先用简单函数在几乎处处意义下逼近 $f$，再通过 Egoroff 定理移除一个小测度集合使逼近一致；对每个简单函数涉及的可测水平集以闭集近似，于剩余闭集上得到连续的极限函数。

<!-- riesz_subsequence_theorem -->
> [!Theorem]
> **Riesz 子列定理 Riesz Subsequence Theorem**：设 $(X,\mathcal{A},\mu)$ 为有限测度空间，即 $\mu(X)<+\infty$，且 $f_n,f:X\to\mathbb{R}$ 可测。则
> $$
> f_n\xrightarrow{\mu}f
> $$
> 当且仅当 $\{f_n\}$ 的每个子列都含有一个几乎处处收敛于 $f$ 的子子列。
>
> **证明思路**：若依测度收敛，则从任一子列抽取子子列 $f_{n_k}$，使误差集合 $\{|f_{n_k}-f|>2^{-k}\}$ 的测度至多为 $2^{-k}$；可数次可加性表明误差无限次出现的点集为零测。反向若不依测度收敛，可取一条误差集合测度始终有正下界的子列；有限测度空间中的几乎处处收敛蕴含依测度收敛，故这条子列不可能再含几乎处处收敛于 $f$ 的子子列。

<!-- almost_uniform_convergence_definition -->
> [!Definition]
> **几乎一致收敛 Almost Uniform Convergence**：若对每个 $\varepsilon>0$，存在可测集 $E\subseteq X$ 满足 $\mu(E)<\varepsilon$，且 $f_n$ 在 $X\setminus E$ 上一致收敛于 $f$，则称 $f_n$ 几乎一致收敛于 $f$。当 $\mu(X)<+\infty$ 时，Egoroff 定理表明几乎处处收敛蕴含几乎一致收敛。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 2.3；Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 2。
