# 唯一分解环、主理想环与欧几里得环

## 基本概念

<!-- unit_def_ring -->
> [!Definition]
> **单位元（可逆元）Unit**：含幺环 $R$ 中，若元素 $a \in R$ 存在乘法逆元，则称 $a$ 为 $R$ 的**单位**（可逆元）。$R$ 的所有单位构成乘法群，记作 $R^\times$。

<!-- associate_def -->
> [!Definition]
> **相伴 Associate**：整环 $R$ 中，$a, b \in R$ 称为**相伴**（记作 $a \sim b$），若存在单位 $u \in R^\times$ 使得 $a = ub$。相伴是等价关系。

<!-- irreducible_element_def -->
> [!Definition]
> **不可约元 Irreducible Element**：整环 $R$ 中，非零非单位元 $p \in R$ 称为**不可约元**，若 $p = ab$（$a, b \in R$）蕴含 $a \in R^\times$ 或 $b \in R^\times$。

<!-- prime_element_def -->
> [!Definition]
> **素元 Prime Element**：整环 $R$ 中，非零非单位元 $p \in R$ 称为**素元**，若 $p \mid ab$ 蕴含 $p \mid a$ 或 $p \mid b$。

> **注**：整环中，素元一定是不可约元（若 $p$ 是素元且 $p = ab$，则 $p \mid ab$，故 $p \mid a$ 或 $p \mid b$，可推出 $b$ 或 $a$ 是单位）；反之不然。但在 UFD 中两者等价。

## 三类整环的定义

<!-- ufd_def -->
> [!Definition]
> **唯一分解环 Unique Factorization Domain (UFD)**：整环 $R$ 称为 **UFD**，若每个非零非单位元 $a \in R$ 都能写成有限个不可约元的乘积
> $$
> a = p_1 p_2 \cdots p_n
> $$
> 且这种分解在相伴意义下唯一（若 $a = p_1 \cdots p_n = q_1 \cdots q_m$，则 $n = m$，且适当重排后 $p_i \sim q_i$）。

<!-- pid_def -->
> [!Definition]
> **主理想整环 Principal Ideal Domain (PID)**：整环 $R$ 称为 **PID**，若 $R$ 的每个理想都是主理想（由单个元素生成）。

<!-- ed_def -->
> [!Definition]
> **欧几里得环 Euclidean Domain (ED)**：整环 $R$ 称为 **ED**，若存在映射 $\delta: R \setminus \{0\} \to \mathbb{Z}_{\geq 0}$（称为**欧几里得函数**），使得对所有 $a \in R$，$b \in R \setminus \{0\}$，存在 $q, r \in R$ 满足
> $$
> a = bq + r, \quad r = 0 \text{ 或 } \delta(r) < \delta(b)
> $$

## 包含关系

<!-- ed_pid_ufd_inclusion -->
> [!Theorem]
> **ED $\subsetneq$ PID $\subsetneq$ UFD**：
> 1. 欧几里得环是主理想整环；
> 2. 主理想整环是唯一分解环；
> 3. 两个包含均是真包含（存在 PID 非 ED，存在 UFD 非 PID 的反例）。
>
> **证明思路**：(1) 设 $R$ 是 ED，$I \trianglelefteq R$ 非零，取 $\delta$ 值最小的非零元 $d \in I$，对任意 $a \in I$ 作带余除法 $a = dq + r$，因 $r = a - dq \in I$，若 $r \neq 0$ 则 $\delta(r) < \delta(d)$ 矛盾，故 $r = 0$，即 $I = (d)$。
>
> (2) 设 $R$ 是 PID。先证 $R$ 满足升链条件（ACC for ideals）：理想上升链 $(a_1) \subseteq (a_2) \subseteq \cdots$ 的并是主理想 $(d)$，则链在某处终止。再证 PID 中不可约元等于素元：设 $p$ 不可约，$(p)$ 是极大理想（因 PID 中 $(p) \subsetneq (d)$ 意味 $p = ud$ 故 $d$ 是单位或 $p$ 相伴于 $d$），故 $R/(p)$ 是域从而整环，故 $(p)$ 是素理想，即 $p$ 是素元。最后由 ACC 和不可约元=素元证明分解存在与唯一。

## 性质

<!-- pid_gcd -->
> [!Theorem]
> **PID 中最大公因子**：在 PID $R$ 中，对任意 $a, b \in R$（不全为零），存在 $d \in R$ 使得 $(a, b) = (d)$（作为理想相等），此 $d$ 称为 $a, b$ 的**最大公因子** $\gcd(a, b)$，且存在 $s, t \in R$ 使得
> $$
> d = sa + tb
> $$
>
> **证明思路**：理想 $(a) + (b) = \{xa + yb \mid x, y \in R\}$ 在 PID 中是主理想 $(d)$，此 $d$ 整除 $a$ 和 $b$，且被所有公因子整除。

<!-- ufd_prime_irred_equiv -->
> [!Theorem]
> **UFD 中素元等价于不可约元**：在 UFD 中，$p$ 是素元当且仅当 $p$ 是不可约元。
>
> **证明思路**：素元 $\Rightarrow$ 不可约元已在注中说明。不可约元 $\Rightarrow$ 素元：设 $p \mid ab$，即 $ab = pc$，对 $a, b, c$ 作唯一分解，$p$ 必出现在 $a$ 或 $b$ 的分解中，故 $p \mid a$ 或 $p \mid b$。

## 高斯引理

<!-- primitive_polynomial_def -->
> [!Definition]
> **本原多项式 Primitive Polynomial**：设 $R$ 为 UFD，$f(x) = \sum_{i=0}^n a_i x^i \in R[x]$。若 $a_0, a_1, \ldots, a_n$ 的最大公因子为单位（即 $\gcd(a_0, \ldots, a_n) \sim 1$），则称 $f(x)$ 为**本原多项式**。

<!-- gauss_lemma -->
> [!Lemma]
> **高斯引理 Gauss's Lemma**：设 $R$ 为 UFD，则 $R[x]$ 中两个本原多项式的乘积仍为本原多项式。
>
> **证明思路**：设 $f, g \in R[x]$ 均为本原，若 $fg$ 非本原，则存在素元 $p \in R$ 整除 $fg$ 的所有系数。在 $\bar{R} = R/(p)$（$\bar{R}$ 是整环）中，$\bar{f}\,\bar{g} = \overline{fg} = 0$，但 $\bar{f} \neq 0$ 且 $\bar{g} \neq 0$（$f, g$ 本原），矛盾。

<!-- gauss_lemma_corollary -->
> [!Corollary]
> **本原多项式在 $\mathrm{Frac}(R)[x]$ 中不可约等价于在 $R[x]$ 中不可约**：设 $R$ 为 UFD，$F = \mathrm{Frac}(R)$，$f(x) \in R[x]$ 为本原多项式（次数 $\geq 1$）。则 $f(x)$ 在 $R[x]$ 中不可约当且仅当 $f(x)$ 在 $F[x]$ 中不可约。
>
> **证明思路**：若 $f = gh$（$g, h \in F[x]$，均非常数），通过调整有理数系数可将 $g, h$ 写为 $R[x]$ 中本原多项式的有理数倍，再由高斯引理得 $f \in R[x]$ 中的非平凡分解。

<!-- ufd_polynomial_ring_thm -->
> [!Theorem]
> **UFD 的多项式环仍是 UFD**：若 $R$ 是 UFD，则 $R[x]$ 也是 UFD。
>
> **证明思路**：$R[x]$ 中的非零非单位元可先提取公因子（来自 $R$ 的不可约元），余下本原部分在 $F[x]$（$F = \mathrm{Frac}(R)$）中分解，再由高斯引理将 $F[x]$ 中的分解拉回到 $R[x]$ 中，唯一性由 $F[x]$ 的 UFD 性质（$F[x]$ 是 ED）和高斯引理共同保证。

## 例子

<!-- ed_example_Z -->
> [!Example]+
> **整数环是 ED**：$\mathbb{Z}$ 是 ED，欧几里得函数为 $\delta(n) = |n|$，对应整数的带余除法。从而 $\mathbb{Z}$ 也是 PID 和 UFD，整数的唯一分解即为算术基本定理。

<!-- ed_example_field_poly -->
> [!Example]+
> **域上多项式环是 ED**：设 $F$ 为域，$F[x]$ 是 ED，欧几里得函数为 $\delta(f) = \deg f$，对应多项式的带余除法；从而 $F[x]$ 也是 PID 和 UFD。

<!-- pid_not_ed_example -->
> [!Example]+
> **PID 但非 ED 的例子**：$\mathbb{Z}\!\left[\dfrac{1+\sqrt{-19}}{2}\right]$ 是 PID 但不是 ED，这是满足条件的最小反例。

<!-- ufd_not_pid_example -->
> [!Example]+
> **UFD 但非 PID 的例子**：$\mathbb{Z}[x]$ 是 UFD（由高斯引理和 $\mathbb{Z}$ 是 UFD 推出）但不是 PID，因理想 $(2, x) = \{2f(x) + xg(x) \mid f, g \in \mathbb{Z}[x]\}$ 不是主理想。
