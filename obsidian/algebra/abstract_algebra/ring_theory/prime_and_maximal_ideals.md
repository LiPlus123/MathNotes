# 素理想与极大理想

## 定义

<!-- prime_ideal_def -->
> [!Definition]
> **素理想 Prime Ideal**：设 $R$ 为交换含幺环，理想 $P \trianglelefteq R$（$P \neq R$）称为**素理想**，若对所有 $a, b \in R$，
> $$
> ab \in P \implies a \in P \text{ 或 } b \in P
> $$

<!-- maximal_ideal_def -->
> [!Definition]
> **极大理想 Maximal Ideal**：设 $R$ 为含幺环，理想 $M \trianglelefteq R$（$M \neq R$）称为**极大理想**，若不存在理想 $I$ 使得 $M \subsetneq I \subsetneq R$（即 $M$ 在 $R$ 的所有真理想中极大）。

## 性质

<!-- prime_ideal_quotient_domain -->
> [!Theorem]
> **素理想与整环**：设 $R$ 为交换含幺环，$P \trianglelefteq R$，$P \neq R$。则 $P$ 是素理想当且仅当商环 $R/P$ 是整环。
>
> **证明思路**：$P$ 是素理想 $\Leftrightarrow$ $ab \in P \Rightarrow a \in P$ 或 $b \in P$ $\Leftrightarrow$ $(a+P)(b+P) = 0+P \Rightarrow a+P = 0+P$ 或 $b+P = 0+P$ $\Leftrightarrow$ $R/P$ 无非零零因子 $\Leftrightarrow$ $R/P$ 是整环。

<!-- maximal_ideal_quotient_field -->
> [!Theorem]
> **极大理想与域**：设 $R$ 为交换含幺环，$M \trianglelefteq R$，$M \neq R$。则 $M$ 是极大理想当且仅当商环 $R/M$ 是域。
>
> **证明思路**：$M$ 是极大理想 $\Leftrightarrow$ $R/M$ 的理想只有 $\{0+M\}$ 和 $R/M$（由对应定理，$R/M$ 的理想与 $R$ 中包含 $M$ 的理想一一对应）$\Leftrightarrow$ $R/M$ 是单交换含幺环 $\Leftrightarrow$ $R/M$ 是域。

<!-- maximal_implies_prime -->
> [!Corollary]
> **极大理想是素理想**：在交换含幺环中，极大理想一定是素理想。
>
> **证明思路**：域是整环，故由极大理想与素理想的商环刻画即得。

<!-- prime_not_maximal_exists -->
> [!Example]+
> **素理想不一定是极大理想**：在 $\mathbb{Z}$ 中，零理想 $\{0\}$ 是素理想（因 $\mathbb{Z}$ 是整环），但不是极大理想（因 $\mathbb{Z}$ 不是域，且 $(2) \supsetneq \{0\}$）。

<!-- ideal_existence_zorn -->
> [!Theorem]
> **极大理想的存在性**：任意含幺环 $R$（$R \neq \{0\}$）至少存在一个极大理想。
>
> **证明思路**：利用 Zorn 引理，对 $R$ 的所有真理想（不含 $1$）组成的集合（按包含关系偏序），每条全序链的并仍是真理想，故存在极大元。

## 例子

<!-- prime_ideal_example_Z -->
> [!Example]+
> **整数环的素理想与极大理想**：$\mathbb{Z}$ 的素理想恰好是 $\{0\}$ 和 $(p)$（$p$ 为素数）；极大理想恰好是 $(p)$（$p$ 为素数）。这对应于 $\mathbb{Z}/(p) \cong \mathbb{Z}/p\mathbb{Z}$ 是域，$\mathbb{Z}/\{0\} \cong \mathbb{Z}$ 是整环但非域。

<!-- prime_ideal_example_Z_xy -->
> [!Example]+
> **多项式环中的素理想**：在 $\mathbb{Z}[x]$ 中，$(x)$ 是素理想（因 $\mathbb{Z}[x]/(x) \cong \mathbb{Z}$ 是整环），但不是极大理想（因 $\mathbb{Z}$ 不是域）；$(p, x)$（$p$ 为素数）是极大理想（因 $\mathbb{Z}[x]/(p,x) \cong \mathbb{Z}/p\mathbb{Z}$ 是域）。
