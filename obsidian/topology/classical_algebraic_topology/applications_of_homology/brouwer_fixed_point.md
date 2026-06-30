# Brouwer 不动点定理

## 关键引理：不存在从圆盘到边界的收缩

<!-- no_retraction_general -->
> [!Lemma]
> **$S^{n-1}$ 不是 $D^n$ 的收缩核 $S^{n-1}$ is Not a Retract of $D^n$**（$n \geq 1$）：不存在连续映射 $r: D^n \to S^{n-1}$ 使得 $r|_{S^{n-1}} = \mathrm{id}_{S^{n-1}}$。
>
> **证明思路**：设存在这样的收缩 $r$，令 $i: S^{n-1} \hookrightarrow D^n$ 为含入。则 $r \circ i = \mathrm{id}_{S^{n-1}}$，对第 $(n-1)$ 个同调群取诱导同态：
> $$r_* \circ i_* = (\mathrm{id}_{S^{n-1}})_* = \mathrm{id}: H_{n-1}(S^{n-1}) \to H_{n-1}(S^{n-1}).$$
> 但 $H_{n-1}(S^{n-1}) \cong \mathbb{Z}$ 而 $H_{n-1}(D^n) = 0$（$D^n$ 可缩），故 $i_*: \mathbb{Z} \to 0$ 是零同态，从而 $r_* \circ i_* = 0 \neq \mathrm{id}$，矛盾。

## Brouwer 不动点定理（一般维数）

<!-- brouwer_fixed_point_general -->
> [!Theorem]
> **Brouwer 不动点定理 Brouwer Fixed Point Theorem**（$n \geq 1$）：设 $f: D^n \to D^n$ 是连续映射，则存在不动点 $x \in D^n$ 使得 $f(x) = x$。
>
> **证明思路**：设 $f$ 无不动点，则 $f(x) \neq x$ 对所有 $x \in D^n$。定义 $r: D^n \to S^{n-1}$ 如下：对每个 $x \in D^n$，连接 $f(x)$ 到 $x$ 的射线与 $S^{n-1}$ 交于唯一点 $r(x)$（即从 $f(x)$ 出发过 $x$ 方向延伸后到达 $S^{n-1}$）：
> $$r(x) = x + t(x)(x - f(x)), \quad t(x) = \frac{-x \cdot (x-f(x)) + \sqrt{(x \cdot (x-f(x)))^2 + \|x-f(x)\|^2(1-\|x\|^2)}}{\|x-f(x)\|^2}.$$
> 此 $r$ 连续（分子的根式因 $f(x) \neq x$ 保证大于零），且对 $x \in S^{n-1}$，$r(x) = x$（射线与 $S^{n-1}$ 的交即 $x$ 本身）。故 $r$ 是从 $D^n$ 到 $S^{n-1}$ 的收缩，与上述引理矛盾。

## 推论

<!-- brouwer_corollary_annulus -->
> [!Corollary]
> **连续映射保不动点的稳定性**：更一般地，任意同胚于 $D^n$ 的紧致凸集 $K \subseteq \mathbb{R}^n$ 上的连续自映射均有不动点（由仿射同胚将问题化归为 $D^n$ 上的情形）。

<!-- brouwer_corollary_hairy_ball_connection -->
> **注**：Brouwer 不动点定理等价于不存在从 $D^n$ 到 $S^{n-1}$ 的收缩这一引理（两者可互推，如上所示）。其高维推广将在毛球定理和同调的进一步应用中发挥作用。
