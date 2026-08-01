# 有界闭域上连续函数的性质

<!-- real_analysis_multivariable_bounded_closed_set_definition -->
> [!Definition]
> **有界闭集 Bounded Closed Set**：集合 $K\subseteq\mathbb{R}^n$ 称为有界的，若存在 $M>0$，使得对任意 $x\in K$ 都有 $\|x\|\leq M$。若 $K$ 同时有界且闭，则称为有界闭集；在多元微积分中，常将非空有界闭集称为有界闭域。

<!-- real_analysis_multivariable_heine_borel_closed_bounded_form -->
> [!Theorem]
> **有界闭集的 Heine-Borel 判据 Heine-Borel Criterion for Bounded Closed Sets**：$K\subseteq\mathbb{R}^n$ 是有界闭集，当且仅当 $K$ 是紧集。
>
> **证明思路**：这是欧氏空间中 Heine-Borel 定理的直接表述。有限维性在此结论中是本质条件。

<!-- real_analysis_multivariable_bolzano_weierstrass_theorem -->
> [!Theorem]
> **Bolzano-Weierstrass 定理 Bolzano-Weierstrass Theorem**：每个有界序列 $(x_k)$ 都有收敛子列。若所有 $x_k\in K$ 且 $K$ 为有界闭集，则该子列的极限属于 $K$。
>
> **证明思路**：有界序列包含在某个闭立方体内。逐坐标提取收敛子列并用对角线法得到收敛子列；闭集的序列刻画保证极限仍留在 $K$ 中。

<!-- real_analysis_multivariable_boundedness_on_compact_set -->
> [!Theorem]
> **紧集上连续函数有界 Boundedness of Continuous Functions on Compact Sets**：若 $K\subseteq\mathbb{R}^n$ 紧，且 $f:K\to\mathbb{R}^m$ 连续，则 $f(K)$ 有界。等价地，存在 $M>0$，使得对所有 $x\in K$ 有 $\|f(x)\|\leq M$。
>
> **证明思路**：连续像 $f(K)$ 紧，故由 Heine-Borel 定理有界。

<!-- real_analysis_multivariable_extreme_value_theorem -->
> [!Theorem]
> **多元函数最值定理 Extreme Value Theorem for Multivariable Functions**：若 $K\subseteq\mathbb{R}^n$ 为非空紧集，且 $f:K\to\mathbb{R}$ 连续，则存在 $x_{\min},x_{\max}\in K$，使得对任意 $x\in K$，
> $$
> f(x_{\min})\leq f(x)\leq f(x_{\max}).
> $$
>
> **证明思路**：$f(K)$ 是 $\mathbb{R}$ 中的非空紧集，因而为有界闭集；其上确界和下确界属于 $f(K)$，故分别被 $f$ 取到。

<!-- real_analysis_multivariable_uniform_continuity_on_bounded_closed_set -->
> [!Corollary]
> **有界闭集上的一致连续性 Uniform Continuity on Bounded Closed Sets**：若 $K\subseteq\mathbb{R}^n$ 为有界闭集，且 $f:K\to\mathbb{R}^m$ 连续，则 $f$ 在 $K$ 上一致连续。
>
> **证明思路**：由 Heine-Borel 定理，$K$ 紧；应用 Heine-Cantor 定理。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapters 2、4；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapters 3--4。