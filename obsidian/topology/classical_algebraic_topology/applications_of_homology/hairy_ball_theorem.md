# 毛球定理

## 对径映射的次数

<!-- degree_of_antipodal_map -->
> [!Theorem]
> **对径映射的次数 Degree of the Antipodal Map**：对径映射 $A: S^n \to S^n$，$A(x) = -x$，的次数为：
> $$\deg(A) = (-1)^{n+1}.$$
>
> **证明思路**：$A$ 是 $n+1$ 个反射的复合（每个坐标取反），每个反射的次数为 $-1$，故 $\deg(A) = (-1)^{n+1}$。严格地，每个坐标反射 $(x_1, \ldots, x_{n+1}) \mapsto (x_1, \ldots, -x_i, \ldots, x_{n+1})$ 诱导 $H_n(S^n) \to H_n(S^n)$ 的乘以 $-1$ 的映射（可用 Mayer-Vietoris 计算），复合即得 $(-1)^{n+1}$。

## 毛球定理

<!-- hairy_ball_theorem -->
> [!Theorem]
> **毛球定理 Hairy Ball Theorem**：$n$ 维球面 $S^n$ 上存在处处非零的连续切向量场当且仅当 $n$ 是**奇数**。等价地：
> - **$n$ 为偶数**：$S^n$ 上**不存在**处处非零的连续切向量场；
> - **$n$ 为奇数**：$S^n$ 上**存在**处处非零的连续切向量场。
>
> **证明（偶数维不存在）**：设 $v: S^n \to \mathbb{R}^{n+1}$ 是连续切向量场，满足 $v(x) \perp x$（切于 $S^n$）且 $v(x) \neq 0$ 对所有 $x \in S^n$。将 $v$ 归一化为 $\hat{v}(x) = v(x)/\|v(x)\|$，则 $\hat{v}: S^n \to S^n$，$\hat{v}(x) \perp x$，$|\hat{v}(x)| = 1$。
>
> 定义同伦 $H: S^n \times I \to S^n$：
> $$H(x, t) = (\cos\pi t)\, x + (\sin\pi t)\, \hat{v}(x).$$
> 由 $x \perp \hat{v}(x)$ 知 $|H(x,t)| = \sqrt{\cos^2\pi t + \sin^2\pi t} = 1$，故 $H$ 确实映到 $S^n$；$H(x, 0) = x = \mathrm{id}$，$H(x, 1) = -x = A(x)$。故 $\mathrm{id} \simeq A$，从而 $\deg(\mathrm{id}) = \deg(A)$，即 $1 = (-1)^{n+1}$。当 $n$ 为偶数时 $(-1)^{n+1} = -1 \neq 1$，矛盾。
>
> **证明（奇数维存在）**：对 $S^{2k-1} = \{(x_1, \ldots, x_{2k}) \in \mathbb{R}^{2k} \mid \sum x_i^2 = 1\}$（$n = 2k-1$ 奇），定义：
> $$v(x_1, x_2, x_3, x_4, \ldots, x_{2k-1}, x_{2k}) = (-x_2, x_1, -x_4, x_3, \ldots, -x_{2k}, x_{2k-1}).$$
> 验证：$v(x) \cdot x = -x_2 x_1 + x_1 x_2 - x_4 x_3 + x_3 x_4 + \cdots = 0$（切于 $S^{2k-1}$），且 $|v(x)| = |x| = 1$（处处非零）。

## 推论

<!-- hairy_ball_corollary_even -->
> [!Corollary]
> **偶数维球面的"毛球"推论**：$S^2$ 上任何连续切向量场至少有一个零点（即"无论如何梳理球上的毛，总有至少一处'旋涡'"）。更一般地，$S^{2k}$ 上任何连续切向量场至少有一个零点。

<!-- hairy_ball_corollary_odd -->
> [!Corollary]
> **奇数维球面的切向量场**：$S^1$ 上存在处处非零的切向量场（旋转）；$S^3 \subset \mathbb{R}^4$ 上存在（甚至三个处处线性无关的切向量场）；$S^{2k-1}$ 上至少存在一个。
