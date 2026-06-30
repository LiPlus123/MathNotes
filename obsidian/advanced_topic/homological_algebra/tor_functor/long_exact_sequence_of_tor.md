# Tor 的长正合列

## 第二变量上的长正合列

<!-- tor_long_exact_sequence_second_variable -->
> [!Theorem]
> **Tor 在第二变量上的长正合列 Long Exact Sequence of Tor in the Second Variable**：设
> $$
> 0\to N'\xrightarrow{i} N\xrightarrow{p} N''\to0
> $$
> 是左 $R$-模短正合列，固定右 $R$-模 $M$。则存在自然连接同态
> $$
> \delta_n: \mathrm{Tor}_n^R(M,N'')\to \mathrm{Tor}_{n-1}^R(M,N'), \quad n\ge1,
> $$
> 使得序列正合：
> $$
> \cdots\to \mathrm{Tor}_n^R(M,N')\to \mathrm{Tor}_n^R(M,N)\to \mathrm{Tor}_n^R(M,N'')
> \xrightarrow{\delta_n}\mathrm{Tor}_{n-1}^R(M,N')\to\cdots
> $$
> 并在尾部给出
> $$
> \mathrm{Tor}_1^R(M,N'')\xrightarrow{\delta_1}M\otimes_R N'\to M\otimes_R N\to M\otimes_R N''\to0.
> $$
>
> **证明思路**：取 $M$ 的投射分解 $P_\bullet\to M$，则
> $$
> 0\to P_\bullet\otimes_R N'\to P_\bullet\otimes_R N\to P_\bullet\otimes_R N''\to0
> $$
> 是链复形短正合列，对其取同调得到长正合列。

## 第一变量上的长正合列

<!-- tor_long_exact_sequence_first_variable -->
> [!Theorem]
> **Tor 在第一变量上的长正合列 Long Exact Sequence of Tor in the First Variable**：设
> $$
> 0\to M'\xrightarrow{i} M\xrightarrow{p} M''\to0
> $$
> 是右 $R$-模短正合列，固定左 $R$-模 $N$。则存在自然长正合列：
> $$
> \cdots\to \mathrm{Tor}_n^R(M',N)\to \mathrm{Tor}_n^R(M,N)\to \mathrm{Tor}_n^R(M'',N)
> \xrightarrow{\partial_n}\mathrm{Tor}_{n-1}^R(M',N)\to\cdots.
> $$
>
> **证明思路**：对偶地，固定 $N$ 并用 $N$ 的投射或平坦分解计算 Tor，可得同样的链复形短正合列与长正合列。

## 连接同态的意义

<!-- tor_connecting_morphism_meaning -->
> [!Proposition]
> **Tor 连接同态的意义 Interpretation of the Connecting Morphism in Tor**：连接同态度量了短正合列张量后失去左正合性的缺陷。特别地，若 $\delta_1=0$ 对一切 $M$ 成立，则
> $$
> 0\to M\otimes_R N'\to M\otimes_R N\to M\otimes_R N''\to0
> $$
> 对一切 $M$ 正合，这等价于 $N''$ 平坦。

## 自然性

<!-- tor_long_exact_sequence_naturality -->
> [!Proposition]
> **Tor 长正合列的自然性 Naturality of Long Exact Sequences of Tor**：短正合列之间的交换态射诱导 Tor 长正合列之间的交换图，且连接同态与这些态射交换。

> **注**：这使 Tor 长正合列成为比较张量积与平坦性的标准工具。