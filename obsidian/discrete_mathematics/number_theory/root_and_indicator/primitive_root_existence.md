## 原根的存在性

<!-- primitive_root_definition -->
> [!Definition]
> **原根 Primitive Root**：设 $m \in \mathbb{Z}^+$，$g \in \mathbb{Z}$，$\gcd(g, m) = 1$。若 $\mathrm{ord}_m(g) = \varphi(m)$，则称 $g$ 是模 $m$ 的**原根**。

<!-- primitive_root_generates -->
> [!Theorem]
> **原根生成简化剩余系 Primitive Root Generates Reduced Residue System**：设 $g$ 是模 $m$ 的原根，则 $g^0, g^1, g^2, \ldots, g^{\varphi(m)-1}$ 构成模 $m$ 的一个完全不同余的简化剩余系。
>
> **证明思路**：由阶的判定定理，$g^i \equiv g^j \pmod{m}$ 当且仅当 $\varphi(m) \mid (i-j)$。当 $0 \leq i < j \leq \varphi(m)-1$ 时，$0 < j-i < \varphi(m)$，故不能被 $\varphi(m)$ 整除，即 $g^i \not\equiv g^j$。从而 $\varphi(m)$ 个幂次两两不同余，又它们都与 $m$ 互素，故构成简化剩余系。

<!-- primitive_root_count -->
> [!Theorem]
> **原根的个数 Number of Primitive Roots**：若模 $m$ 存在原根，则模 $m$ 的原根恰好有 $\varphi(\varphi(m))$ 个。
>
> **证明思路**：设 $g$ 是一个原根，则所有简化余数均可写成 $g^k$（$0 \leq k < \varphi(m)$）。$g^k$ 是原根当且仅当 $\mathrm{ord}_m(g^k) = \varphi(m)$，即 $\dfrac{\varphi(m)}{\gcd(\varphi(m), k)} = \varphi(m)$，即 $\gcd(\varphi(m), k) = 1$。满足此条件的 $k$ 恰好有 $\varphi(\varphi(m))$ 个。

<!-- primitive_root_mod_prime -->
> [!Theorem]
> **模素数的原根存在性 Existence of Primitive Root modulo a Prime**：设 $p$ 是素数，则模 $p$ 存在原根。
>
> **证明思路**：$(\mathbb{Z}/p\mathbb{Z})^\times$ 是阶为 $p-1$ 的有限群。对 $p-1$ 的每个因子 $d$，多项式 $x^d - 1$ 在 $\mathbb{Z}/p\mathbb{Z}$ 中至多有 $d$ 个根（拉格朗日定理）。利用这一事实，可以证明阶恰好等于 $d$ 的元素恰好有 $\varphi(d)$ 个。对 $d = p-1$ 即得阶为 $p-1$ 的元素（即原根）存在，且有 $\varphi(p-1)$ 个。

<!-- primitive_root_mod_prime_power -->
> [!Theorem]
> **模奇素数幂的原根存在性 Existence of Primitive Root modulo Odd Prime Power**：设 $p$ 是奇素数，$k \geq 1$，则模 $p^k$ 存在原根。
>
> **证明思路**：先取模 $p$ 的原根 $g$。若 $\mathrm{ord}_{p^2}(g) = p(p-1) = \varphi(p^2)$，则 $g$ 即为模 $p^2$ 的原根；否则取 $g' = g + p$ 可验证 $g'$ 是模 $p^2$ 的原根。然后由归纳，若 $g$ 是模 $p^k$ 的原根，则 $g$ 或 $g + p^k$ 是模 $p^{k+1}$ 的原根，从而对一切 $k \geq 1$ 均成立。

<!-- primitive_root_mod_2prime_power -->
> [!Theorem]
> **模 $2p^k$ 的原根存在性 Existence of Primitive Root modulo $2p^k$**：设 $p$ 是奇素数，$k \geq 1$，则模 $2p^k$ 存在原根。
>
> **证明思路**：设 $g$ 是模 $p^k$ 的原根。若 $g$ 是奇数，则 $g$ 也是模 $2p^k$ 的原根；若 $g$ 是偶数，则 $g + p^k$ 是奇数，且仍是模 $p^k$ 的原根，从而也是模 $2p^k$ 的原根。这里用到 $\varphi(2p^k) = \varphi(p^k)$。

<!-- primitive_root_nonexistence -->
> [!Theorem]
> **原根不存在的情形 Cases Without Primitive Roots**：原根存在当且仅当 $m \in \{1, 2, 4, p^k, 2p^k\}$（$p$ 为奇素数，$k \geq 1$）。特别地，模 $2^k$（$k \geq 3$）不存在原根。
>
> **证明思路**：对模 $2^k$（$k \geq 3$），可以证明对任意奇数 $a$，均有 $a^{2^{k-2}} \equiv 1 \pmod{2^k}$，而 $\varphi(2^k) = 2^{k-1} > 2^{k-2}$，故不存在阶等于 $\varphi(2^k)$ 的元素。对一般合数 $m$（不在上述列表中），利用中国剩余定理拆分后说明各分量阶的最小公倍数严格小于 $\varphi(m)$。

> **注**：原根的存在性与群 $(\mathbb{Z}/m\mathbb{Z})^\times$ 是否为循环群等价。模 $p$ 存在原根即 $(\mathbb{Z}/p\mathbb{Z})^\times \cong \mathbb{Z}/(p-1)\mathbb{Z}$。
