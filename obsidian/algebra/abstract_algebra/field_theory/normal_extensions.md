# 正规扩张

## 正规扩张的定义

<!-- normal_extension_def -->
> [!Definition]
> **正规扩张 Normal Extension**：设 $E/F$ 为代数扩张。若任意在 $F[x]$ 中不可约且在 $E$ 中有一个根的多项式，均在 $E[x]$ 中完全分裂，则称 $E/F$ 为**正规扩张**。

## 等价刻画

<!-- normal_extension_splitting_equiv -->
> [!Theorem]
> **分裂域刻画**：有限扩张 $E/F$ 正规当且仅当存在 $f(x)\in F[x]$，使得 $E$ 是 $f$ 在 $F$ 上的分裂域。
>
> **证明思路**：
> - 若 $E$ 为某多项式分裂域，则其中任一来自 $F$ 的不可约因子都随一个根进入而全部进入，故正规；
> - 若 $E/F$ 有限且正规，可取一组生成元的极小多项式之积，其分裂域即为 $E$。

<!-- normal_embedding_characterization -->
> [!Theorem]
> **嵌入刻画（有限情形）**：设 $E/F$ 为有限扩张，则
> $$
> E/F\text{ 正规 }\Longleftrightarrow \text{任一 }F\text{-嵌入 }\sigma:E\hookrightarrow \overline{F}\text{ 满足 }\sigma(E)=E.
> $$
>
> **证明思路**：正规性保证共轭根都落在 $E$，故像不离开 $E$；反向由嵌入像稳定性推出不可约多项式的全部根都在 $E$。

## 与可分性的关系

<!-- normal_plus_separable_galois -->
> [!Theorem]
> **正规且可分即 Galois 扩张**：有限扩张 $E/F$ 称为 Galois 扩张当且仅当它同时正规且可分。
>
> **证明思路**：这是 Galois 扩张的标准等价定义，后续在 Galois 理论章节展开。

## 例子

<!-- normal_extension_example_quadratic -->
> [!Example]+
> **二次扩张是正规扩张**：$\mathbb{Q}(\sqrt{2})/\mathbb{Q}$ 正规，因为它是 $x^2-2$ 的分裂域。

<!-- non_normal_example_cuberoot2 -->
> [!Example]+
> **非正规扩张例子**：$\mathbb{Q}(\sqrt[3]{2})/\mathbb{Q}$ 不是正规扩张，因为 $x^3-2$ 在该扩张中只有一个实根，未完全分裂。

<!-- normal_extension_example_finite_field -->
> [!Example]+
> **有限域扩张正规**：对素数幂 $q=p^m$ 与正整数 $n$，扩张 $\mathbb{F}_{q^n}/\mathbb{F}_q$ 是正规扩张，因为它是
> $$
> x^{q^n}-x
> $$
> 的分裂域。
