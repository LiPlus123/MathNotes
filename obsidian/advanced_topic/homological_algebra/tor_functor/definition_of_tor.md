# Tor 的定义

## Tor 的左导出函子定义

<!-- tor_left_derived_def -->
> [!Definition]
> **Tor 的定义 Tor via Left Derived Functor**：设 $R$ 是环，$M$ 是右 $R$-模，$N$ 是左 $R$-模。定义
> $$
> \mathrm{Tor}_n^R(M,N) := L_n(-\otimes_R N)(M), \quad n\ge0,
> $$
> 即把右正合加性函子
> $$
> -\otimes_R N: \mathbf{Mod}\text{-}R \to \mathbf{Ab}
> $$
> 对第一变量作左导出。
>
> 若 $P_\bullet\to M\to0$ 是 $M$ 的投射分解，则
> $$
> \mathrm{Tor}_n^R(M,N) \cong H_n(P_\bullet\otimes_R N).
> $$

## 用第二变量分解计算

<!-- tor_via_second_variable_resolution -->
> [!Proposition]
> **Tor 的第二变量计算 Tor via Resolution in the Second Variable**：若 $Q_\bullet\to N\to0$ 是 $N$ 的投射分解或平坦分解，则
> $$
> \mathrm{Tor}_n^R(M,N) \cong H_n(M\otimes_R Q_\bullet).
> $$
> 因而 Tor 可由任一变量的投射/平坦分解计算。

## 平衡性

<!-- tor_balanced_definition -->
> [!Theorem]
> **Tor 的平衡性 Balancedness of Tor**：对任意右 $R$-模 $M$、左 $R$-模 $N$ 与 $n\ge0$，有自然同构
> $$
> L_n(-\otimes_R N)(M) \cong L_n(M\otimes_R -)(N).
> $$
> 这说明 Tor 不依赖于在哪个变量上取分解。
>
> **证明思路**：比较两边所用分解后得到的双复形，总复形的同调与两种单边计算一致；比较定理保证与分解选取无关。

## 零次项

<!-- tor_degree_zero_tensor -->
> [!Corollary]
> **零次 Tor 与张量积 Tor\textsubscript{0} equals Tensor Product**：
> $$
> \mathrm{Tor}_0^R(M,N) \cong M\otimes_R N.
> $$
>
> **证明思路**：这是左导出函子的一般性质 $L_0F\cong F$ 对 $F=-\otimes_R N$ 的特例。

> **注**：Tor 度量张量积不正合所造成的缺陷；当一侧平坦时，高次 Tor 全部消失。