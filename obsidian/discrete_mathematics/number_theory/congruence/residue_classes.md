## 剩余类

<!-- residue_class_definition -->
> [!Definition]
> **剩余类 Residue Class**：设 $m \in \mathbb{Z}^+$，$a \in \mathbb{Z}$。所有与 $a$ 模 $m$ 同余的整数构成的集合：
> $$\bar{a} = \{a + km \mid k \in \mathbb{Z}\}$$
> 称为 $a$ 模 $m$ 的**剩余类**（或**同余类**），$a$ 称为该剩余类的**代表元**。

> **注**：模 $m$ 的剩余类恰好是同余关系 $\equiv \pmod{m}$ 的等价类。同一剩余类中任意一个元素均可作为代表元，即 $\bar{a} = \bar{b}$ 当且仅当 $a \equiv b \pmod{m}$。

<!-- complete_residue_system_definition -->
> [!Definition]
> **完全剩余系 Complete Residue System**：模 $m$ 的所有剩余类恰好有 $m$ 个，分别为 $\bar{0}, \bar{1}, \ldots, \overline{m-1}$，它们构成 $\mathbb{Z}$ 的一个划分。从每个剩余类中各取一个代表元，所得的 $m$ 个整数的集合称为模 $m$ 的一个**完全剩余系**。
>
> 集合 $\{0, 1, 2, \ldots, m-1\}$ 称为模 $m$ 的**最小非负完全剩余系**；集合 $\{-(m-1)/2, \ldots, -1, 0, 1, \ldots, (m-1)/2\}$（$m$ 奇数时）称为**绝对最小完全剩余系**。

<!-- crs_characterization -->
> [!Theorem]
> **完全剩余系的判定 Characterization of Complete Residue System**：$m$ 个整数 $r_1, r_2, \ldots, r_m$ 构成模 $m$ 的完全剩余系，当且仅当它们两两模 $m$ 不同余。
>
> **证明思路**：充分性：$m$ 个两两不同余的整数分属 $m$ 个不同的剩余类，恰好覆盖所有 $m$ 个类。必要性显然。

<!-- reduced_residue_system_definition -->
> [!Definition]
> **简化剩余系 Reduced Residue System**：模 $m$ 的完全剩余系中，与 $m$ 互素的代表元所构成的集合称为模 $m$ 的**简化剩余系**（或**缩系**、**既约剩余系**）。简化剩余系的元素个数记作 $\varphi(m)$（欧拉函数值）。

> **注**：$\{1 \leq r \leq m \mid \gcd(r, m) = 1\}$ 是模 $m$ 的一个简化剩余系的标准选取。

<!-- rrs_characterization -->
> [!Theorem]
> **简化剩余系的判定 Characterization of Reduced Residue System**：$\varphi(m)$ 个整数 $r_1, \ldots, r_{\varphi(m)}$ 构成模 $m$ 的简化剩余系，当且仅当它们两两模 $m$ 不同余，且每个 $r_i$ 均与 $m$ 互素。
>
> **证明思路**：与完全剩余系的判定类似，仅限于与 $m$ 互素的剩余类（共 $\varphi(m)$ 个）。

<!-- rrs_multiplication_closure -->
> [!Theorem]
> **简化剩余系在乘法下的封闭性 Closure of Reduced Residue System under Multiplication**：若 $\{r_1, r_2, \ldots, r_{\varphi(m)}\}$ 是模 $m$ 的简化剩余系，且 $\gcd(a, m) = 1$，则 $\{ar_1, ar_2, \ldots, ar_{\varphi(m)}\}$ 也是模 $m$ 的简化剩余系。
>
> **证明思路**：首先 $\gcd(ar_i, m) = 1$（因 $\gcd(a,m)=1$ 且 $\gcd(r_i,m)=1$）；其次若 $ar_i \equiv ar_j \pmod{m}$，由 $\gcd(a,m)=1$ 的消去律得 $r_i \equiv r_j \pmod{m}$，故 $i = j$。因此 $\{ar_i\}$ 为 $\varphi(m)$ 个两两不同余的与 $m$ 互素的整数，构成简化剩余系。
