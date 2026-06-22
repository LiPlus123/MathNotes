# 递归函数

<!-- initial_function -->
> [!Definition]
> **初始函数 Initial Function**：有如下三个函数称为初始函数：
> 1. 零值函数 $z:\mathbb{N} \to \mathbb{N}$ 定义为：
> $$
> z(n) = 0
> $$
> 2. 后继函数 $s:\mathbb{N} \to \mathbb{N}$ 定义为：
> $$
> s(n) = n + 1
> $$
> 3. 投影函数 $p_i^k:\mathbb{N}^k \to \mathbb{N}$ 定义为：
> $$
> p_i^k(n_1,\cdots,n_k) = n_i,\ k\ge 1,\ 1\le i \le k
> $$

<!-- composite_function -->
> [!Definition]
> **复合 Composite**：设 $f:\mathbb{N}^k \to \mathbb{N}$ 是一个 $k$ 元函数，$g_1,\cdots,g_k:\mathbb{N}^n \to \mathbb{N}$ 是 $k$ 个 $n$ 元函数，那么由 $f$ 和 $g_1,\cdots,g_k$ 复合得到的函数 $h:\mathbb{N}^n \to \mathbb{N}$ 定义为：
> $$
> h(n_1,\cdots,n_n) = f(g_1(n_1,\cdots,n_n),\cdots,g_k(n_1,\cdots,n_n))
> $$

<!-- primitive_recursion -->
> [!Definition]
> **原始递归 Primitive Recursion**：设 $g:\mathbb{N}^k \to \mathbb{N}$ 是一个 $k$ 元函数，$h:\mathbb{N}^{k+2} \to \mathbb{N}$ 是一个 $(k+2)$ 元函数，那么由 $g$ 和 $h$ 定义的函数 $f:\mathbb{N}^{k+1} \to \mathbb{N}$ 满足：
> $$
> \begin{cases}
> f(n_1,\cdots,n_k,0) = g(n_1,\cdots,n_k) \\
> f(n_1,\cdots,n_k,s(n)) = h(n_1,\cdots,n_k,n,f(n_1,\cdots,n_k,n))
> \end{cases}
> $$
> 其中，$n\in\mathbb{N}$ 称为“循环次数”，$s(n)=n+1$ 是“后继函数”。那么称 $f$ 是由 $g$ 和 $h$ 通过原始递归定义得到的函数。

> **注**：假设 $k=0,n=2$，将 $f(s(2))$ 展开为：
> $$
> \begin{align*}
> f(s(2)) & = f(3)= h(2,f(2)) \\
> &= h(2,h(1,f(1))) \\
> &= h(2,h(1,h(0,f(0)))) \\
> &= h(2,h(1,h(0,g())))
> \end{align*}
> $$
> 假设 $g() = 0;\ h(i,j) = i+j$，那么
> $$
> \begin{align*}
> f(s(2)) & = h(2,h(1,h(0,g()))) \\
> & = h(2,h(1,0)) \\
> & = h(2,1) \\
> & = 3
> \end{align*}
> $$
> 因此，$f(s(n))$ 就表示从 $0$ 到 $n$ 的求和函数。

<!-- primitive_recursive_function -->
> [!Definition]
> **原始递归函数 Primitive Recursive Function**：原始递归函数类是满足以下条件的最小函数类：
> 1. 包含所有初始函数，即零值函数、后继函数和投影函数；
> 2. 对复合封闭：如果 $f,g_1,\cdots,g_k$ 是原始递归函数，并且复合 $h(n_1,\cdots,n_n) = f(g_1(n_1,\cdots,n_n),\cdots,g_k(n_1,\cdots,n_n))$ 有定义，则 $h$ 也是原始递归函数；
> 3. 对原始递归封闭：如果 $g$ 和 $h$ 是原始递归函数，并且 $f$ 由 $g$ 和 $h$ 通过原始递归定义得到，则 $f$ 也是原始递归函数。
>
> 如果 $f$ 属于原始递归函数类，则称函数 $f$ 是一个原始递归函数。

> **注**：“最小函数类”强调，原始递归函数是一类函数，它只由初始函数，以及初始函数的复合和原始递归定义生成，不包含其他函数。

<!-- mu_operator -->
> [!Definition]
> **$\mu$ 算子 $\mu$-Operator**：设 $g:\mathbb{N}^{k+1}\rightharpoonup\mathbb{N}$ 是一个 $(k+1)$ 元部分函数。由 $g$ 通过 $\mu$ 算子定义的 $k$ 元部分函数 $f:\mathbb{N}^k\rightharpoonup\mathbb{N}$ 满足：
> $$
> f(n_1,\cdots,n_k)=z
> $$
> 当且仅当：
> $$
> g(n_1,\cdots,n_k,z)=0
> $$
> 且对任意 $t<z$，都有
> $$
> g(n_1,\cdots,n_k,t)\downarrow
> \quad\text{且}\quad
> g(n_1,\cdots,n_k,t)\neq 0.
> $$
> 称 $f$ 是由 $g$ 通过 $\mu$ 算子定义得到的函数，记为：
> $$
> f(n_1,\cdots,n_k)=\mu z[g(n_1,\cdots,n_k,z)=0].
> $$

> **注**：这里强调 $g$ 是一个“部分函数”，说明它在 $\mathbb{N}^{k+1}$ 上不一定处处有定义，输入某些 $n_1,\cdots,n_k,z$ 可能没有定义输出，记为 $g(n_1,\cdots,n_k,z)\uparrow$，而 $g(n_1,\cdots,n_k,t)\downarrow$ 表示 $g(n_1,\cdots,n_k,t)$ 有定义。

> **注**：μ 算子是一个搜索算子，它返回使方程 $g(n_1,\cdots,n_k,z) = 0$ 成立的最小自然数解 $z$。如果没有解，那么 $f(n_1,\cdots,n_k)$ 就没有定义。因此，$f$ 也是一个部分函数。

<!-- regular_mu_operator -->
> [!Definition]
> **正则 μ 算子 Regular μ-Operator**：设 $g:\mathbb{N}^{k+1} \to \mathbb{N}$ 是一个 $(k+1)$ 元全函数。如果对任意 $n_1,\cdots,n_k \in \mathbb{N}^k$ 都存在 $z \in \mathbb{N}$ 使得 $g(n_1,\cdots,n_k,z) = 0$，那么称 $f(n_1,\cdots,n_k) = \mu z [g(n_1,\cdots,n_k,z) = 0]$ 是由 $g$ 通过正则 μ 算子定义得到的函数。

> **注**：这里强调 $g$ 是一个“全函数”，说明它在 $\mathbb{N}^{k+1}$ 上处处有定义，而且对任意 $n_1,\cdots,n_k \in \mathbb{N}^k$ 都存在 $z \in \mathbb{N}$ 使得 $g(n_1,\cdots,n_k,z) = 0$。这样保证了一定会有搜索结果，此时 $f$ 也是一个全函数。

<!-- bounded_mu_operator -->
> [!Definition]
> **有界 μ 算子 Bounded μ-Operator**：设 $g:\mathbb{N}^{k+1} \to \mathbb{N}$ 是一个 $(k+1)$ 元全函数。$k+1$ 元全函数 $f$ 定义为：
> $$
> f(n_1,\cdots,n_k,y) =
> \begin{cases}
> \min \{z \in \mathbb{N} : z < y,\ g(n_1,\cdots,n_k,z) = 0\}, & \text{if }z\text{ 存在},\\
> y, & \text{otherwise }
> \end{cases}
> $$
> 称 $f$ 是由 $g$ 通过有界 $\mu$ 算子定义得到的函数。记为：
> $$
> f(n_1,\cdots,n_k,y) = \mu z < y [g(n_1,\cdots,n_k,z) = 0]
> $$

> **注**：有界 μ 算子限定了搜索范围 $0,\cdots, y-1$。$g$ 是一个全函数，强调它在定义域 $\mathbb{N}^{k+1}$ 上有定义，输入任意 $n_1,\cdots,n_k,z$ 都能得到一个自然数输出，但这个输出不一定是 $0$，因此可能没有解。如果在搜索范围内没有解，那么 $f(n_1,\cdots,n_k,y)$ 就返回 $y$，因此 $f$ 总是有定义的，是一个全函数。

<!-- prf_bounded_mu_operator_closed -->
> [!Theorem]
> **原始递归函数类对有界 μ 算子封闭**：设 $g$ 是一个全函数， $f$ 是由 $g$ 通过有界 $\mu$ 算子定义得到的函数。如果 $g$ 是一个原始递归函数，那么 $f$ 也是一个原始递归函数。

> **注**：原始递归函数类对有界 μ 算子封闭。类似地，定义递归函数和部分递归函数。

<!-- recursive_function -->
> [!Definition]
> **递归函数 Recursive Function**：递归函数类是满足以下条件的最小全函数类：
> 1. 包含所有原始递归函数；
> 2. 对复合封闭：如果 $f,g_1,\cdots,g_k$ 是递归函数，并且复合 $h(n_1,\cdots,n_n) = f(g_1(n_1,\cdots,n_n),\cdots,g_k(n_1,\cdots,n_n))$ 有定义，则 $h$ 也是递归函数；
> 3. 对原始递归封闭：如果 $g$ 和 $h$ 是递归函数，并且 $f$ 由 $g$ 和 $h$ 通过原始递归定义得到，则 $f$ 也是递归函数。
> 4. 对正则 μ 算子封闭：如果 $g$ 是一个递归函数，那么 $g$ 通过正则 $\mu$ 算子定义得到的函数 $f(n_1,\cdots,n_k) = \mu z [g(n_1,\cdots,n_k,z) = 0]$ 也是递归函数。
>
> 如果 $f$ 属于递归函数类，则称函数 $f$ 是一个递归函数。

> **注**：递归函数类是一个更大的函数类，它不仅包含了所有原始递归函数，还包含了使用正则 μ 算子生成的函数。

<!-- partial_recursive_function -->
> [!Definition]
> **部分递归函数 Partial Recursive Function**：部分递归函数类是满足以下条件的最小部分函数类：
> 1. 包含所有原始递归函数；
> 2. 对复合封闭：如果 $f,g_1,\cdots,g_k$ 是部分递归函数，并且复合 $h(n_1,\cdots,n_n) = f(g_1(n_1,\cdots,n_n),\cdots,g_k(n_1,\cdots,n_n))$ 有定义，则 $h$ 也是部分递归函数；
> 3. 对原始递归封闭：如果 $g$ 和 $h$ 是部分递归函数，并且 $f$ 由 $g$ 和 $h$ 通过原始递归定义得到，则 $f$ 也是部分递归函数。
> 4. 对 μ 算子封闭：如果 $g$ 是一个部分递归函数，那么 $g$ 通过 $\mu$ 算子定义得到的函数 $f(n_1,\cdots,n_k) = \mu z [g(n_1,\cdots,n_k,z) = 0]$ 也是部分递归函数。
>
> 如果 $f$ 属于部分递归函数类，则称函数 $f$ 是一个部分递归函数。

> **注**：部分递归函数类是一个更大的函数类，它不仅包含了所有递归函数，还包含了使用 μ 算子生成的函数。总结一下：
> $$
> \text{初始函数类} \subseteq \text{原始递归函数类} \subseteq \text{递归函数类} \subseteq \text{部分递归函数类}
> $$

