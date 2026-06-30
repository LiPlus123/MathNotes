# Ext 的长正合列

## 第二变量上的长正合列

<!-- ext_long_exact_sequence_second_variable -->
> [!Theorem]
> **Ext 在第二变量上的长正合列 Long Exact Sequence in the Second Variable**：设
> $$
> 0\to B'\xrightarrow{i} B\xrightarrow{p} B''\to0
> $$
> 是左 $R$-模短正合列，固定左 $R$-模 $A$。则存在自然连接同态
> $$
> \delta^n: \mathrm{Ext}_R^n(A,B'')\to \mathrm{Ext}_R^{n+1}(A,B'),
> $$
> 使得序列正合：
> $$
> 0\to \mathrm{Hom}_R(A,B')\to \mathrm{Hom}_R(A,B)\to \mathrm{Hom}_R(A,B'')\xrightarrow{\delta^0}
> \mathrm{Ext}_R^1(A,B')\to \mathrm{Ext}_R^1(A,B)\to \mathrm{Ext}_R^1(A,B'')\xrightarrow{\delta^1}\cdots.
> $$
>
> **证明思路**：把左正合函子 $\mathrm{Hom}_R(A,-)$ 的右导出应用于短正合列，直接得到导出函子长正合列。

## 第一变量上的长正合列

<!-- ext_long_exact_sequence_first_variable -->
> [!Theorem]
> **Ext 在第一变量上的长正合列 Long Exact Sequence in the First Variable**：设
> $$
> 0\to A'\xrightarrow{i} A\xrightarrow{p} A''\to0
> $$
> 是短正合列，固定左 $R$-模 $B$。则有自然长正合列（第一变量反变，方向反转）：
> $$
> 0\to \mathrm{Hom}_R(A'',B)\to \mathrm{Hom}_R(A,B)\to \mathrm{Hom}_R(A',B)\xrightarrow{\partial^0}
> \mathrm{Ext}_R^1(A'',B)\to \mathrm{Ext}_R^1(A,B)\to \mathrm{Ext}_R^1(A',B)\xrightarrow{\partial^1}\cdots.
> $$
>
> **证明思路**：对短正合列取投射分解的协调序列并作用 $\mathrm{Hom}_R(-,B)$，再取上同调得到长正合列。

## 连接同态的意义

<!-- ext_connecting_morphism_interpretation -->
> [!Proposition]
> **连接同态的解释 Interpretation of Connecting Morphisms**：
> - 在第二变量长正合列中，$\delta^0: \mathrm{Hom}_R(A,B'')\to \mathrm{Ext}_R^1(A,B')$ 把态射 $f: A\to B''$ 送到拉回扩张（pullback extension）的类；
> - 在第一变量长正合列中，$\partial^0: \mathrm{Hom}_R(A',B)\to \mathrm{Ext}_R^1(A'',B)$ 把态射送到推出扩张（pushout extension）的类。
>
> **证明思路**：按连接同态的之字形构造追踪代表元，可与 Yoneda 扩张拼接描述一致。

## 自然性

<!-- ext_long_exact_sequence_naturality -->
> [!Proposition]
> **Ext 长正合列的自然性 Naturality of Long Exact Sequences of Ext**：短正合列之间的交换态射诱导 Ext 长正合列之间的交换图，且连接同态与这些态射交换。

> **注**：该自然性在比较不同分解、构造五引理图、证明同构判别时至关重要。