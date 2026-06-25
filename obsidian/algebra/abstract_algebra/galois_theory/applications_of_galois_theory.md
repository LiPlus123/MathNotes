# Galois 理论的应用

## 尺规作图

<!-- constructible_number_def -->
> [!Definition]
> **可作图数 Constructible Number**：从长度为 $1$ 的线段出发，通过有限次直尺（无刻度）和圆规操作能够构造出的实数 $\alpha \geq 0$，称为**可作图数**。所有可作图数关于四则运算和开平方封闭，构成 $\mathbb{R}$ 的一个子域，记为 $\mathbb{Q}^{\mathrm{cons}}$。

<!-- constructible_algebraic_criterion -->
> [!Theorem]
> **可作图数的代数刻画**：实数 $\alpha$ 可作图当且仅当存在域塔
> $$
> \mathbb{Q} = F_0 \subseteq F_1 \subseteq \cdots \subseteq F_k
> $$
> 使得 $\alpha \in F_k$，且每步扩张次数 $[F_{i+1} : F_i] = 2$。因此，若 $\alpha$ 可作图，则 $[\mathbb{Q}(\alpha) : \mathbb{Q}]$ 是 $2$ 的幂次。
>
> **证明思路**：每次直尺圆规操作等价于求两圆、直线之交，这等价于解一次或二次方程，故每步最多将域扩张二次。反之，每个二次扩张对应一次开平方操作，可用尺规实现。

<!-- impossible_constructions -->
> [!Theorem]
> **三大不可能作图问题**：以下三个经典问题用尺规不可解：
> 1. **三等分任意角**：$20°$ 不可作图（$\cos 20°$ 满足 $8x^3-6x-1=0$，不可约，次数为 $3$，非 $2$ 的幂次）；
> 2. **倍立方**：$\sqrt[3]{2}$ 不可作图（$[\mathbb{Q}(\sqrt[3]{2}):\mathbb{Q}]=3$，非 $2$ 的幂次）；
> 3. **化圆为方**：$\sqrt{\pi}$ 不可作图，因为 $\pi$ 是超越数（Lindemann 定理），不满足代数作图条件。
>
> **证明思路**：三等分角和倍立方：验证对应代数元的极小多项式次数不是 $2$ 的幂次，故不可作图。化圆为方：Lindemann（1882）证明 $\pi$ 是超越数，故 $\sqrt{\pi}$ 不是代数数，更无法作图。

<!-- regular_polygon_constructibility -->
> [!Theorem]
> **正 $n$ 边形可作图判据（Gauss-Wantzel 定理）**：正 $n$ 边形可用尺规作图当且仅当
> $$
> n = 2^k p_1 p_2 \cdots p_r,
> $$
> 其中 $k \geq 0$，$p_1, \ldots, p_r$ 是两两不同的 **Fermat 素数**（即形如 $2^{2^m}+1$ 的素数，已知的有 $3, 5, 17, 257, 65537$）。
>
> **证明思路**：正 $n$ 边形可作图等价于 $\zeta_n = e^{2\pi i/n}$ 可作图；而 $[\mathbb{Q}(\zeta_n):\mathbb{Q}] = \varphi(n)$ 须为 $2$ 的幂次。分析 Euler 函数 $\varphi(n)$ 为 $2$ 的幂的条件，得到上述分解形式。

## 根式可解性

<!-- radical_extension_def -->
> [!Definition]
> **根式扩张 Radical Extension**：设 $F$ 为域。域扩张 $E/F$ 称为**根式扩张**，若存在域塔
> $$
> F = F_0 \subseteq F_1 \subseteq \cdots \subseteq F_k = E,
> $$
> 使得每个 $F_{i+1} = F_i(\alpha_i)$，且存在正整数 $n_i$ 使得 $\alpha_i^{n_i} \in F_i$（即 $\alpha_i$ 是 $F_i$ 中某元素的 $n_i$ 次方根）。

<!-- solvable_by_radicals_def -->
> [!Definition]
> **根式可解 Solvable by Radicals**：设 $F$ 为域，$f(x) \in F[x]$。若 $f$ 的所有根都落在 $F$ 的某个根式扩张中，则称 $f$ **根式可解**（或 $f$ 的根可以用根式表达）。

<!-- galois_solvability_criterion -->
> [!Theorem]
> **根式可解的 Galois 判据**：设 $F$ 为特征 $0$ 的域，$f(x) \in F[x]$。则 $f$ 根式可解当且仅当其 Galois 群
> $$
> \mathrm{Gal}(\mathrm{Spl}_F(f)/F)
> $$
> 是可解群。
>
> **证明思路**：
> - 若 $f$ 根式可解，设相应的根式扩张塔为 $F = F_0 \subseteq F_1 \subseteq \cdots \subseteq F_k$，适当添加单位根后可构造正规闭包，每步扩张的 Galois 群为循环群（可解），由可解群扩张定理得整体 Galois 群可解。
> - 反之，若 Galois 群 $G$ 可解，利用导群列逐步构造根式扩张：$G \geq G^{(1)} \geq \cdots \geq \{e\}$，每步对应一个循环商群，可由添加单位根及相应次根式实现，最终得到根式扩张包含 $f$ 的所有根。

## Abel-Ruffini 定理

<!-- abel_ruffini_theorem -->
> [!Theorem]
> **Abel-Ruffini 定理 Abel-Ruffini Theorem**：对 $n \geq 5$，一般 $n$ 次多项式（即系数为独立变元的 $n$ 次多项式）不能用根式求解，即不存在由系数通过有限次加减乘除和开方运算表达根的公式。
>
> **证明思路**：设 $F = \mathbb{Q}(e_1, \ldots, e_n)$（$e_i$ 为独立变元，即初等对称多项式），一般 $n$ 次多项式为
> $$
> f(x) = x^n - e_1 x^{n-1} + e_2 x^{n-2} - \cdots + (-1)^n e_n.
> $$
> 其 Galois 群为 $S_n$（由对称群对根的置换作用），当 $n \geq 5$ 时 $S_n$ 不可解（因为 $A_n$ 是单群），由根式可解判据得 $f$ 不能根式可解。

> **注**：$n \leq 4$ 时，$S_n$ 可解（$S_1, S_2, S_3, S_4$ 均可解），对应于一次、二次、三次（Cardano 公式）、四次（Ferrari 公式）方程的根式解法。

<!-- galois_theory_application_example_degree5 -->
> [!Example]+
> **不可根式求解的具体五次多项式**：$f(x) = x^5 - 4x + 2 \in \mathbb{Q}[x]$ 不可根式求解。可验证 $f$ 在 $\mathbb{Q}$ 上不可约，且恰有三个实根和两个复根，故 $\mathrm{Gal}(\mathrm{Spl}_\mathbb{Q}(f)/\mathbb{Q}) \cong S_5$（不可解），从而 $f$ 的根不能用根式表达。

<!-- galois_theory_application_example_cubic -->
> [!Example]+
> **三次方程的 Galois 群与根式解**：$f(x) = x^3 - 3x - 1 \in \mathbb{Q}[x]$，其判别式 $\Delta = 81 > 0$ 为完全平方数，Galois 群为 $A_3 \cong \mathbb{Z}/3\mathbb{Z}$（可解），故可根式求解，对应三个实根均可用三次根式（Cardano 公式）和三次单位根表达。
