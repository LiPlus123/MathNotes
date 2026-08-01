# 奇点分类

## 孤立奇点

<!-- isolated_singularity_definition -->
> [!Definition]
> **孤立奇点 Isolated Singularity**：设 $f$ 在穿孔邻域 $0<|z-a|<R$ 上全纯。点 $a$ 称为 $f$ 的孤立奇点。Laurent 展开
> $$
> f(z)=\sum_{n=-\infty}^{\infty}c_n(z-a)^n
> $$
> 的负幂部分决定奇点类型。

<!-- removable_singularity_definition -->
> [!Definition]
> **可去奇点 Removable Singularity**：若 $f$ 在 $a$ 的穿孔邻域全纯，且存在有限极限 $\lim_{z\to a}f(z)$，则称 $a$ 是可去奇点。此时令 $f(a)$ 等于该极限即可把 $f$ 全纯延拓到 $a$。
>
> 等价地，Laurent 展开中所有负幂系数均为零；也等价于 $f$ 在 $a$ 的某穿孔邻域内有界。

<!-- pole_definition -->
> [!Definition]
> **极点 Pole**：若存在整数 $m\ge1$ 和在 $a$ 附近全纯且满足 $g(a)\ne0$ 的函数 $g$，使
> $$
> f(z)=\frac{g(z)}{(z-a)^m},
> $$
> 则称 $a$ 是 $f$ 的 $m$ 阶极点。等价地，$|f(z)|\to\infty$ 当 $z\to a$，且 $(z-a)^mf(z)$ 在 $a$ 处有非零有限极限。

<!-- essential_singularity_definition -->
> [!Definition]
> **本性奇点 Essential Singularity**：孤立奇点既不是可去奇点也不是极点时，称为本性奇点。等价地，Laurent 展开含有无穷多个负幂项。

## 奇点定理

<!-- riemann_removable_singularity_theorem -->
> [!Theorem]
> **Riemann 可去奇点定理 Riemann's Removable Singularity Theorem**：若 $f$ 在 $0<|z-a|<R$ 上全纯且在该穿孔邻域内有界，则 $a$ 是 $f$ 的可去奇点。
>
> **证明思路**：考虑 $(z-a)^2f(z)$ 或适当次数的乘积，利用 Cauchy 估计证明延拓函数在 $a$ 处的导数存在；等价地，Laurent 系数公式与有界性迫使所有负幂系数为零。

<!-- casorati_weierstrass_theorem -->
> [!Theorem]
> **Casorati-Weierstrass 定理 Casorati-Weierstrass Theorem**：若 $a$ 是 $f$ 的本性奇点，则对任意 $r>0$，集合
> $$
> f\bigl(\{z:0<|z-a|<r\}\bigr)
> $$
> 在 $\mathbb{C}$ 中稠密。等价地，对任意 $w\in\mathbb{C}$，存在 $z_n\to a$ 使 $f(z_n)\to w$。
>
> **证明思路**：若像集不稠密，则存在一个圆盘不与像集相交，从而 $1/(f-w)$ 在穿孔邻域内有界；Riemann 可去奇点定理将其延拓，再推出 $f$ 只能有可去奇点或极点，矛盾。

<!-- great_picard_theorem_intro -->
> [!Theorem]
> **Picard 大定理简介 Great Picard Theorem**：若 $a$ 是 $f$ 的本性奇点，则在 $a$ 的任意穿孔邻域内，$f$ 至少一次、至多遗漏一个复值地取得每个复数值；更精确地，除至多一个值外，每个值都取得无穷多次。
>
> **注**：Picard 大定理严格强于 Casorati-Weierstrass 定理；本节只使用其结论，不展开证明。

<!-- singularity_classification_summary -->
> [!Example]+
> **孤立奇点分类汇总 Classification of Isolated Singularities**：
> | 奇点类型 | Laurent 主要部分 | $z\to a$ 时的行为 |
> |---|---|---|
> | 可去奇点 | $0$ | $f$ 有有限极限 |
> | $m$ 阶极点 | 有限个负幂项，最低次为 $(z-a)^{-m}$ | $|f(z)|\to\infty$ |
> | 本性奇点 | 无穷多个负幂项 | 像集在 $\mathbb{C}$ 中稠密 |

> **注**：奇点分类与 Casorati-Weierstrass 定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
