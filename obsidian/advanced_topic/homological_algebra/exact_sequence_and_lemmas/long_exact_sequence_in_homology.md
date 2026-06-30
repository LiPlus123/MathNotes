# 同调的长正合列

## 同调长正合列定理

<!-- long_exact_sequence_in_homology_thm -->
> [!Theorem]
> **同调的长正合列 Long Exact Sequence in Homology**：设
> $$
> 0 \to A_\bullet \xrightarrow{f_\bullet} B_\bullet \xrightarrow{g_\bullet} C_\bullet \to 0
> $$
> 是链复形的短正合列，则存在 $R$-模同态族 $\{\delta_n: H_n(C_\bullet) \to H_{n-1}(A_\bullet)\}_{n \in \mathbb{Z}}$（连接同态），使得以下序列正合：
> $$
> \cdots \to H_n(A_\bullet) \xrightarrow{H_n(f)} H_n(B_\bullet) \xrightarrow{H_n(g)} H_n(C_\bullet) \xrightarrow{\delta_n} H_{n-1}(A_\bullet) \to \cdots
> $$
>
> **证明思路**：连接同态 $\delta_n$ 由之字形构造给出（参见 `zigzag_construction`）。需逐段验证长序列在以下各处正合：
> - 在 $H_n(B_\bullet)$ 处：$\ker H_n(g) = \mathrm{im}\, H_n(f)$（图追踪，利用 $\ker g_n = \mathrm{im}\, f_n$）；
> - 在 $H_n(C_\bullet)$ 处：$\ker \delta_n = \mathrm{im}\, H_n(g)$（图追踪）；
> - 在 $H_{n-1}(A_\bullet)$ 处：$\ker H_{n-1}(f) = \mathrm{im}\, \delta_n$（图追踪，利用 $f_{n-1}$ 单）。

## 连接同态的构造

<!-- connecting_homomorphism_construction -->
> [!Definition]
> **连接同态 Connecting Homomorphism**：在同调长正合列中，**连接同态**（connecting homomorphism）$\delta_n: H_n(C_\bullet) \to H_{n-1}(A_\bullet)$ 由之字形构造给出：
> $$
> \delta_n([c]) = [a], \quad \text{其中 } a \in A_{n-1} \text{ 满足 } f_{n-1}(a) = \partial^B_n(b),\ g_n(b) = c.
> $$
> 具体地，对循环 $c \in Z_n(C_\bullet)$，先在 $B_n$ 中取 $g_n(b) = c$，再令 $a = f_{n-1}^{-1}(\partial^B_n(b))$，则 $a$ 是 $A_{n-1}$ 中的循环，且其同调类与选取无关。

## 连接同态的自然性

<!-- connecting_homomorphism_naturality -->
> [!Proposition]
> **连接同态的自然性 Naturality of Connecting Homomorphism**：设有链复形短正合列的交换图（态射均为链映射）：
> $$
> \begin{align*}
> 0 \to A_\bullet \xrightarrow{f_\bullet} B_\bullet \xrightarrow{g_\bullet} C_\bullet \to 0 \\
> \downarrow \alpha_\bullet \quad\quad\quad \downarrow \beta_\bullet \quad\quad\quad \downarrow \gamma_\bullet \\
> 0 \to A'_\bullet \xrightarrow{f'_\bullet} B'_\bullet \xrightarrow{g'_\bullet} C'_\bullet \to 0
> \end{align*}
> $$
> 则对所有 $n$，下图交换：
> $$
> \begin{align*}
> H_n(C_\bullet) &\xrightarrow{\delta_n} H_{n-1}(A_\bullet) \\
> H_n(\gamma) \downarrow &\quad\quad\quad \downarrow H_{n-1}(\alpha) \\
> H_n(C'_\bullet) &\xrightarrow{\delta'_n} H_{n-1}(A'_\bullet)
> \end{align*}
> $$
> 即连接同态是关于链复形短正合列的自然变换。
>
> **证明思路**：对连接同态的之字形构造逐步追踪，利用 $\alpha_\bullet$、$\beta_\bullet$、$\gamma_\bullet$ 与微分的交换性，验证 $H_{n-1}(\alpha) \circ \delta_n = \delta'_n \circ H_n(\gamma)$。

> **注**：自然性意味着同调长正合列是函子性的：链复形短正合列的态射诱导长正合列的态射。这是同调代数的核心结构性质，为导出函子的长正合列奠定基础。
