# 链映射

## 链映射的定义

<!-- chain_map_def -->
> [!Definition]
> **链映射 Chain Map**：设 $(C_\bullet, \partial^C)$ 和 $(D_\bullet, \partial^D)$ 是两个链复形。一个**链映射**（chain map）$f_\bullet: C_\bullet \to D_\bullet$ 是一族 $R$-模同态 $\{f_n: C_n \to D_n\}_{n \in \mathbb{Z}}$，满足对所有 $n \in \mathbb{Z}$，下图交换：
> $$
> \begin{align*}
> C_n &\xrightarrow{\partial^C_n} C_{n-1} \\
> f_n \downarrow &\quad\quad\quad \downarrow f_{n-1} \\
> D_n &\xrightarrow{\partial^D_n} D_{n-1}
> \end{align*}
> $$
> 即 $f_{n-1} \circ \partial^C_n = \partial^D_n \circ f_n$，或简记为 $f \circ \partial^C = \partial^D \circ f$。

## 链映射的复合

<!-- chain_map_composition -->
> [!Definition]
> **链映射的复合 Composition of Chain Maps**：设 $f_\bullet: C_\bullet \to D_\bullet$ 和 $g_\bullet: D_\bullet \to E_\bullet$ 是链映射，其**复合** $(g \circ f)_\bullet: C_\bullet \to E_\bullet$ 定义为逐次复合：
> $$
> (g \circ f)_n = g_n \circ f_n: C_n \to E_n.
> $$
> 可验证 $g \circ f$ 仍是链映射，且满足 $(h \circ g) \circ f = h \circ (g \circ f)$。

## 链映射诱导同调群同态

<!-- chain_map_induces_homology_map -->
> [!Proposition]
> **链映射诱导同调群同态 Chain Maps Induce Maps on Homology**：设 $f_\bullet: C_\bullet \to D_\bullet$ 是链映射，则 $f_\bullet$ 将循环映至循环、将边缘映至边缘，从而对每个 $n \in \mathbb{Z}$ 诱导出一个 $R$-模同态：
> $$
> H_n(f): H_n(C_\bullet) \to H_n(D_\bullet), \quad [c] \mapsto [f_n(c)].
> $$
> 该映射是良定义的，且满足：
> - （函子性）若 $g_\bullet: D_\bullet \to E_\bullet$ 也是链映射，则 $H_n(g \circ f) = H_n(g) \circ H_n(f)$；
> - （单位）$H_n(\mathrm{id}_{C_\bullet}) = \mathrm{id}_{H_n(C_\bullet)}$。
>
> **证明思路**：若 $c \in \ker\partial^C_n$（即 $c$ 是循环），则 $\partial^D_n(f_n(c)) = f_{n-1}(\partial^C_n(c)) = 0$，故 $f_n(c)$ 也是循环。若 $c = \partial^C_{n+1}(b)$（即 $c$ 是边缘），则 $f_n(c) = f_n(\partial^C_{n+1}(b)) = \partial^D_{n+1}(f_{n+1}(b))$，也是边缘。因此 $f_n$ 诱导商群上的良定义映射。

## 链复形范畴

<!-- category_of_chain_complexes -->
> [!Definition]
> **链复形范畴 Category of Chain Complexes**：$R$-模的**链复形范畴** $\mathbf{Ch}(R\text{-}\mathbf{Mod})$ 定义为：
> - 对象：所有 $R$-模的链复形 $(C_\bullet, \partial)$；
> - 态射：链映射 $f_\bullet: C_\bullet \to D_\bullet$；
> - 复合：链映射的逐次复合；
> - 恒等态射：$(\mathrm{id}_{C_\bullet})_n = \mathrm{id}_{C_n}$。
>
> 同调群的赋值 $H_n: \mathbf{Ch}(R\text{-}\mathbf{Mod}) \to R\text{-}\mathbf{Mod}$ 是从链复形范畴到模范畴的函子。

> **注**：$\mathbf{Ch}(R\text{-}\mathbf{Mod})$ 本身是一个阿贝尔范畴：链复形的核、余核、像均逐次在各 $C_n$ 上取，链映射的核与余核也是链复形。这使得"链复形的正合列"有意义，是后续同调代数理论的基础。
