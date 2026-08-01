# 简单函数

## 简单函数的定义

<!-- simple_function_definition -->
> [!Definition]
> **简单函数 Simple Function**：设 $(X,\mathcal{A})$ 是可测空间。若函数 $s:X\to\mathbb{R}$ 可写成
> $$
> s=\sum_{i=1}^{n}a_i\mathbf{1}_{E_i},
> $$
> 其中 $a_i\in\mathbb{R}$ 且 $E_i\in\mathcal{A}$，则称 $s$ 为简单函数。等价地，$s$ 取有限多个实值，且对每个 $a\in\mathbb{R}$，原像 $s^{-1}(\{a\})$ 可测。

<!-- nonnegative_simple_function_standard_form -->
> [!Proposition]
> **非负简单函数的标准表示 Standard Representation of a Nonnegative Simple Function**：每个非负简单函数 $s$ 都可唯一地写为
> $$
> s=\sum_{i=1}^{n}a_i\mathbf{1}_{E_i},
> $$
> 其中 $0<a_1<\cdots<a_n$，集合 $E_1,\ldots,E_n$ 两两不交且可测，并且 $E_i=\{x:s(x)=a_i\}$。
>
> **证明思路**：将 $s$ 的非零值按递增次序列出，并以相应的原像作为 $E_i$。函数值的唯一性给出集合两两不交，表示的唯一性随之成立。

<!-- simple_function_measurability -->
> [!Proposition]
> **简单函数的可测性 Measurability of Simple Functions**：若 $s=\sum_{i=1}^{n}a_i\mathbf{1}_{E_i}$ 且所有 $E_i\in\mathcal{A}$，则 $s$ 可测。
>
> **证明思路**：每个示性函数可测，有限次线性组合保持可测性；或直接注意 $\{s>a\}$ 是若干 $E_i$ 的有限并。

## 简单函数逼近

<!-- approximation_by_simple_functions_nonnegative -->
> [!Theorem]
> **非负可测函数的简单函数逼近 Simple-Function Approximation of Nonnegative Measurable Functions**：设 $f:X\to[0,+\infty]$ 可测。则存在非负简单函数列 $\{s_n\}_{n\geq1}$，使得
> $$
> 0\leq s_1\leq s_2\leq\cdots\leq f,
> \qquad
> s_n(x)\uparrow f(x)\quad(x\in X).
> $$
> 可取
> $$
> s_n(x)=2^{-n}\lfloor 2^nf(x)\rfloor\mathbf{1}_{\{f(x)<n\}}+n\mathbf{1}_{\{f(x)\geq n\}}.
> $$
>
> **证明思路**：函数值经由步长 $2^{-n}$ 向下离散化，并在阈值 $n$ 处截断；每个水平集均可测，故 $s_n$ 是简单函数。逐点检验离散误差趋于零且截断阈值趋于无穷即可。

<!-- approximation_by_simple_functions_general -->
> [!Corollary]
> **实值可测函数的简单函数逼近 Simple-Function Approximation of Real-Valued Measurable Functions**：若 $f:X\to\mathbb{R}$ 可测，则存在简单函数列 $\{s_n\}_{n\geq1}$，使得
> $$
> s_n(x)\to f(x)\quad(x\in X).
> $$
> 若 $f$ 有界，则可令所有 $s_n$ 一致有界。
>
> **证明思路**：将 $f$ 分解为正部 $f^+=\max\{f,0\}$ 与负部 $f^-=\max\{-f,0\}$，分别递增地以非负简单函数逼近，再取两列逼近函数之差。

<!-- dyadic_simple_approximation_example -->
> [!Example]+
> **二进小数逼近 Dyadic Simple Approximation**：对 $f(x)=x$ 定义在 $[0,1]$ 上，令
> $$
> s_n(x)=2^{-n}\lfloor2^nx\rfloor.
> $$
> 则 $s_n$ 为简单函数，满足
> $$
> 0\leq x-s_n(x)<2^{-n},
> $$
> 因而 $s_n\uparrow f$。该例展示了简单函数逼近将函数值分层离散化的基本思想。

> **注**：本小节参见 Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 1；Gerald B. Folland, *Real Analysis*, 2nd ed., Section 2.1。
