# 链同伦

## 链同伦的定义

<!-- chain_homotopy_def -->
> [!Definition]
> **链同伦 Chain Homotopy**：设 $f_\bullet, g_\bullet: C_\bullet \to D_\bullet$ 是两个链映射。一个从 $f_\bullet$ 到 $g_\bullet$ 的**链同伦**（chain homotopy）$h$ 是一族 $R$-模同态
> $$
> h_n: C_n \to D_{n+1} \quad (n \in \mathbb{Z}),
> $$
> 满足对所有 $n \in \mathbb{Z}$：
> $$
> g_n - f_n = \partial^D_{n+1} \circ h_n + h_{n-1} \circ \partial^C_n.
> $$
> 若存在这样的链同伦 $h$，则称 $f_\bullet$ 与 $g_\bullet$ **链同伦**（chain homotopic），记作 $f_\bullet \simeq g_\bullet$。

> **注**：链同伦的定义可理解为：$g - f$ 等于"上"（$h$ 先作用再取边界）与"下"（先取边界再作 $h$）之和。这与拓扑中的同伦概念类比：两个连续映射同伦当且仅当存在"连接"它们的道路族。

## 链同伦链映射诱导相同的同调群同态

<!-- chain_homotopy_same_homology -->
> [!Theorem]
> **链同伦的链映射诱导相同同调 Chain Homotopic Maps Induce Equal Maps on Homology**：设 $f_\bullet \simeq g_\bullet: C_\bullet \to D_\bullet$，则对所有 $n \in \mathbb{Z}$，
> $$
> H_n(f) = H_n(g): H_n(C_\bullet) \to H_n(D_\bullet).
> $$
>
> **证明思路**：设 $h$ 是 $f$ 到 $g$ 的链同伦，取循环 $c \in \ker\partial^C_n$。则：
> $$
> g_n(c) - f_n(c) = \partial^D_{n+1}(h_n(c)) + h_{n-1}(\partial^C_n(c)) = \partial^D_{n+1}(h_n(c)),
> $$
> 其中用到 $\partial^C_n(c) = 0$。故 $g_n(c) - f_n(c)$ 是边缘，从而 $[g_n(c)] = [f_n(c)]$ 在 $H_n(D_\bullet)$ 中。

## 链同伦等价

<!-- chain_homotopy_equivalence_def -->
> [!Definition]
> **链同伦等价 Chain Homotopy Equivalence**：链映射 $f_\bullet: C_\bullet \to D_\bullet$ 称为**链同伦等价**（chain homotopy equivalence），若存在链映射 $g_\bullet: D_\bullet \to C_\bullet$ 使得：
> $$
> g_\bullet \circ f_\bullet \simeq \mathrm{id}_{C_\bullet}, \quad f_\bullet \circ g_\bullet \simeq \mathrm{id}_{D_\bullet}.
> $$
> 此时称 $C_\bullet$ 与 $D_\bullet$ **链同伦等价**（chain homotopy equivalent），记作 $C_\bullet \simeq D_\bullet$，$g_\bullet$ 称为 $f_\bullet$ 的**链同伦逆**。

<!-- chain_homotopy_equivalence_induces_iso -->
> [!Corollary]
> **链同伦等价诱导同调同构 Chain Homotopy Equivalences Induce Isomorphisms on Homology**：若 $f_\bullet: C_\bullet \to D_\bullet$ 是链同伦等价，则对所有 $n \in \mathbb{Z}$，
> $$
> H_n(f): H_n(C_\bullet) \xrightarrow{\sim} H_n(D_\bullet)
> $$
> 是 $R$-模同构。
>
> **证明思路**：设 $g_\bullet$ 是 $f_\bullet$ 的链同伦逆，则 $H_n(g) \circ H_n(f) = H_n(g \circ f) = H_n(\mathrm{id}) = \mathrm{id}$，同理 $H_n(f) \circ H_n(g) = \mathrm{id}$，故 $H_n(f)$ 是同构。

> **注**：链同伦等价是比拟同构（quasi-isomorphism）更强的概念：链同伦等价必是拟同构，但反之不然。链同伦等价的链复形在同伦范畴 $K(R\text{-}\mathbf{Mod})$ 中是同构对象。
