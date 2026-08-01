# 高阶导数

<!-- real_analysis_higher_order_derivative_definition -->
> [!Definition]
> **高阶导数 Higher-Order Derivative**：若 $f$ 的导函数 $f'$ 在点 $a$ 处可导，则称 $(f')'(a)$ 为 $f$ 在 $a$ 处的二阶导数，记为
> $$
> f''(a)=f^{(2)}(a).
> $$
> 递归地，若 $f^{(n-1)}$ 在 $a$ 处可导，则定义
> $$
> f^{(n)}(a)=\left(f^{(n-1)}\right)'(a).
> $$

<!-- real_analysis_leibniz_formula -->
> [!Theorem]
> **Leibniz 公式 Leibniz Formula**：若 $f,g$ 在区间 $I$ 上均有直到 $n$ 阶的导数，则
> $$
> (fg)^{(n)}(x)=\sum_{k=0}^n\binom{n}{k}f^{(k)}(x)g^{(n-k)}(x).
> $$
>
> **证明思路**：对 $n$ 归纳。$n=1$ 为乘积法则；归纳步中逐项求导，并用 Pascal 恒等式合并相邻二项式系数。

<!-- real_analysis_c_k_function_definition -->
> [!Definition]
> **$C^k$ 函数类 Class $C^k$**：设 $I$ 为区间，$k\in\mathbb{N}$。若 $f:I\to\mathbb{R}$ 在 $I$ 上存在至多 $k$ 阶导数，且 $f,f',\ldots,f^{(k)}$ 均连续，则称 $f$ 属于 $C^k(I)$，记为
> $$
> f\in C^k(I).
> $$

<!-- real_analysis_smooth_function_definition -->
> [!Definition]
> **光滑函数类 Smooth Function Class**：若函数 $f:I\to\mathbb{R}$ 对每个 $k\in\mathbb{N}$ 都属于 $C^k(I)$，则称 $f$ 为光滑函数，记为
> $$
> f\in C^\infty(I).
> $$

<!-- real_analysis_higher_order_derivative_example -->
> [!Example]+
> **高阶导数的例子 Example of Higher-Order Derivatives**：对 $f(x)=e^x\sin x$，Leibniz 公式给出
> $$
> f^{(n)}(x)=e^x\sum_{k=0}^n\binom{n}{k}(\sin x)^{(n-k)}.
> $$
> 特别地，$f''(x)=2e^x\cos x$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 5。