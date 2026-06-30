# Wedderburn 分解 Wedderburn Decomposition

<!-- artin_wedderburn_theorem -->
> [!Theorem]
> **Artin-Wedderburn 定理 Artin-Wedderburn Theorem**：设 $A$ 是有限维半单 $F$-代数。则 $A$ 同构于有限个矩阵代数的直积：
> $$A \cong M_{n_1}(D_1) \times M_{n_2}(D_2) \times \cdots \times M_{n_k}(D_k),$$
> 其中每个 $D_i$ 是有限维除环（$F$ 上的可除代数），$n_i \geq 1$ 是正整数。此分解在同构意义下唯一（直积因子的排列顺序除外）。

> **证明思路**：半单代数的每个单侧理想均为直和项，利用单模的结构（每个单左 $A$-模 $M_i$ 对应一个矩阵代数因子 $M_{n_i}(D_i)$，其中 $D_i = \mathrm{End}_A(M_i)^{\mathrm{op}}$），通过 $A \cong \mathrm{End}_A(A) \cong \prod_i M_{n_i}(D_i)$ 得到。

<!-- fg_wedderburn_decomposition -->
> [!Theorem]
> **群代数的 Wedderburn 分解 Wedderburn Decomposition of Group Algebra**：设 $G$ 是有限群，$F$ 是**代数闭域**（如 $F = \mathbb{C}$）且 $\mathrm{char}(F) \nmid |G|$。设 $V_1, V_2, \ldots, V_k$ 是 $G$ 的全部不可约 $F$-表示（不计同构），$n_i = \dim_F V_i$。则
> $$FG \cong \bigoplus_{i=1}^{k} M_{n_i}(F),$$
> 作为 $F$-代数同构。等价地，上述直积分解中每个因子恰好是一个矩阵代数 $M_{n_i}(F)$（除环退化为 $F$ 本身，因 $F$ 是代数闭域）。

> **证明思路**：由马施克定理，$FG$ 是半单代数。由 Artin-Wedderburn 定理，$FG \cong \prod_i M_{n_i}(D_i)$，其中不可约模的个数等于直积因子个数 $k$。因 $F$ 是代数闭域，Schur 引理给出 $D_i = \mathrm{End}_{FG}(V_i)^{\mathrm{op}} \cong F$，从而每个 $D_i \cong F$，得 $FG \cong \bigoplus_{i=1}^k M_{n_i}(F)$。

<!-- wedderburn_consequences -->
> [!Corollary]
> **Wedderburn 分解的推论 Consequences of Wedderburn Decomposition**：在上述假设（$F$ 代数闭，$\mathrm{char}(F) \nmid |G|$）下：
> 1. **不可约表示个数等于共轭类个数**：
>    $$k = \dim_F Z(FG) = \text{$G$ 的共轭类个数},$$
>    因为 $Z(FG) \cong Z\!\left(\bigoplus_i M_{n_i}(F)\right) \cong \bigoplus_i F \cong F^k$，故 $k = \dim_F Z(FG)$。
> 2. **维数公式**：
>    $$\sum_{i=1}^k n_i^2 = |G|,$$
>    由比较两边的 $F$-维数得出。
> 3. **中心同构**：
>    $$Z(FG) \cong F^k,$$
>    其中 $k$ 是共轭类个数，也是不可约表示的个数。

<!-- wedderburn_idempotents -->
> [!Proposition]
> **本原中心幂等元 Primitive Central Idempotents**：$FG$ 的 Wedderburn 分解对应于一组**本原中心幂等元** $\{e_1, e_2, \ldots, e_k\} \subset Z(FG)$，满足：
> $$e_i e_j = \delta_{ij} e_i, \quad \sum_{i=1}^k e_i = 1_{FG}, \quad e_i \cdot FG \cong M_{n_i}(F) \text{（作为代数）}.$$
> 第 $i$ 个幂等元由不可约特征标表示为：
> $$e_i = \frac{n_i}{|G|} \sum_{g \in G} \chi_i(g^{-1}) \, e_g = \frac{n_i}{|G|} \sum_{g \in G} \overline{\chi_i(g)} \, e_g \quad (F = \mathbb{C}).$$

> **证明思路**：利用不可约特征标的正交关系，验证上式定义的 $e_i$ 满足幂等性 $e_i^2 = e_i$ 和正交性 $e_i e_j = 0$（$i \neq j$），以及 $\sum_i e_i = 1$。

> **注**：Wedderburn 分解是有限群表示论的结构性核心，它将群代数分解为矩阵代数的直和，从而将抽象的群表示问题转化为具体的线性代数问题。当 $F$ 不是代数闭域时（如 $F = \mathbb{R}$），分解中可能出现非平凡的除环因子（如四元数代数），此时理论更为丰富。
