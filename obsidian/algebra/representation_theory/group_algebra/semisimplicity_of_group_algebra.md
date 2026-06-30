# 群代数的半单性 Semisimplicity of Group Algebra

<!-- semisimple_ring_definition -->
> [!Definition]
> **半单环 Semisimple Ring**：一个环 $R$ 称为**左半单的**，若 $R$ 作为左 $R$-模是半单的，即 $R$ 是若干单左 $R$-模的直和。等价地，$R$ 是半单的当且仅当每个左 $R$-模都是完全可约的（即每个左 $R$-子模都是直和项）。

<!-- semisimplicity_criterion -->
> [!Theorem]
> **群代数的半单性判准 Semisimplicity of Group Algebra**：设 $G$ 是有限群，$F$ 是域。群代数 $FG$ 是半单代数当且仅当 $\mathrm{char}(F) \nmid |G|$（即域的特征不整除群的阶，包括 $\mathrm{char}(F) = 0$ 的情形）。

> **证明思路**：
>
> **（$\Rightarrow$，充分性）**：由马施克定理，当 $\mathrm{char}(F) \nmid |G|$ 时，$G$ 的每个有限维 $F$-表示都完全可约，即每个有限维左 $FG$-模都是半单的。特别地，$FG$ 本身作为左 $FG$-模是半单的，故 $FG$ 是半单代数。
>
> **（$\Leftarrow$，必要性）**：当 $p = \mathrm{char}(F) > 0$ 且 $p \mid |G|$ 时，增广理想 $I = \ker\varepsilon \trianglelefteq FG$ 是 $FG$ 的左理想（即 $FG$-子模），而增广映射 $\varepsilon: FG \to F$ 对应的一维商模 $FG/I \cong F$（平凡表示）。考虑元素 $\hat{G} = \sum_{g \in G} e_g \in I$，可验证 $e_g \cdot \hat{G} = \hat{G}$ 对所有 $g \in G$，故 $FG \cdot \hat{G} = F \cdot \hat{G}$ 是平凡子模，但 $I$ 中任何补子模的存在性可推出 $|G| \cdot 1_F \neq 0$，与 $p \mid |G|$ 矛盾，故 $FG$ 不是半单的。

<!-- semisimple_consequences -->
> [!Corollary]
> **半单群代数的推论 Consequences of Semisimplicity**：设 $G$ 是有限群，$F$ 是域且 $\mathrm{char}(F) \nmid |G|$。则：
> 1. $G$ 的每个有限维 $F$-表示都可分解为不可约表示的直和；
> 2. 不可约表示的同构类只有有限多个；
> 3. 每个 $FG$-模（$G$ 的表示）都是投射模也是内射模；
> 4. $FG$ 的每个左理想都是 $FG$ 的直和项（即 $FG$ 无模基数大于 $1$ 的幂零根）。

> **注**：若 $p = \mathrm{char}(F) > 0$ 且 $p \mid |G|$，称对应的表示论为**模表示论**（modular representation theory，Brauer 理论），其中表示的结构更为复杂，不能保证完全可约。
