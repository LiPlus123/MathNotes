## 既约剩余系的结构

<!-- reduced_residue_group_structure -->
> [!Theorem]
> **既约剩余系的群结构 Group Structure of Reduced Residue System**：$(\mathbb{Z}/m\mathbb{Z})^\times$ 在模 $m$ 乘法下构成有限交换群，其阶为 $\varphi(m)$。

<!-- cyclic_iff_primitive_root -->
> [!Theorem]
> **循环群的判定 Criterion for Cyclic Group**：$(\mathbb{Z}/m\mathbb{Z})^\times$ 是循环群当且仅当模 $m$ 存在原根，即 $m \in \{1, 2, 4, p^k, 2p^k\}$（$p$ 为奇素数，$k \geq 1$）。
>
> **证明思路**：原根 $g$ 的存在性等价于群中存在阶为 $\varphi(m)$ 的元素，而有限群是循环群当且仅当存在阶等于群的阶的生成元，两者等价。

<!-- structure_mod_prime -->
> [!Theorem]
> **模素数的既约剩余系结构 Structure modulo a Prime**：设 $p$ 是素数，则：
> $$(\mathbb{Z}/p\mathbb{Z})^\times \cong \mathbb{Z}/(p-1)\mathbb{Z}$$
> 即 $(\mathbb{Z}/p\mathbb{Z})^\times$ 是 $p-1$ 阶循环群。
>
> **证明思路**：由模素数原根的存在性，取原根 $g$，映射 $k \mapsto g^k \pmod{p}$（$k \in \mathbb{Z}/(p-1)\mathbb{Z}$）给出群同构。

<!-- structure_mod_prime_power -->
> [!Theorem]
> **模奇素数幂的既约剩余系结构 Structure modulo Odd Prime Power**：设 $p$ 是奇素数，$k \geq 1$，则：
> $$(\mathbb{Z}/p^k\mathbb{Z})^\times \cong \mathbb{Z}/\varphi(p^k)\mathbb{Z} = \mathbb{Z}/p^{k-1}(p-1)\mathbb{Z}$$
> 即 $(\mathbb{Z}/p^k\mathbb{Z})^\times$ 是循环群。
>
> **证明思路**：由模 $p^k$ 原根的存在性，取原根 $g$ 作为生成元，类比模素数情形得同构。

<!-- structure_mod_2_power -->
> [!Theorem]
> **模 $2^k$ 的既约剩余系结构 Structure modulo a Power of 2**：
> - $(\mathbb{Z}/2\mathbb{Z})^\times = \{1\}$ 是平凡群；
> - $(\mathbb{Z}/4\mathbb{Z})^\times \cong \mathbb{Z}/2\mathbb{Z}$，由 $-1$ 生成；
> - 当 $k \geq 3$ 时，$(\mathbb{Z}/2^k\mathbb{Z})^\times \cong \mathbb{Z}/2\mathbb{Z} \times \mathbb{Z}/2^{k-2}\mathbb{Z}$，由 $-1$ 和 $5$（或 $3$）生成，是非循环群。
>
> **证明思路**：对 $k \geq 3$，可验证 $(-1)^2 \equiv 1$，$5^{2^{k-2}} \equiv 1 \pmod{2^k}$ 而 $5^{2^{k-3}} \not\equiv 1$，故 $\mathrm{ord}_{2^k}(5) = 2^{k-2}$。再验证 $-1 \not\equiv 5^j$ 对任意 $j$，从而 $\{(-1)^a 5^b : a \in \{0,1\},\, 0 \leq b < 2^{k-2}\}$ 给出 $\varphi(2^k) = 2^{k-1}$ 个不同余元素，完成分解。

<!-- structure_general -->
> [!Theorem]
> **一般模数的既约剩余系结构 Structure for General Modulus**：设 $m = 2^{e_0} p_1^{e_1} p_2^{e_2} \cdots p_r^{e_r}$（$p_i$ 为不同奇素数），则由中国剩余定理：
> $$(\mathbb{Z}/m\mathbb{Z})^\times \cong (\mathbb{Z}/2^{e_0}\mathbb{Z})^\times \times \prod_{i=1}^{r} (\mathbb{Z}/p_i^{e_i}\mathbb{Z})^\times$$
> 各因子均已由上述定理刻画，从而完全确定了 $(\mathbb{Z}/m\mathbb{Z})^\times$ 的结构。
>
> **证明思路**：中国剩余定理给出环同构 $\mathbb{Z}/m\mathbb{Z} \cong \prod_i \mathbb{Z}/p_i^{e_i}\mathbb{Z}$，取单位群即得乘法群的直积分解。

> **注**：由上述结构定理，$(\mathbb{Z}/m\mathbb{Z})^\times$ 是循环群当且仅当 $m \in \{1,2,4,p^k,2p^k\}$。对于 $m = 2^k$（$k \geq 3$），最大循环子群的阶为 $2^{k-2}$，而不是 $\varphi(2^k) = 2^{k-1}$。
