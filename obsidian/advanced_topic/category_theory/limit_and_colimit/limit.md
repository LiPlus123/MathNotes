# 极限

## 极限作为泛锥

<!-- limit_def -->
> [!Definition]
> **极限 Limit**：设 $D: \mathcal{I} \to \mathcal{C}$ 为图表。$D$ 的**极限**是锥范畴 $\mathrm{Cone}(D)$ 中的**终对象**，即一个锥 $(\lim D,\, \pi)$（其中 $\lim D \in \mathrm{Ob}(\mathcal{C})$，$\pi = \{\pi_i: \lim D \to D(i)\}_{i \in \mathcal{I}}$），满足：对任意锥 $(X, \lambda)$，存在唯一的 $\mathcal{C}$ 中态射 $u: X \to \lim D$，使得对每个 $i \in \mathrm{Ob}(\mathcal{I})$，
> $$
> \pi_i \circ u = \lambda_i.
> $$
> 称 $\lim D$（或 $\varprojlim D$）为**极限对象**，$\pi_i$ 为**投影**，$u$ 为由 $(X, \lambda)$ 诱导的**唯一介入态射**（universal mediating morphism）。

> **注**：极限也常称为**泛锥（terminal cone）**。极限不一定存在；当存在时由泛性质在同构意义下唯一。

## 极限的唯一性

<!-- limit_uniqueness -->
> [!Theorem]
> **极限在同构意义下唯一 Uniqueness of Limit**：若 $(\lim D, \pi)$ 与 $(\lim' D, \pi')$ 均为图表 $D: \mathcal{I} \to \mathcal{C}$ 的极限，则存在唯一同构 $\varphi: \lim D \xrightarrow{\sim} \lim' D$ 使得 $\pi'_i \circ \varphi = \pi_i$ 对所有 $i$ 成立。
>
> **证明思路**：终对象在同构意义下唯一（见 [[special_objects|特殊对象]]），故锥范畴 $\mathrm{Cone}(D)$ 的终对象唯一到同构；具体地，由各自的泛性质构造 $\varphi: \lim D \to \lim' D$ 与 $\psi: \lim' D \to \lim D$，再由唯一性知 $\psi \circ \varphi = \mathrm{id}$，$\varphi \circ \psi = \mathrm{id}$。

## 极限的基本性质

<!-- limit_functoriality -->
> [!Theorem]
> **极限关于图表的函子性 Functoriality of Limits**：设 $\mathcal{C}$ 有所有 $\mathcal{I}$-形状的极限。则极限构成函子 $\lim: [\mathcal{I}, \mathcal{C}] \to \mathcal{C}$：对图表间的自然变换 $\alpha: D \Rightarrow D'$，存在唯一态射 $\lim \alpha: \lim D \to \lim D'$ 使得 $\pi'_i \circ \lim \alpha = \alpha_i \circ \pi_i$ 对所有 $i$ 成立。
>
> **证明思路**：$(lim D, \{\alpha_i \circ \pi_i\})$ 是 $D'$ 上的锥，由 $\lim D'$ 的泛性质给出唯一 $\lim \alpha$；函子性由唯一性保证。

<!-- limit_yoneda -->
> [!Theorem]
> **极限的 Yoneda 刻画 Yoneda Characterization of Limits**：$\mathcal{C}$ 中图表 $D: \mathcal{I} \to \mathcal{C}$ 的极限满足自然同构
> $$
> \mathrm{Hom}_{\mathcal{C}}(X,\, \lim D) \cong \mathrm{Nat}(\Delta_X,\, D)
> $$
> 对所有 $X \in \mathrm{Ob}(\mathcal{C})$ 自然成立。反之，由此自然同构可表的函子 $\mathrm{Nat}(\Delta_{(-)}, D): \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ 的表示对象即为 $\lim D$。
>
> **证明思路**：$\mathrm{Nat}(\Delta_X, D)$ 即以 $X$ 为顶的锥集；极限的泛性质等价于此锥集由 $\lim D$ 表示。

## 一些重要的极限类型

| 指标范畴 $\mathcal{I}$ | 极限类型 |
|---|---|
| 空范畴 $\varnothing$ | 终对象 |
| 离散 $n$-对象范畴 | $n$ 个对象的积 |
| 平行双箭头 $\bullet \rightrightarrows \bullet$ | 等化子 |
| 跨形（span）$\bullet \to \bullet \leftarrow \bullet$ | 拉回 |
| 有限范畴 | 有限极限 |
| 小范畴 | 小极限 |
