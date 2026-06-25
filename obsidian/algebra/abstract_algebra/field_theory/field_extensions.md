# 域扩张

## 域扩张的定义

<!-- field_extension_def -->
> [!Definition]
> **域扩张 Field Extension**：设 $F, E$ 为域。若 $F \leq E$，则称 $E$ 是 $F$ 的一个**扩张域**，记作
> $$
> E/F.
> $$

<!-- field_extension_degree_def -->
> [!Definition]
> **扩张次数 Degree of Extension**：把 $E$ 看作 $F$ 上向量空间，其维数称为扩张 $E/F$ 的**扩张次数**，记作
> $$
> [E:F] = \dim_F E.
> $$
> 若 $[E:F] < \infty$，称 $E/F$ 为**有限扩张**；否则称为**无限扩张**。

## 代数扩张与超越扩张

<!-- algebraic_extension_def -->
> [!Definition]
> **代数扩张 Algebraic Extension**：若扩张 $E/F$ 中每个元素都代数于 $F$，则称 $E/F$ 为**代数扩张**。

<!-- transcendental_extension_def -->
> [!Definition]
> **超越扩张 Transcendental Extension**：若扩张 $E/F$ 中存在元素不代数于 $F$，则称 $E/F$ 为**超越扩张**。

<!-- tower_law_theorem -->
> [!Theorem]
> **塔式公式 Tower Law**：若 $F \leq E \leq K$ 且 $[E:F], [K:E]$ 有限，则
> $$
> [K:F] = [K:E][E:F].
> $$
>
> **证明思路**：取 $E/F$ 的一组基和 $K/E$ 的一组基，两组基的乘积族生成 $K$ 且线性无关，从而得到维数乘法公式。

<!-- finite_extension_is_algebraic -->
> [!Theorem]
> **有限扩张必代数**：若 $[E:F] < \infty$，则 $E/F$ 为代数扩张。
>
> **证明思路**：任取 $\alpha \in E$，考虑 $1,\alpha,\ldots,\alpha^{n}$（$n=[E:F]$）在有限维向量空间中线性相关，从而得到 $\alpha$ 满足某个非零多项式。

## 例子

<!-- field_extension_example_quadratic -->
> [!Example]+
> **二次扩张**：
> $$
> \mathbb{Q}(\sqrt{2})/\mathbb{Q}
> $$
> 是有限代数扩张，且 $[\mathbb{Q}(\sqrt{2}):\mathbb{Q}] = 2$。

<!-- field_extension_example_C_over_R -->
> [!Example]+
> **复数扩张实数**：
> $$
> \mathbb{C}/\mathbb{R}
> $$
> 是有限扩张，扩张次数为 $2$，基可取 $\{1, i\}$。

<!-- field_extension_example_rational_function -->
> [!Example]+
> **有理函数扩张**：
> $$
> F(x)/F
> $$
> 是超越扩张。元素 $x$ 不满足任何 $F[t]$ 中的非零多项式方程。
