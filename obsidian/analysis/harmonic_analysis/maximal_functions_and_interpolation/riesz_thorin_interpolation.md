# Riesz-Thorin 插值定理

## 复插值的解析工具

<!-- hadamard_three_lines_theorem -->
> [!Theorem]
> **Hadamard 三线定理 Hadamard Three-Lines Theorem**：设 $F$ 在闭带状区域 $0\leq\operatorname{Re}z\leq1$ 上连续、有界，并在开带状区域内全纯。若
> $$
> \sup_{t\in\mathbb{R}}|F(it)|\leq M_0,
> \qquad
> \sup_{t\in\mathbb{R}}|F(1+it)|\leq M_1,
> $$
> 则对 $0\leq\theta\leq1$，
> $$
> |F(\theta)|\leq M_0^{1-\theta}M_1^\theta.
> $$
>
> **证明思路**：以边界上指数权重归一化 $F$，并应用带状区域的最大模原理；对可能的零边界上界以正的扰动参数取极限。

<!-- riesz_thorin_interpolation_theorem -->
> [!Theorem]
> **Riesz-Thorin 插值定理 Riesz-Thorin Interpolation Theorem**：设线性算子 $T$ 同时满足
> $$
> \|Tf\|_{q_0}\leq M_0\|f\|_{p_0},
> \qquad
> \|Tf\|_{q_1}\leq M_1\|f\|_{p_1},
> $$
> 其中 $1\leq p_0,p_1,q_0,q_1\leq+\infty$。对 $0\leq\theta\leq1$，令
> $$
> \frac{1}{p_\theta}=\frac{1-\theta}{p_0}+\frac{\theta}{p_1},
> \qquad
> \frac{1}{q_\theta}=\frac{1-\theta}{q_0}+\frac{\theta}{q_1}.
> $$
> 则
> $$
> \|Tf\|_{q_\theta}\leq M_0^{1-\theta}M_1^\theta\|f\|_{p_\theta}.
> $$
>
> **证明思路**：对简单函数构造随复变量 $z$ 解析变化的输入和对偶测试函数，并将配对 $\langle Tf_z,g_z\rangle$ 代入三线定理；最后以密度推广。

<!-- hausdorff_young_riesz_thorin_application -->
> [!Corollary]
> **Hausdorff-Young 不等式 Hausdorff-Young Inequality**：在 $2\pi$ 归一化下，若 $1\leq p\leq2$ 且 $p'=p/(p-1)$，则
> $$
> \|\widehat f\|_{p'}\leq\|f\|_p,
> \qquad f\in L^p(\mathbb{R}^n).
> $$
>
> **证明思路**：Fourier 变换从 $L^1$ 到 $L^\infty$ 的范数不超过 $1$，并由 Plancherel 定理为 $L^2$ 上等距算子。对这两个端点应用 Riesz-Thorin 定理。

> **来源**：Elias M. Stein and Rami Shakarchi, *Complex Analysis*, Chapter 6；Elias M. Stein and Guido Weiss, *Introduction to Fourier Analysis on Euclidean Spaces*, Chapter V。
