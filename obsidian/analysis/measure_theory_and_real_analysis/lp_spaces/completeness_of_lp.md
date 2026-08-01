# $L^p$ 空间的完备性

## Riesz-Fischer 定理

<!-- riesz_fischer_theorem -->
> [!Theorem]
> **Riesz-Fischer 定理 Riesz-Fischer Theorem**：设 $(X,\mathcal{A},\mu)$ 为测度空间，$1\leq p\leq+\infty$。每个 $L^p(\mu)$ 中的 Cauchy 列都在 $L^p(\mu)$ 范数下收敛。换言之，
> $$
> L^p(\mu)
> $$
> 是 Banach 空间。
>
> **证明思路**：当 $1\leq p<+\infty$ 时，从 Cauchy 列抽取子列 $\{f_{n_k}\}$，使得 $\sum_k\|f_{n_{k+1}}-f_{n_k}\|_p<+\infty$。由 Minkowski 不等式和单调收敛定理，增量绝对值级数几乎处处收敛，从而得到点态极限；再以尾和控制 $L^p$ 误差。$p=+\infty$ 时可从本质一致 Cauchy 性构造几乎处处极限。

<!-- lp_banach_space_corollary -->
> [!Corollary]
> **$L^p$ 是 Banach 空间 $L^p$ Is a Banach Space**：对每个 $1\leq p\leq+\infty$，带范数 $\|\cdot\|_p$ 的 $L^p(\mu)$ 是 Banach 空间。
>
> **证明思路**：这正是 Riesz-Fischer 定理的完备性断言；向量空间结构由可测函数在几乎处处相等的等价类下的线性运算给出。

## $L^2$ 的 Hilbert 空间结构

<!-- l2_inner_product_definition -->
> [!Definition]
> **$L^2$ 内积 $L^2$ Inner Product**：对 $f,g\in L^2(\mu)$，定义
> $$
> \langle f,g\rangle_{L^2}=\int_Xf\overline{g}\,d\mu.
> $$
> Hölder 不等式保证该积分有限，且该定义只依赖于 $f,g$ 的几乎处处等价类。

<!-- l2_hilbert_space_theorem -->
> [!Theorem]
> **$L^2$ 是 Hilbert 空间 $L^2$ Is a Hilbert Space**：$L^2(\mu)$ 配备内积 $\langle\cdot,\cdot\rangle_{L^2}$ 是 Hilbert 空间，并且由该内积诱导的范数满足
> $$
> \|f\|_2=\sqrt{\langle f,f\rangle_{L^2}}.
> $$
>
> **证明思路**：内积的共轭对称性、线性性和正定性由积分性质直接得到；正定性在等价类上成立是因为 $\int|f|^2=0$ 等价于 $f=0$ 几乎处处。Riesz-Fischer 定理给出该范数下的完备性。

<!-- l2_orthogonality_and_pythagorean_theorem -->
> [!Proposition]
> **$L^2$ 中的正交与勾股定理 Orthogonality and the Pythagorean Theorem in $L^2$**：若 $f,g\in L^2(\mu)$ 且
> $$
> \langle f,g\rangle_{L^2}=0,
> $$
> 则
> $$
> \|f+g\|_2^2=\|f\|_2^2+\|g\|_2^2.
> $$
>
> **证明思路**：展开 $\langle f+g,f+g\rangle_{L^2}$，交叉项为 $2\operatorname{Re}\langle f,g\rangle_{L^2}$，并由正交性消失。

<!-- l2_example -->
> [!Example]+
> **区间上的 $L^2$ 函数 An $L^2$ Function on an Interval**：在 $([0,1],\mathcal{L},m)$ 上，函数
> $$
> f(x)=x^{-1/4}
> $$
> 属于 $L^2([0,1])$，因为
> $$
> \int_0^1|f(x)|^2\,dx=\int_0^1x^{-1/2}\,dx=2.
> $$
> 但 $f\notin L^4([0,1])$，因为 $\int_0^1x^{-1}\,dx=+\infty$。这说明有限测度空间上的包含关系 $L^p\subseteq L^q$ 的方向不能反转。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 6.1；Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 3。
