# 零点与恒等定理

## 零点的阶

<!-- zero_of_holomorphic_function_definition -->
> [!Definition]
> **全纯函数的零点 Zero of a Holomorphic Function**：设 $f$ 在 $a$ 的邻域内全纯。若 $f(a)=0$，则称 $a$ 是 $f$ 的零点。若存在最小整数 $m\ge1$ 使
> $$
> f(a)=f'(a)=\cdots=f^{(m-1)}(a)=0,\qquad f^{(m)}(a)\ne0,
> $$
> 则称 $a$ 是 $f$ 的 $m$ 阶零点。

<!-- zero_factorization_theorem -->
> [!Theorem]
> **零点的因子分解 Factorization at a Zero**：若 $a$ 是全纯函数 $f$ 的 $m$ 阶零点，则在 $a$ 的某邻域内存在全纯函数 $g$，使
> $$
> f(z)=(z-a)^m g(z),\qquad g(a)\ne0.
> $$
> 反之，具有该形式的函数在 $a$ 处恰有 $m$ 阶零点。
>
> **证明思路**：使用 Taylor 展开提取第一个非零系数；或者连续地定义 $g(z)=f(z)/(z-a)^m$ 并利用可去奇点定理延拓到 $a$。

<!-- isolated_zeros_theorem -->
> [!Theorem]
> **零点的孤立性 Isolated Zeros**：若 $f$ 在区域 $D$ 上全纯且不恒为零，则 $f$ 的每个零点都是孤立的。特别地，$f$ 的零点在 $D$ 的任意紧子集内只有有限个。
>
> **证明思路**：零点因子分解给出 $f(z)=(z-a)^mg(z)$ 且 $g(a)\ne0$；由 $g$ 的连续性，在 $a$ 的足够小邻域内 $g$ 不为零。

<!-- zero_order_product_quotient -->
> [!Theorem]
> **零点阶的运算 Order of Zeros under Operations**：若 $f,g$ 在 $a$ 附近全纯且不恒为零，则
> $$
> \operatorname{ord}_a(fg)=\operatorname{ord}_a(f)+\operatorname{ord}_a(g).
> $$
> 若 $g$ 的零点阶不小于 $f$ 的零点阶，则 $f/g$ 在 $a$ 处具有可去奇点；若两阶不同，则商的阶为两阶之差。

## 恒等定理

<!-- identity_theorem_accumulation -->
> [!Theorem]
> **恒等定理 Identity Theorem**：设 $D$ 是区域，$f,g:D\to\mathbb{C}$ 全纯。若存在 $D$ 内一点列 $(z_n)$，其极限为 $a\in D$，且 $z_n$ 两两不同并满足
> $$
> f(z_n)=g(z_n)\qquad(n\ge1),
> $$
> 则 $f\equiv g$ 在 $D$ 上成立。
>
> 特别地，若全纯函数 $f$ 的零点在 $D$ 内有聚点，则 $f\equiv0$。
>
> **证明思路**：令 $h=f-g$。若 $h$ 不恒为零，则其零点孤立，不可能有聚点；矛盾。区域的连通性使局部恒等性延伸到整个区域。

<!-- identity_theorem_open_set -->
> [!Corollary]
> **开集上的恒等性 Identity on an Open Set**：若两个全纯函数在区域 $D$ 的某个非空开子集上相等，则它们在 $D$ 上恒等相等。

<!-- zero_counting_compact_sets -->
> [!Example]+
> **紧集中的零点计数 Counting Zeros on Compact Sets**：若 $f$ 在区域 $D$ 上全纯且不恒为零，$K\subset D$ 为紧集，则 $f$ 在 $K$ 中的零点只有有限个。若取包含 $K$ 的更大紧集，零点可以按阶求和计数。

> **注**：零点、孤立性与恒等定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
