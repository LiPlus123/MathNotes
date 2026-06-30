# 余极限

## 余极限作为始余锥

<!-- colimit_def -->
> [!Definition]
> **余极限 Colimit**：设 $D: \mathcal{I} \to \mathcal{C}$ 为图表。$D$ 的**余极限**是余锥范畴 $\mathrm{Cocone}(D)$ 中的**初对象**，即一个余锥 $(\operatorname{colim} D,\, \iota)$（其中 $\iota = \{\iota_i: D(i) \to \operatorname{colim} D\}_{i \in \mathcal{I}}$），满足：对任意余锥 $(X, \mu)$，存在唯一的 $\mathcal{C}$ 中态射 $v: \operatorname{colim} D \to X$，使得对每个 $i$，
> $$
> v \circ \iota_i = \mu_i.
> $$
> 称 $\operatorname{colim} D$（或 $\varinjlim D$）为**余极限对象**，$\iota_i$ 为**嵌入（余射影）**，$v$ 为由 $(X, \mu)$ 诱导的**唯一介入态射**。

## 与极限的对偶关系

<!-- colimit_duality -->
> [!Theorem]
> **余极限是极限的对偶 Colimits are Dual to Limits**：$(\operatorname{colim} D, \iota)$ 是 $D: \mathcal{I} \to \mathcal{C}$ 的余极限，当且仅当 $(\operatorname{colim} D, \iota^{\mathrm{op}})$ 是 $D^{\mathrm{op}}: \mathcal{I}^{\mathrm{op}} \to \mathcal{C}^{\mathrm{op}}$ 的极限。
>
> **证明思路**：余极限的定义经由对偶范畴转写为极限的定义。

> **注**：由对偶性，极限的所有性质（唯一性、函子性、Yoneda 刻画）均有对偶的余极限版本，无需单独证明。

## 余极限的唯一性与函子性

<!-- colimit_uniqueness -->
> [!Theorem]
> **余极限在同构意义下唯一 Uniqueness of Colimit**：图表 $D$ 的余极限若存在则在同构意义下唯一。
>
> **证明思路**：由对偶原理与极限的唯一性立得。

<!-- colimit_functoriality -->
> [!Theorem]
> **余极限关于图表的函子性**：设 $\mathcal{C}$ 有所有 $\mathcal{I}$-形状的余极限。则余极限构成函子 $\operatorname{colim}: [\mathcal{I}, \mathcal{C}] \to \mathcal{C}$：自然变换 $\alpha: D \Rightarrow D'$ 诱导唯一态射 $\operatorname{colim} \alpha: \operatorname{colim} D \to \operatorname{colim} D'$。
>
> **证明思路**：对偶于极限的函子性。

<!-- colimit_yoneda -->
> [!Theorem]
> **余极限的 Yoneda 刻画**：$D: \mathcal{I} \to \mathcal{C}$ 的余极限满足自然同构
> $$
> \mathrm{Hom}_{\mathcal{C}}(\operatorname{colim} D,\, X) \cong \mathrm{Nat}(D,\, \Delta_X)
> $$
> 对所有 $X$ 自然成立。
>
> **证明思路**：对偶于极限的 Yoneda 刻画。

## 重要余极限类型

| 指标范畴 $\mathcal{I}$ | 余极限类型 |
|---|---|
| 空范畴 $\varnothing$ | 初对象 |
| 离散 $n$-对象范畴 | $n$ 个对象的余积（coproduct） |
| 平行双箭头 $\bullet \rightrightarrows \bullet$ | 余等化子（coequalizer） |
| 余跨形（cospan）$\bullet \leftarrow \bullet \to \bullet$ | 推出（pushout） |
| 有向范畴 | 有向余极限 |
| 滤过范畴 | 滤过余极限 |
