# Galois 扩张

## 定义

<!-- galois_extension_def -->
> [!Definition]
> **Galois 扩张 Galois Extension**：设 $E/F$ 为有限扩张。若 $E/F$ 同时是正规扩张和可分扩张，则称 $E/F$ 为 **Galois 扩张**，记作 $E/F$ 是 Galois 的。

> **注**：由正规扩张和可分扩张的定义，Galois 扩张必须是有限扩张，且是某个在 $F$ 上没有重根的多项式的分裂域。

## 等价刻画

<!-- galois_extension_automorphism_equiv -->
> [!Theorem]
> **自同构群阶刻画**：有限扩张 $E/F$ 是 Galois 扩张当且仅当
> $$
> |\mathrm{Aut}(E/F)| = [E : F],
> $$
> 其中 $\mathrm{Aut}(E/F)$ 表示 $E$ 的所有 $F$-自同构（保持 $F$ 中每个元素不动的域自同构）之集合。
>
> **证明思路**：一般情形下有 $|\mathrm{Aut}(E/F)| \leq [E:F]$。在可分条件下可利用本原元定理，当 $E=F(\alpha)$ 时，$|\mathrm{Aut}(E/F)|$ 等于 $m_{\alpha,F}(x)$ 在 $E$ 中的根数，正规性保证全部根落在 $E$ 中，可分性保证根无重复，从而等号成立。

<!-- galois_extension_fixed_field_equiv -->
> [!Theorem]
> **固定域刻画**：有限扩张 $E/F$ 是 Galois 扩张当且仅当
> $$
> E^{\mathrm{Aut}(E/F)} = F,
> $$
> 其中 $E^{\mathrm{Aut}(E/F)} = \{ a \in E \mid \sigma(a) = a,\ \forall \sigma \in \mathrm{Aut}(E/F) \}$ 为 $E$ 在 $\mathrm{Aut}(E/F)$ 作用下的固定域。
>
> **证明思路**：Artin 定理表明，若 $G \leq \mathrm{Aut}(E)$ 为有限群，则 $[E : E^G] = |G|$；结合正规可分的等价条件，可推出固定域恰为 $F$。

<!-- galois_extension_separable_splitting_equiv -->
> [!Theorem]
> **可分分裂域刻画**：有限扩张 $E/F$ 是 Galois 扩张当且仅当存在 $f(x) \in F[x]$，使得 $f$ 在 $F$ 上可分（无重根），且 $E = \mathrm{Spl}_F(f)$。
>
> **证明思路**：若 $E/F$ 正规可分，由正规扩张的分裂域刻画取分裂多项式，可分性保证无重根；反之，可分多项式的分裂域是正规扩张，且可分多项式的根均可分，故扩张可分。

## Artin 定理

<!-- artin_theorem -->
> [!Theorem]
> **Artin 定理 Artin's Theorem**：设 $E$ 为域，$G$ 为 $\mathrm{Aut}(E)$ 的有限子群，$F = E^G$ 为固定域。则
> $$
> [E : F] = |G|,
> $$
> 且 $E/F$ 是 Galois 扩张，其 $F$-自同构群恰为 $G$。
>
> **证明思路**：先证 $[E:F] \leq |G|$：设 $|G|=n$，对任意 $\alpha \in E$，令 $\alpha$ 的 $G$-轨道为 $\{ \sigma(\alpha) \mid \sigma \in G \}$，则 $\alpha$ 的极小多项式整除轨道元素组成的分裂多项式（其系数在 $E^G=F$ 中），故 $[F(\alpha):F] \leq n$；再由线性代数估算 $[E:F] \leq n$。反向 $[E:F] \geq |G|$ 由独立性论证得到。从而等号成立，且 $E/F$ 满足 Galois 扩张的自同构群阶刻画。

## 性质

<!-- galois_extension_tower_property -->
> [!Theorem]
> **塔式性质**：设 $E/F$ 为 Galois 扩张，$K$ 为 $E/F$ 的中间域，则：
> 1. $E/K$ 也是 Galois 扩张；
> 2. $K/F$ 不一定是 Galois 扩张（仅当 $\mathrm{Gal}(E/K) \trianglelefteq \mathrm{Gal}(E/F)$ 时成立）。
>
> **证明思路**：$E/K$ 继承了正规性（$E$ 是 $F$ 上可分多项式的分裂域，从 $K$ 上看也是分裂域）和可分性（每个元素在 $F$ 上可分推出在 $K$ 上也可分）。$K/F$ 的正规性需要额外条件。

<!-- galois_extension_compositum -->
> [!Theorem]
> **合成性质**：设 $E_1/F$ 与 $E_2/F$ 均为 Galois 扩张，则其合成 $E_1 E_2 / F$ 也是 Galois 扩张，且
> $$
> \mathrm{Gal}(E_1 E_2 / F) \hookrightarrow \mathrm{Gal}(E_1/F) \times \mathrm{Gal}(E_2/F).
> $$
>
> **证明思路**：$E_1 E_2$ 是 $E_1,E_2$ 的分裂多项式之积的分裂域，故仍为可分多项式的分裂域，从而 Galois。自同构的限制给出到直积的单同态。

## 例子

<!-- galois_extension_example_quadratic -->
> [!Example]+
> **二次扩张**：$\mathbb{Q}(\sqrt{2})/\mathbb{Q}$ 是 Galois 扩张。它是可分多项式 $x^2 - 2$ 的分裂域，$\mathrm{Aut}(\mathbb{Q}(\sqrt{2})/\mathbb{Q}) = \{ \mathrm{id},\ \sigma \}$，其中 $\sigma(\sqrt{2}) = -\sqrt{2}$，群阶为 $2 = [\mathbb{Q}(\sqrt{2}):\mathbb{Q}]$。

<!-- galois_extension_example_cyclotomic -->
> [!Example]+
> **分圆扩张**：设 $p$ 为奇素数，$\zeta_p = e^{2\pi i/p}$，则 $\mathbb{Q}(\zeta_p)/\mathbb{Q}$ 是 Galois 扩张。它是分圆多项式
> $$
> \Phi_p(x) = x^{p-1} + x^{p-2} + \cdots + x + 1
> $$
> 的分裂域，且 $\Phi_p$ 在 $\mathbb{Q}[x]$ 中不可约，可分，故该扩张是 Galois 扩张，次数为 $p-1$。

<!-- galois_extension_example_finite_field -->
> [!Example]+
> **有限域扩张**：设 $q = p^m$，$n \geq 1$，则 $\mathbb{F}_{q^n}/\mathbb{F}_q$ 是 Galois 扩张，次数为 $n$。它是可分多项式 $x^{q^n} - x$ 的分裂域。

<!-- non_galois_example_cuberoot -->
> [!Example]+
> **非 Galois 扩张**：$\mathbb{Q}(\sqrt[3]{2})/\mathbb{Q}$ 不是 Galois 扩张。虽然可分（特征 $0$），但不正规：$x^3-2$ 的另两个根 $\omega\sqrt[3]{2}, \omega^2\sqrt[3]{2} \notin \mathbb{Q}(\sqrt[3]{2})$。此时 $|\mathrm{Aut}(\mathbb{Q}(\sqrt[3]{2})/\mathbb{Q})| = 1 < 3 = [\mathbb{Q}(\sqrt[3]{2}):\mathbb{Q}]$。
