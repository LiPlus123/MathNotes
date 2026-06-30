# 蛇引理

## 蛇引理

<!-- snake_lemma_mod -->
> [!Lemma]
> **蛇引理 Snake Lemma**：设 $R$-模有交换图，其中两行均正合：
> $$
> \begin{align*}
> &\phantom{0 \to{}} A \xrightarrow{f} B \xrightarrow{g} C \to 0 \\
> &\phantom{0 \to{}} \downarrow{\alpha} \quad\quad \downarrow{\beta} \quad\quad \downarrow{\gamma} \\
> &0 \to A' \xrightarrow{f'} B' \xrightarrow{g'} C'
> \end{align*}
> $$
> （第一行在 $B$ 处正合且 $g$ 满；第二行在 $B'$ 处正合且 $f'$ 单。）
>
> 则存在唯一的 $R$-模同态**连接同态**（connecting homomorphism）$\partial: \ker\gamma \to \mathrm{coker}\,\alpha$，使得以下序列正合：
> $$
> \ker\alpha \xrightarrow{f|} \ker\beta \xrightarrow{g|} \ker\gamma \xrightarrow{\partial} \mathrm{coker}\,\alpha \xrightarrow{\bar{f}'} \mathrm{coker}\,\beta \xrightarrow{\bar{g}'} \mathrm{coker}\,\gamma.
> $$
> 若还有 $f$ 单（第一行是短正合列的前半段），则 $\ker\alpha \hookrightarrow \ker\beta$ 也单；若 $g'$ 满（第二行是短正合列的后半段），则 $\mathrm{coker}\,\beta \twoheadrightarrow \mathrm{coker}\,\gamma$ 也满，从而得到六项正合列：
> $$
> 0 \to \ker\alpha \to \ker\beta \to \ker\gamma \xrightarrow{\partial} \mathrm{coker}\,\alpha \to \mathrm{coker}\,\beta \to \mathrm{coker}\,\gamma \to 0.
> $$
>
> **证明思路**：连接同态的构造（之字形）：取 $c \in \ker\gamma$，由 $g$ 满取 $b \in B$ 使 $g(b) = c$；计算 $\beta(b) \in B'$，由 $g'(\beta(b)) = \gamma(g(b)) = \gamma(c) = 0$ 故 $\beta(b) \in \ker g' = \mathrm{im}\, f'$；由 $f'$ 单取唯一 $a' \in A'$ 使 $f'(a') = \beta(b)$；令 $\partial(c) = [a'] \in \mathrm{coker}\,\alpha = A'/\mathrm{im}\,\alpha$。验证：若改取 $b_1$（$g(b_1)=c$），则 $b - b_1 \in \ker g = \mathrm{im}\, f$，设 $b - b_1 = f(a)$，则 $a'$ 相差 $\alpha(a)$，故 $[a']$ 不变；类似验证模同调类代表元的独立性。六项正合列各处的正合性均由图追踪完成。

## 连接同态的显式公式

<!-- snake_lemma_connecting_formula -->
> [!Definition]
> **蛇引理连接同态的显式公式 Explicit Formula for Snake Connecting Homomorphism**：在蛇引理的情形中，连接同态 $\partial: \ker\gamma \to \mathrm{coker}\,\alpha$ 可写为：
> $$
> \partial = (f')^{-1} \circ \beta \circ g^{-1} \pmod{\mathrm{im}\,\alpha},
> $$
> 即对 $c \in \ker\gamma$，取任意 $b \in g^{-1}(c)$，令 $\partial(c) = [(f')^{-1}(\beta(b))]$，其中方括号表示 $\mathrm{coker}\,\alpha$ 中的等价类。

## 应用

<!-- snake_lemma_application_ses -->
> [!Corollary]
> **蛇引理与链复形短正合列 Snake Lemma and Short Exact Sequences of Complexes**：设 $0 \to A_\bullet \xrightarrow{f_\bullet} B_\bullet \xrightarrow{g_\bullet} C_\bullet \to 0$ 是链复形的短正合列，则对每个 $n$，蛇引理应用于微分给出正合序列：
> $$
> H_n(A_\bullet) \to H_n(B_\bullet) \to H_n(C_\bullet) \xrightarrow{\delta_n} H_{n-1}(A_\bullet) \to H_{n-1}(B_\bullet) \to H_{n-1}(C_\bullet),
> $$
> 将各段拼接即得同调长正合列。蛇引理是同调长正合列定理的关键引理。
>
> **证明思路**：对每个 $n$，考虑如下交换图（两行正合）：
> $$
> \begin{align*}
> A_n / B_n(A) \xrightarrow{\bar{f}_n} B_n / B_n(B) \xrightarrow{\bar{g}_n} C_n / B_n(C) \to 0 \\
> \downarrow \partial^A_n \quad\quad\quad\quad \downarrow \partial^B_n \quad\quad\quad\quad \downarrow \partial^C_n \\
> 0 \to Z_{n-1}(A) \xrightarrow{f_{n-1}} Z_{n-1}(B) \xrightarrow{g_{n-1}} Z_{n-1}(C)
> \end{align*}
> $$
> 蛇引理给出 $\ker\partial^C_n / \mathrm{im}\,\bar{g}_n \xrightarrow{\delta_n} \ker f_{n-1}|_{Z_{n-1}(A)} / \mathrm{im}\,\partial^A_n$，整理即为 $H_n(C_\bullet) \xrightarrow{\delta_n} H_{n-1}(A_\bullet)$。
