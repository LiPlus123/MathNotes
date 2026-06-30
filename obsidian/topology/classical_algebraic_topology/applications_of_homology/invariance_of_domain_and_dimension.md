# 区域不变性与维数不变性

## 局部同调群

<!-- local_homology_definition -->
> [!Definition]
> **局部同调群 Local Homology Group**：设 $X$ 是拓扑空间，$x \in X$。$X$ 在 $x$ 处的**局部同调群 Local Homology Group** 定义为：
> $$H_n(X, X \setminus \{x\}).$$
> 对 $\mathbb{R}^n$ 中的点 $x$，由切除定理：
> $$H_k(\mathbb{R}^n, \mathbb{R}^n \setminus \{x\}) \cong \tilde{H}_{k-1}(S^{n-1}) \cong \begin{cases} \mathbb{Z} & k = n, \\ 0 & k \neq n. \end{cases}$$

## 维数不变性

<!-- invariance_of_dimension -->
> [!Theorem]
> **维数不变性 Invariance of Dimension**：若 $\mathbb{R}^n$ 与 $\mathbb{R}^m$ 同胚，则 $n = m$。
>
> **证明思路**：设 $f: \mathbb{R}^n \to \mathbb{R}^m$ 是同胚，取任意点 $x \in \mathbb{R}^n$。$f$ 诱导局部同调群的同构（切除定理保证 $f$ 将 $x$ 的任意邻域映到 $f(x)$ 的邻域，从而诱导对 $H_k(\mathbb{R}^n, \mathbb{R}^n \setminus \{x\}) \to H_k(\mathbb{R}^m, \mathbb{R}^m \setminus \{f(x)\})$ 的同构）：
> $$H_k(\mathbb{R}^n, \mathbb{R}^n \setminus \{x\}) \cong H_k(\mathbb{R}^m, \mathbb{R}^m \setminus \{f(x)\}).$$
> 左边在 $k = n$ 时为 $\mathbb{Z}$，其余为 $0$；右边在 $k = m$ 时为 $\mathbb{Z}$，其余为 $0$。两者同构迫使 $n = m$。

<!-- invariance_of_dimension_consequence -->
> [!Corollary]
> **$n$ 维和 $m$ 维流形不同胚（$n \neq m$）Non-Homeomorphism of Manifolds of Different Dimensions**：若 $M$ 是 $n$ 维拓扑流形（每点有同胚于 $\mathbb{R}^n$ 的邻域），$N$ 是 $m$ 维拓扑流形（$n \neq m$），则 $M$ 与 $N$ 不同胚。
>
> **证明思路**：若 $f: M \to N$ 是同胚，取 $x \in M$，$f(x) \in N$，则 $f$ 诱导局部同调群的同构，但 $H_n(M, M \setminus \{x\}) \cong \mathbb{Z}$（对某个 $n$ 非零）与 $H_m(N, N \setminus \{f(x)\}) \cong \mathbb{Z}$（对某个 $m$ 非零）必须同构，故 $n = m$。

## 区域不变性

<!-- invariance_of_domain -->
> [!Theorem]
> **区域不变性 Invariance of Domain**：设 $U \subseteq \mathbb{R}^n$ 是开集，$f: U \to \mathbb{R}^n$ 是连续单射，则：
> 1. $f(U)$ 是 $\mathbb{R}^n$ 中的开集；
> 2. $f: U \to f(U)$ 是同胚。
>
> **证明思路**：对任意 $x \in U$，需证 $f(x)$ 是 $f(U)$ 的内点。取 $x$ 的一个闭球邻域 $\bar{B} \subseteq U$（边界为 $S^{n-1}$），则 $f$ 限制到 $\bar{B}$ 上仍是连续单射。利用局部同调群：
>
> $f|_{\bar{B}}: \bar{B} \to f(\bar{B})$ 是同胚（紧致 Hausdorff 空间上的连续单射是同胚）。$f$ 将 $\bar{B}$ 映为一个带边界 $f(S^{n-1})$ 的圆盘状空间；由 Jordan-Brouwer 定理，$f(S^{n-1})$ 将 $\mathbb{R}^n$ 分成两个连通分支，内部分支包含 $f(B)$（开球的像）。由于 $f(\mathrm{Int}(B)) \subseteq \mathbb{R}^n \setminus f(S^{n-1})$ 且连通，它落在某一分支中，该分支完全包含于 $f(U)$（$f$ 的值域）。故 $f(x)$ 是 $f(U)$ 的内点。

<!-- invariance_of_domain_corollary -->
> [!Corollary]
> **连续单射开映射 Continuous Injections are Open Maps**：任何从 $n$ 维流形到 $n$ 维流形的连续单射均是开映射（将开集映为开集），从而是到其像的同胚。这是区域不变性在流形情形的推论。
