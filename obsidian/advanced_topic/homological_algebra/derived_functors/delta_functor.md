# δ-函子与泛性质

## 同调 δ-函子与上同调 δ-函子

<!-- homological_delta_functor_def -->
> [!Definition]
> **同调 δ-函子 Homological $\delta$-Functor**：一列协变加性函子 $\{T_n\}_{n\ge0}$（$T_n: R\text{-}\mathbf{Mod}\to \mathbf{Ab}$）连同连接同态
> $$
> \delta_n: T_n(A'')\to T_{n-1}(A')
> $$
> 称为同调 $\delta$-函子，若对每个短正合列 $0\to A'\to A\to A''\to0$ 给出自然长正合列：
> $$
> \cdots\to T_n(A')\to T_n(A)\to T_n(A'')\xrightarrow{\delta_n}T_{n-1}(A')\to\cdots\to T_0(A'')\to0.
> $$

<!-- cohomological_delta_functor_def -->
> [!Definition]
> **上同调 δ-函子 Cohomological $\delta$-Functor**：一列协变加性函子 $\{T^n\}_{n\ge0}$（$T^n: R\text{-}\mathbf{Mod}\to \mathbf{Ab}$）连同连接同态
> $$
> \delta^n: T^n(A'')\to T^{n+1}(A')
> $$
> 称为上同调 $\delta$-函子，若每个短正合列诱导自然长正合列：
> $$
> 0\to T^0(A')\to T^0(A)\to T^0(A'')\xrightarrow{\delta^0}T^1(A')\to T^1(A)\to\cdots.
> $$

## 可消函子

<!-- effaceable_functor_def -->
> [!Definition]
> **可消性 Effaceability**：
> - 上同调 $\delta$-函子 $\{T^n\}$ 称为**可消的**（effaceable），若对任意对象 $A$ 与任意 $n\ge1$，存在单态射 $A\hookrightarrow E$ 使 $T^n(A\to E)=0$；
> - 同调 $\delta$-函子 $\{T_n\}$ 的对偶可消性：对任意 $A$ 与 $n\ge1$，存在满态射 $P\twoheadrightarrow A$ 使 $T_n(P\to A)=0$。

> **注**：右导出函子 $\{R^nG\}$（$G$ 左正合）是可消的上同调 $\delta$-函子；左导出函子 $\{L_nF\}$（$F$ 右正合）是可消的同调 $\delta$-函子。

## 导出函子的泛 δ-函子性质

<!-- universal_delta_functor_theorem -->
> [!Theorem]
> **导出函子的泛性质 Universality of Derived $\delta$-Functors**：
> 1. 若 $G$ 是左正合加性函子，则其右导出族 $\{R^nG\}_{n\ge0}$ 连同连接同态构成上同调 $\delta$-函子，且在所有以 $R^0G\cong G$ 为零次项的上同调 $\delta$-函子中是**泛的**（universal）；
> 2. 若 $F$ 是右正合加性函子，则其左导出族 $\{L_nF\}_{n\ge0}$ 构成同调 $\delta$-函子，且在以 $L_0F\cong F$ 为零次项的同调 $\delta$-函子中是泛的。
>
> **证明思路**：由分解构造得到长正合列与自然性；可消性保证任何从零次项出发的态射唯一延拓到全体次数，得到泛性。该唯一延拓性质与"高次由连接同态递归确定"本质等价。

## 泛性质的后果

<!-- universal_delta_functor_consequence -->
> [!Corollary]
> **泛 δ-函子的唯一性 Uniqueness of Universal $\delta$-Functors**：若两个可消上同调（或同调）$\delta$-函子零次项自然同构，则它们在所有次数上自然同构，且该同构由零次项唯一决定。

> **注**：该结论使得 Ext、Tor 的不同构造（分解法、Yoneda 法、导出范畴法）在自然同构意义下必然一致。