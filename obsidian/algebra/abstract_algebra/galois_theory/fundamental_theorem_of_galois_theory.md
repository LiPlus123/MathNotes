# Galois 理论基本定理

## Galois 对应

<!-- galois_correspondence_setup -->
> [!Definition]
> **Galois 对应 Galois Correspondence**：设 $E/F$ 为 Galois 扩张，$G = \mathrm{Gal}(E/F)$。定义以下两个映射：
> - **固定域映射**：$\Phi: \{ H \mid H \leq G \} \to \{ K \mid F \subseteq K \subseteq E \}$，$\Phi(H) = E^H$；
> - **自同构群映射**：$\Psi: \{ K \mid F \subseteq K \subseteq E \} \to \{ H \mid H \leq G \}$，$\Psi(K) = \mathrm{Gal}(E/K)$。
>
> 这两个映射称为 $G$ 的子群格与 $E/F$ 的中间域格之间的 **Galois 对应**。

## 基本定理

<!-- fundamental_theorem_galois_theory -->
> [!Theorem]
> **Galois 理论基本定理 Fundamental Theorem of Galois Theory**：设 $E/F$ 为有限 Galois 扩张，$G = \mathrm{Gal}(E/F)$，则：
>
> 1. **双射性**：映射 $\Phi$ 与 $\Psi$ 互为逆映射，即 $\Phi \circ \Psi = \mathrm{id}$ 且 $\Psi \circ \Phi = \mathrm{id}$，从而建立 $G$ 的子群与 $E/F$ 中间域之间的一一对应（反序双射）：
>    $$
>    \{ H \leq G \} \longleftrightarrow \{ K \mid F \subseteq K \subseteq E \}.
>    $$
>
> 2. **反序性**：若 $H_1 \leq H_2 \leq G$，则 $E^{H_2} \subseteq E^{H_1}$；若 $F \subseteq K_1 \subseteq K_2 \subseteq E$，则 $\mathrm{Gal}(E/K_2) \leq \mathrm{Gal}(E/K_1)$。
>
> 3. **次数公式**：对应子群 $H = \mathrm{Gal}(E/K)$ 与中间域 $K = E^H$ 之间有
>    $$
>    [E : K] = |H|, \qquad [K : F] = [G : H].
>    $$
>
> 4. **正规性与 Galois 性**：$H \trianglelefteq G$ 当且仅当 $K = E^H$ 是 $F$ 的 Galois 扩张（即 $K/F$ 正规），此时
>    $$
>    \mathrm{Gal}(K/F) \cong G/H.
>    $$
>
> **证明思路**：
> - 双射性的关键步骤：对 $H \leq G$，由 Artin 定理有 $\mathrm{Gal}(E/E^H) = H$，故 $\Psi \circ \Phi = \mathrm{id}$；对中间域 $K$，由于 $E/K$ 为有限 Galois 扩张且 $E^{\mathrm{Gal}(E/K)} = K$（由固定域的基本性质），故 $\Phi \circ \Psi = \mathrm{id}$。
> - 次数公式由 Artin 定理（$[E:E^H]=|H|$）与 $[E:F]=[E:K][K:F]=|G|$ 得出。
> - 正规性：$\sigma(K) = K$ 对所有 $\sigma \in G$ 等价于 $K/F$ 正规；$\sigma H \sigma^{-1} = H$ 等价于 $H \trianglelefteq G$；限制映射 $G \to \mathrm{Gal}(K/F)$（$\sigma \mapsto \sigma|_K$）是满同态，核为 $H$，故 $\mathrm{Gal}(K/F) \cong G/H$。

## 子群格与中间域格的对应图

> **注**：Galois 对应将子群格（从小到大）反转为中间域格（从大到小）：$G$ 对应基域 $F$，平凡子群 $\{e\}$ 对应全域 $E$，中间子群对应中间域，正规子群对应正规（Galois）中间扩张。

## 例子

<!-- galois_correspondence_example_biquadratic -->
> [!Example]+
> **双二次扩张的 Galois 对应**：设 $E = \mathbb{Q}(\sqrt{2}, \sqrt{3})$，$F = \mathbb{Q}$，则 $G = \mathrm{Gal}(E/F) \cong \mathbb{Z}/2\mathbb{Z} \times \mathbb{Z}/2\mathbb{Z} = \{ e, \sigma, \tau, \sigma\tau \}$，其中
> $$
> \sigma(\sqrt{2}) = -\sqrt{2},\quad \sigma(\sqrt{3}) = \sqrt{3}; \qquad \tau(\sqrt{2}) = \sqrt{2},\quad \tau(\sqrt{3}) = -\sqrt{3}.
> $$
> $G$ 共有三个阶为 $2$ 的子群：$\langle \sigma \rangle,\ \langle \tau \rangle,\ \langle \sigma\tau \rangle$，对应三个中间域：
> $$
> E^{\langle \sigma \rangle} = \mathbb{Q}(\sqrt{3}),\quad E^{\langle \tau \rangle} = \mathbb{Q}(\sqrt{2}),\quad E^{\langle \sigma\tau \rangle} = \mathbb{Q}(\sqrt{6}).
> $$
> 所有子群均为正规子群（$G$ 是交换群），对应的三个中间域均是 $\mathbb{Q}$ 的 Galois 扩张（次数均为 $2$）。

<!-- galois_correspondence_example_s3 -->
> [!Example]+
> **$S_3$ 型 Galois 群的对应**：设 $E = \mathbb{Q}(\sqrt[3]{2}, \omega)$，$F = \mathbb{Q}$，$G = \mathrm{Gal}(E/F) \cong S_3$，$|G| = 6$。$S_3$ 的子群为：
> - $\{e\}$，对应 $E$；
> - 三个阶为 $2$ 的子群，对应三个次数为 $3$ 的中间域 $\mathbb{Q}(\sqrt[3]{2}),\ \mathbb{Q}(\omega\sqrt[3]{2}),\ \mathbb{Q}(\omega^2\sqrt[3]{2})$（均不是 $\mathbb{Q}$ 的 Galois 扩张，因为对应子群非正规）；
> - 唯一阶为 $3$ 的正规子群 $A_3 = \langle (123) \rangle$，对应固定域 $\mathbb{Q}(\omega)$（是 $\mathbb{Q}$ 的 Galois 扩张，$\mathrm{Gal}(\mathbb{Q}(\omega)/\mathbb{Q}) \cong S_3/A_3 \cong \mathbb{Z}/2\mathbb{Z}$）；
> - $G$ 本身，对应 $\mathbb{Q}$。

<!-- galois_correspondence_example_cyclotomic_p -->
> [!Example]+
> **分圆域的 Galois 对应**：$\mathrm{Gal}(\mathbb{Q}(\zeta_p)/\mathbb{Q}) \cong (\mathbb{Z}/p\mathbb{Z})^\times$ 是 $p-1$ 阶循环群（$p$ 为奇素数）。由基本定理，$\mathbb{Q}(\zeta_p)/\mathbb{Q}$ 的中间域与 $(\mathbb{Z}/p\mathbb{Z})^\times$ 的子群一一对应。由于 $(\mathbb{Z}/p\mathbb{Z})^\times$ 是循环群，其子群数等于 $p-1$ 的因子数；又由于循环群的子群均正规，每个中间域均是 $\mathbb{Q}$ 的 Galois 扩张。
