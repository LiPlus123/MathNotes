# 基本群的初步应用

## Brouwer 不动点定理（二维）

<!-- no_retraction_lemma -->
> [!Lemma]
> **$S^1$ 不是 $D^2$ 的收缩核 $S^1$ is Not a Retract of $D^2$**：不存在连续映射 $r: D^2 \to S^1$ 使得 $r|_{S^1} = \mathrm{id}_{S^1}$（即 $S^1$ 不是 $D^2$ 的收缩核）。
>
> **证明思路**：设存在这样的收缩 $r: D^2 \to S^1$，令 $i: S^1 \hookrightarrow D^2$ 为含入映射。则 $r \circ i = \mathrm{id}_{S^1}$，对基本群取诱导同态：
> $$r_* \circ i_* = (\mathrm{id}_{S^1})_* = \mathrm{id}_{\mathbb{Z}}: \pi_1(S^1) \to \pi_1(S^1).$$
> 但 $i_*: \pi_1(S^1) \to \pi_1(D^2) = 0$ 是零同态（因为 $D^2$ 可缩，$\pi_1(D^2) = 0$），故 $r_* \circ i_*$ 是零同态，不可能等于 $\mathrm{id}_{\mathbb{Z}}$，矛盾。

<!-- brouwer_fixed_point_2d -->
> [!Theorem]
> **Brouwer 不动点定理（二维）Brouwer Fixed Point Theorem in Dimension 2**：设 $f: D^2 \to D^2$ 是连续映射，则存在不动点 $x \in D^2$ 使得 $f(x) = x$。
>
> **证明思路**：设 $f$ 无不动点，对每个 $x \in D^2$，$f(x) \neq x$，从而由 $f(x)$ 出发过 $x$ 的射线与 $S^1$ 相交于唯一一点 $r(x)$（即从 $f(x)$ 到 $x$ 方向的延伸与单位圆的交点）。则 $r: D^2 \to S^1$ 连续（由 $f$ 连续和几何构造的连续性），且对 $x \in S^1$，$r(x) = x$（从 $f(x)$ 过 $x$ 方向延伸在 $S^1$ 上恰好就是 $x$）。这意味着 $r$ 是从 $D^2$ 到 $S^1$ 的收缩，与上述引理矛盾。

## 代数基本定理（拓扑证明）

<!-- fundamental_theorem_of_algebra -->
> [!Theorem]
> **代数基本定理 Fundamental Theorem of Algebra**：次数 $n \geq 1$ 的复系数多项式 $p(z) = z^n + a_{n-1}z^{n-1} + \cdots + a_0 \in \mathbb{C}[z]$ 在 $\mathbb{C}$ 中至少有一个根。
>
> **证明思路**：设 $p$ 无根，即 $p(z) \neq 0$ 对所有 $z \in \mathbb{C}$ 成立。
>
> **构造回路族**：取充分大的 $R > 0$（使得在 $|z| = R$ 时 $|z^n|$ 主导其余各项，具体地取 $R > 1 + |a_{n-1}| + \cdots + |a_0|$）。对 $r \in [0, R]$，定义回路 $\gamma_r: I \to S^1$（若 $r > 0$ 时 $p$ 无根则此映射有意义）：
> $$\gamma_r(s) = \frac{p(r e^{2\pi i s})}{|p(r e^{2\pi i s})|}.$$
>
> **两端卷绕数**：
> - 当 $r = 0$：$\gamma_0(s) = p(0)/|p(0)| = a_0/|a_0|$，为常值回路，卷绕数为 $0$；
> - 当 $r = R$：$\gamma_R$ 与 $s \mapsto e^{2\pi i n s}$（$n$ 次绕行回路）同伦（因为 $p(Re^{2\pi is})/|p(Re^{2\pi is})|$ 与 $(Re^{2\pi is})^n/|(Re^{2\pi is})^n| = e^{2\pi ins}$ 之间可通过直线同伦在 $S^1$ 中连接，条件 $R$ 足够大保证直线同伦不经过原点），故卷绕数为 $n$。
>
> **矛盾**：由 $p$ 无根，$r \mapsto \gamma_r$ 是回路族的连续形变，卷绕数是同伦不变量，应从 $0$（$r=0$ 时）连续变化到 $n$（$r=R$ 时），但卷绕数取整数值且随连续变化保持不变，故只能恒为 $0$；而 $n \geq 1 \neq 0$，矛盾。

## Borsuk-Ulam 定理（二维）

<!-- borsuk_ulam_2d -->
> [!Theorem]
> **Borsuk-Ulam 定理（二维）Borsuk-Ulam Theorem in Dimension 2**：设 $f: S^2 \to \mathbb{R}^2$ 是连续映射，则存在 $x \in S^2$ 使得 $f(x) = f(-x)$（即存在对径点被映到同一点）。
>
> **证明思路**：设 $f(x) \neq f(-x)$ 对所有 $x \in S^2$ 成立，定义：
> $$g: S^2 \to S^1, \quad g(x) = \frac{f(x) - f(-x)}{|f(x) - f(-x)|}.$$
> 则 $g$ 连续，且满足 $g(-x) = -g(x)$（**奇映射 Odd Map**）。
>
> **限制到赤道**：令 $\iota: S^1 \hookrightarrow S^2$ 为赤道的含入，$h = g \circ \iota: S^1 \to S^1$，则 $h$ 满足 $h(-z) = -h(z)$（奇映射）。
>
> **卷绕数矛盾**：一方面，$h$ 将赤道 $S^1$ 映到 $S^1$ 且为奇映射，其卷绕数必为奇数（特别地非零）。这可通过构造论证：奇连续映射 $S^1 \to S^1$ 的卷绕数为奇数（Borsuk 引理）。另一方面，$g$ 定义在整个 $S^2$ 上，$h = g|_{S^1}$：$h$ 视为赤道圆上的回路，可通过南半球 $D^2_-$（以赤道为边界）将其延伸，赤道回路 $h$ 在 $\pi_1(S^1)$ 中等于 $(g|_{D^2_-})_*([\partial D^2_-])$，而 $D^2_-$ 可缩，故 $h$ 作为 $S^1 \to S^1$ 的映射的卷绕数为 $0$。卷绕数同时为奇数和 $0$，矛盾。

> **注**：Borsuk-Ulam 定理的等价形式：不存在连续奇映射 $g: S^n \to S^{n-1}$（$n \geq 1$）。其直接推论包括：在任意时刻，地球表面上必存在一对对径点，气温和气压完全相同（$n = 2$，$f$ 为气温与气压构成的 $\mathbb{R}^2$ 值函数）。
