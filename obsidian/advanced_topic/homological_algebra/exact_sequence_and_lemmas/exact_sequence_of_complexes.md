# 链复形的短正合列

## 链复形的短正合列

<!-- short_exact_sequence_of_complexes_def -->
> [!Definition]
> **链复形的短正合列 Short Exact Sequence of Chain Complexes**：设 $(A_\bullet, \partial^A)$、$(B_\bullet, \partial^B)$、$(C_\bullet, \partial^C)$ 是 $R$-模的链复形，$f_\bullet: A_\bullet \to B_\bullet$、$g_\bullet: B_\bullet \to C_\bullet$ 是链映射。称
> $$
> 0 \to A_\bullet \xrightarrow{f_\bullet} B_\bullet \xrightarrow{g_\bullet} C_\bullet \to 0
> $$
> 是一个**链复形的短正合列**（short exact sequence of chain complexes），若对每个 $n \in \mathbb{Z}$，$R$-模的序列
> $$
> 0 \to A_n \xrightarrow{f_n} B_n \xrightarrow{g_n} C_n \to 0
> $$
> 均是正合的，即 $f_n$ 是单射、$g_n$ 是满射，且 $\ker g_n = \mathrm{im}\, f_n$。

> **注**：链复形的短正合列在 $\mathbf{Ch}(R\text{-}\mathbf{Mod})$ 中是正合列的特例。由于链复形的正合性是逐次定义的，链复形的短正合列等价于逐次正合的 $R$-模短正合列族且与微分相容（这由 $f_\bullet$、$g_\bullet$ 是链映射自动保证）。

## 各次正合性

<!-- ses_complex_pointwise_exactness -->
> [!Proposition]
> **各次正合性 Pointwise Exactness**：设 $0 \to A_\bullet \xrightarrow{f_\bullet} B_\bullet \xrightarrow{g_\bullet} C_\bullet \to 0$ 是链复形的短正合列，则：
> 1. $f_\bullet$ 是链映射的单态射（即 $\ker f_\bullet = 0$）；
> 2. $g_\bullet$ 是链映射的满态射（即 $\mathrm{coker}\, g_\bullet = 0$）；
> 3. 对每个 $n$，$f_n$ 将 $A_n$ 同构地映为 $\ker g_n$。
>
> 反之，若链映射 $f_\bullet: A_\bullet \to B_\bullet$ 和 $g_\bullet: B_\bullet \to C_\bullet$ 满足 $g_\bullet \circ f_\bullet = 0$，且对每个 $n$ 序列 $0 \to A_n \to B_n \to C_n \to 0$ 正合，则形成链复形的短正合列。

## 之字形构造

<!-- zigzag_construction -->
> [!Definition]
> **之字形构造 Zigzag Construction**：设 $0 \to A_\bullet \xrightarrow{f_\bullet} B_\bullet \xrightarrow{g_\bullet} C_\bullet \to 0$ 是链复形的短正合列，连接同态（connecting homomorphism）$\delta_n: H_n(C_\bullet) \to H_{n-1}(A_\bullet)$ 的**之字形构造**如下：
>
> 取 $[c] \in H_n(C_\bullet)$，其中 $c \in Z_n(C_\bullet) = \ker\partial^C_n$。
>
> 1. 由 $g_n$ 满，取 $b \in B_n$ 使得 $g_n(b) = c$；
> 2. 计算 $\partial^B_n(b) \in B_{n-1}$。由链映射交换性，$g_{n-1}(\partial^B_n(b)) = \partial^C_n(g_n(b)) = \partial^C_n(c) = 0$，故 $\partial^B_n(b) \in \ker g_{n-1} = \mathrm{im}\, f_{n-1}$；
> 3. 由 $f_{n-1}$ 单，存在唯一 $a \in A_{n-1}$ 使得 $f_{n-1}(a) = \partial^B_n(b)$；
> 4. 验证 $a \in Z_{n-1}(A_\bullet)$：$f_{n-2}(\partial^A_{n-1}(a)) = \partial^B_{n-1}(f_{n-1}(a)) = \partial^B_{n-1}(\partial^B_n(b)) = 0$，由 $f_{n-2}$ 单故 $\partial^A_{n-1}(a) = 0$；
> 5. 定义 $\delta_n([c]) = [a] \in H_{n-1}(A_\bullet)$。
>
> 可验证该定义与 $b$ 的选取（步骤 1）以及 $c$ 在同调类中的代表元的选取（模掉 $B_n(C_\bullet)$）无关，从而 $\delta_n$ 是良定义的 $R$-模同态。

> **注**：构造中在 $A_\bullet$、$B_\bullet$、$C_\bullet$ 三个复形之间来回穿行的步骤形似"之字形"（zigzag），是同调代数中最基本的图追踪技巧，蛇引理和同调长正合列定理均以此为核心。
