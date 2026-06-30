# 欧拉示性数

## 同调定义

<!-- euler_characteristic_homology_definition -->
> [!Definition]
> **欧拉示性数（同调定义）Euler Characteristic via Homology**：设 $X$ 是拓扑空间，若其奇异同调群 $H_n(X)$ 仅有有限多个非零，且每个非零 $H_n(X)$ 均是有限生成阿贝尔群，则定义 $X$ 的**欧拉示性数 Euler Characteristic** 为：
> $$\chi(X) = \sum_{n \geq 0} (-1)^n \,\mathrm{rank}\, H_n(X) = \sum_{n \geq 0} (-1)^n \beta_n(X),$$
> 其中 $\beta_n(X) = \mathrm{rank}\, H_n(X)$ 是第 $n$ 个 Betti 数（$H_n$ 的自由部分的秩）。

> **注**：此定义不计入同调群的扭转部分（有限阶元素）对欧拉示性数的贡献——扭转不影响秩。欧拉示性数是同伦不变量（同伦等价的空间有相同的欧拉示性数）。

## 与胞腔计数的一致性

<!-- euler_characteristic_cell_count -->
> [!Theorem]
> **欧拉示性数与胞腔计数 Euler Characteristic and Cell Count**：若 $X$ 是有限 CW 复形，$c_n$ 是 $n$-胞腔的个数，则：
> $$\chi(X) = \sum_{n \geq 0} (-1)^n c_n = \sum_{n \geq 0} (-1)^n \beta_n(X).$$
>
> **证明思路**：设 $C_n = C_n^{CW}(X) \cong \mathbb{Z}^{c_n}$，由短正合列 $0 \to Z_n \to C_n \to B_{n-1} \to 0$ 和 $0 \to B_n \to Z_n \to H_n \to 0$ 取秩：$c_n = \mathrm{rank}\, Z_n + \mathrm{rank}\, B_{n-1}$，$\mathrm{rank}\, Z_n = \beta_n + \mathrm{rank}\, B_n$。交错求和后正负项相消，得 $\sum(-1)^n c_n = \sum(-1)^n \beta_n$。

## 可加性

<!-- euler_characteristic_additivity -->
> [!Theorem]
> **欧拉示性数的可加性 Additivity of Euler Characteristic**：设 $(X, A)$ 是 CW 对（$A$ 是 $X$ 的子复形），则：
> $$\chi(X) = \chi(A) + \chi(X/A) - 1$$
>（坍缩基点 $\chi(\{*\}) = 1$）；若 $A$ 非空，用约化版本则有 $\tilde\chi(X) = \tilde\chi(A) + \tilde\chi(X/A)$（$\tilde\chi = \chi - 1$）。更常见的形式：若 $X = A \cup B$ 且 $A, B$ 均为子复形，则：
> $$\chi(X) = \chi(A) + \chi(B) - \chi(A \cap B).$$
>
> **证明思路**：利用 Mayer-Vietoris 序列对各 $H_n$ 取秩并交错求和，正合性保证秩关系成立。

## 典型例子

<!-- euler_characteristic_examples -->
> [!Example]+
> **典型空间的欧拉示性数 Examples**：
> | 空间 | $\beta_0$ | $\beta_1$ | $\beta_2$ | $\chi$ |
> |---|---|---|---|---|
> | 单点 $\{*\}$ | $1$ | $0$ | $0$ | $1$ |
> | $S^n$（$n \geq 1$） | $1$ | $0$ | $\cdots$ 只有 $\beta_n = 1$ | $1 + (-1)^n$ |
> | $T^2$ | $1$ | $2$ | $1$ | $0$ |
> | $\Sigma_g$ | $1$ | $2g$ | $1$ | $2 - 2g$ |
> | $\mathbb{R}P^{2m}$ | $1$ | $0$ | $0$ | $1$ |
> | $\mathbb{R}P^{2m+1}$ | $1$ | $0$ | $0$ | $0$ |
> | $\mathbb{C}P^n$ | $1$ | $0$ | $1$ | $n+1$ |
