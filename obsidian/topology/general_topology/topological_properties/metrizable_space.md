# 可度量化空间

## 可度量化空间

<!-- metrizable_space_definition -->
> [!Definition]
> **可度量化空间 Metrizable Space**：拓扑空间 $(X, \mathcal{T})$ 称为**可度量化的 Metrizable**，若存在 $X$ 上的度量 $d$ 使得由 $d$ 诱导的拓扑 $\mathcal{T}_d$ 等于 $\mathcal{T}$（即 $(X, \mathcal{T})$ 同胚于某个度量空间）。这样的度量 $d$ 称为与 $\mathcal{T}$ **相容的 Compatible** 度量。

> **注**：可度量化空间自动满足所有分离公理（$T_0$ 到 $T_4$）以及第一可数性。

## Urysohn 引理

<!-- urysohn_lemma -->
> [!Lemma]
> **Urysohn 引理 Urysohn's Lemma**：设 $(X, \mathcal{T})$ 是正规（$T_4$）空间，$A, B \subseteq X$ 是不相交的闭集。则存在连续函数 $f: X \to [0, 1]$ 使得 $f|_A \equiv 0$ 且 $f|_B \equiv 1$（即 $f(x) = 0$ 对所有 $x \in A$，$f(x) = 1$ 对所有 $x \in B$）。
>
> **证明思路**：利用正规性在二进有理数处递归构造开集族 $\{U_r\}_{r \in \mathbb{Q} \cap [0,1]}$（满足 $r < s \Rightarrow \overline{U_r} \subseteq U_s$，$A \subseteq U_0$，$B \cap U_1 = \varnothing$），然后令 $f(x) = \inf\{r \in \mathbb{Q} \cap [0,1] \mid x \in U_r\}$，验证 $f$ 连续（利用 $\{U_r\}$ 的嵌套性）。

## Tietze 扩张定理

<!-- tietze_extension_theorem -->
> [!Theorem]
> **Tietze 扩张定理 Tietze Extension Theorem**：设 $(X, \mathcal{T})$ 是正规（$T_4$）空间，$A \subseteq X$ 是闭子集，$f: A \to [a, b]$（或 $f: A \to \mathbb{R}$）是连续函数。则存在连续函数 $F: X \to [a, b]$（或 $F: X \to \mathbb{R}$）使得 $F|_A = f$（即 $F$ 是 $f$ 的连续延拓）。
>
> **证明思路**：利用 Urysohn 引理逐步逼近：对每个 $n$，将 $f$ 与其截断之差用 Urysohn 函数逼近，构造收敛的连续函数级数，其极限即为所求延拓。

## Urysohn 度量化定理

<!-- urysohn_metrization_theorem -->
> [!Theorem]
> **Urysohn 度量化定理 Urysohn Metrization Theorem**：每个第二可数的正则（$T_3$）拓扑空间都是可度量化的，且可嵌入希尔伯特方体 $[0,1]^\omega = \prod_{n=1}^\infty [0,1]$（配积拓扑）中。
>
> **证明思路**：第二可数 $T_3$ 空间也是正规的（$T_4$）。取可数基 $\{B_n\}$，对每对满足 $\overline{B_m} \subseteq B_n$ 的 $(m,n)$，由 Urysohn 引理取连续函数 $f_{mn}: X \to [0,1]$ 使 $f_{mn}|_{\overline{B_m}} \equiv 0$，$f_{mn}|_{X \setminus B_n} \equiv 1$；由这些可数个函数构造嵌入 $F: X \to [0,1]^\omega$，$[0,1]^\omega$ 是度量空间（积度量），$F$ 是拓扑嵌入。

## 局部可度量化

<!-- locally_metrizable_definition -->
> [!Definition]
> **局部可度量化 Locally Metrizable**：拓扑空间 $(X, \mathcal{T})$ 称为**局部可度量化的 Locally Metrizable**，若每个点都有一个可度量化的开邻域。

> **注**：可度量化 $\Rightarrow$ 局部可度量化，但反之不然。

## Nagata–Smirnov 度量化定理

<!-- nagata_smirnov_metrization_theorem -->
> [!Theorem]
> **Nagata–Smirnov 度量化定理 Nagata–Smirnov Metrization Theorem**：拓扑空间 $(X, \mathcal{T})$ 是可度量化的，当且仅当 $X$ 是正则的（$T_3$）且有一个 **$\sigma$-局部有限的基 $\sigma$-Locally Finite Basis**，即存在基 $\mathcal{B} = \bigcup_{n=1}^\infty \mathcal{B}_n$，其中每个 $\mathcal{B}_n$ 是局部有限的。
>
> **证明思路**：$(\Rightarrow)$ 度量空间是正则的；度量空间的基 $\{B(x, \frac{1}{n}) \mid x \in X\}$（对每个固定 $n$）是局部有限的（在度量空间中可选取离散子网构成局部有限子集族），故度量空间有 $\sigma$-局部有限基。$(\Leftarrow)$ 利用 $\sigma$-局部有限基构造 Urysohn 型函数族，用类似 Urysohn 度量化定理的方法嵌入度量空间中。

> **注**：Nagata–Smirnov 定理给出了可度量化的充要条件，比 Urysohn 度量化定理更一般（不要求第二可数）。对第二可数情形，$\sigma$-局部有限基可取为可数基，从而退化为 Urysohn 定理。
