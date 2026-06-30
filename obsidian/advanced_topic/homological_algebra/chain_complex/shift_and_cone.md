# 平移与映射锥

## 链复形的平移

<!-- shift_of_chain_complex_def -->
> [!Definition]
> **链复形的平移 Shift of Chain Complex**：设 $(C_\bullet, \partial)$ 是链复形，$n \in \mathbb{Z}$。**平移链复形**（shifted complex）$C[n]_\bullet$ 定义为：
> $$
> C[n]_k = C_{n+k}, \quad \partial^{C[n]}_k = (-1)^n \partial_{n+k}.
> $$
> 上链复形版本类似：$(C^\bullet[n])^k = C^{n+k}$，$d^k_{C[n]} = (-1)^n d^{n+k}$。

> **注**：平移将链复形整体向左（或向右）移动 $n$ 级，符号因子 $(-1)^n$ 是为了保证后续映射锥等构造的微分满足 $d^2 = 0$。平移满足 $C[m][n] = C[m+n]$，且 $H_k(C[n]_\bullet) = H_{n+k}(C_\bullet)$。

## 映射锥

<!-- mapping_cone_def -->
> [!Definition]
> **映射锥 Mapping Cone**：设 $f_\bullet: C_\bullet \to D_\bullet$ 是链映射，其**映射锥**（mapping cone）$\mathrm{Cone}(f)$ 定义为：
> $$
> \mathrm{Cone}(f)_n = C_{n-1} \oplus D_n,
> $$
> 微分为：
> $$
> \partial^{\mathrm{Cone}(f)}_n: C_{n-1} \oplus D_n \to C_{n-2} \oplus D_{n-1},
> $$
> $$
> \partial^{\mathrm{Cone}(f)}_n(c, d) = \bigl(-\partial^C_{n-1}(c),\; \partial^D_n(d) + f_{n-1}(c)\bigr).
> $$
> 可验证 $(\partial^{\mathrm{Cone}(f)})^2 = 0$，故 $\mathrm{Cone}(f)$ 是链复形。

> **注**：映射锥是拓扑中映射锥概念的代数类比。自然地，$\mathrm{Cone}(f) = D_\bullet \oplus C_\bullet[-1]$ 作为分次模，微分由 $f$ "粘合"两个分量。

## 映射柱

<!-- mapping_cylinder_def -->
> [!Definition]
> **映射柱 Mapping Cylinder**：设 $f_\bullet: C_\bullet \to D_\bullet$ 是链映射，其**映射柱**（mapping cylinder）$\mathrm{Cyl}(f)$ 定义为：
> $$
> \mathrm{Cyl}(f)_n = C_n \oplus C_{n-1} \oplus D_n,
> $$
> 微分为：
> $$
> \partial^{\mathrm{Cyl}(f)}_n(c, c', d) = \bigl(\partial^C_n(c) + c',\; -\partial^C_{n-1}(c'),\; f_{n-1}(c') + \partial^D_n(d)\bigr).
> $$
> 存在自然的链映射：包含映射 $\iota: C_\bullet \to \mathrm{Cyl}(f)$（$c \mapsto (c, 0, 0)$）和投影 $\pi: \mathrm{Cyl}(f) \to D_\bullet$（$(c, c', d) \mapsto d + f_n(c)$），且 $\pi \circ \iota = f_\bullet$。

## 与短正合列的关系

<!-- cone_short_exact_sequence -->
> [!Proposition]
> **映射锥的短正合列 Short Exact Sequence of the Mapping Cone**：设 $f_\bullet: C_\bullet \to D_\bullet$ 是链映射，存在链复形的短正合列：
> $$
> 0 \to D_\bullet \xrightarrow{\iota} \mathrm{Cone}(f) \xrightarrow{\pi} C_\bullet[-1] \to 0,
> $$
> 其中 $\iota(d) = (0, d)$，$\pi(c, d) = c$（注意 $C_\bullet[-1]_n = C_{n-1}$）。

<!-- cone_long_exact_sequence -->
> [!Theorem]
> **映射锥的同调长正合列 Long Exact Sequence of the Mapping Cone**：由上述短正合列，可得同调的长正合列：
> $$
> \cdots \to H_n(D_\bullet) \to H_n(\mathrm{Cone}(f)) \to H_{n-1}(C_\bullet) \xrightarrow{H_{n-1}(f)} H_{n-1}(D_\bullet) \to \cdots
> $$
> 其中连接同态恰好由 $f_\bullet$ 诱导的同调群同态给出。
>
> **证明思路**：对链复形的短正合列应用同调的长正合列定理，追踪连接同态的显式构造，验证其恰为 $H_{n-1}(f)$。

<!-- cone_quasi_isomorphism -->
> [!Corollary]
> **映射锥与拟同构 Mapping Cone and Quasi-isomorphism**：链映射 $f_\bullet: C_\bullet \to D_\bullet$ 是拟同构，当且仅当 $\mathrm{Cone}(f)$ 是正合复形（即 $H_n(\mathrm{Cone}(f)) = 0$ 对所有 $n$）。
>
> **证明思路**：由映射锥的同调长正合列，$H_n(\mathrm{Cone}(f)) = 0$ 等价于每处 $H_n(f)$ 是同构。
