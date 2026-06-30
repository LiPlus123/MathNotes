# Bar 分解

## 标准 bar 分解

<!-- bar_resolution_def -->
> [!Definition]
> **标准 bar 分解 Standard Bar Resolution**：设 $G$ 是群。定义左 $\mathbb{Z}[G]$-模链复形 $B_\bullet(G)$：
> - $B_n(G)$ 是自由左 $\mathbb{Z}[G]$-模，其基为形式符号 $[g_1|\cdots|g_n]$（$g_i\in G$）；
> - 微分 $\partial_n: B_n(G)\to B_{n-1}(G)$ 定义为
> $$
> \partial_n[g_1|\cdots|g_n]
> = g_1[g_2|\cdots|g_n]
> + \sum_{i=1}^{n-1}(-1)^i [g_1|\cdots|g_i g_{i+1}|\cdots|g_n]
> + (-1)^n [g_1|\cdots|g_{n-1}].
> $$
> 再配以增广映射 $\varepsilon: B_0(G)=\mathbb{Z}[G]\to\mathbb{Z}$，得到平凡模 $\mathbb{Z}$ 的自由分解，称为**bar 分解**。

> **注**：bar 分解是群上同调最标准、最显式的分解之一，尽管通常很大，但非常适合写出低次 cocycle 与 boundary 的显式公式。

## 规范上链复形

<!-- normalized_cochain_complex_def -->
> [!Definition]
> **规范上链复形 Normalized Cochain Complex**：对左 $G$-模 $M$，由 bar 分解得到上链复形
> $$
> C^n(G,M)=\mathrm{Hom}_{\mathbb{Z}[G]}(B_n(G),M).
> $$
> 利用自由基可将其识别为所有函数
> $$
> f:G^n\to M.
> $$
> 余微分 $d^n:C^n(G,M)\to C^{n+1}(G,M)$ 为
> $$
> \begin{align*}
> (d^n f)(g_1,\dots,g_{n+1})
> &= g_1\cdot f(g_2,\dots,g_{n+1}) \\
> &\quad + \sum_{i=1}^{n}(-1)^i f(g_1,\dots,g_i g_{i+1},\dots,g_{n+1}) \\
> &\quad + (-1)^{n+1} f(g_1,\dots,g_n).
> \end{align*}
> $$
> 其上同调即为 $H^n(G,M)$。

<!-- normalized_chain_complex_def -->
> [!Definition]
> **规范链复形 Normalized Chain Complex**：群下同调可由链复形
> $$
> C_n(G,M)=B_n(G)\otimes_{\mathbb{Z}[G]} M
> $$
> 计算。用基识别后，可写成由符号 $[g_1|\cdots|g_n]\otimes m$ 张成的链群，其边界由 bar 分解微分诱导。

## 低次显式描述

<!-- low_degree_cochains_from_bar -->
> [!Proposition]
> **低次 cochain 的显式形式 Explicit Low-degree Cochains**：
> - $0$-cochain 是元素 $m\in M$；
> - $1$-cochain 是函数 $f:G\to M$；
> - $2$-cochain 是函数 $c:G\times G\to M$。
>
> 其中：
> - $1$-cocycle 满足
> $$
> f(gh)=f(g)+g\cdot f(h);
> $$
> - $1$-coboundary 形如
> $$
> f(g)=g\cdot m-m;
> $$
> - $2$-cocycle 满足
> $$
> g\cdot c(h,k)-c(gh,k)+c(g,hk)-c(g,h)=0.
> $$
>
> **证明思路**：直接将 $d^0,d^1,d^2$ 的显式公式写出并整理即可。