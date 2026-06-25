# 因式分解定理 Factorization Theorem

## 重数

<!-- root_multiplicity_def -->
> [!Definition]
> **重数 Multiplicity**：设 $f(x) \in K[x]$，$\alpha \in K$，$k \in \mathbb{Z}^+$。若 $(x - \alpha)^k \mid f(x)$ 但 $(x - \alpha)^{k+1} \nmid f(x)$，则称 $\alpha$ 是 $f(x)$ 的 **$k$ 重根**（root of multiplicity $k$），$k$ 称为 $\alpha$ 的**重数**（multiplicity）。
> - 若 $k = 1$，称 $\alpha$ 为**单根**（simple root）；
> - 若 $k \geq 2$，称 $\alpha$ 为**重根**（multiple root）。

## 因式分解定理

<!-- factorization_by_roots_theorem -->
> [!Theorem]
> **因式分解定理 Factorization Theorem**：设 $f(x) \in K[x]$ 是次数为 $n \geq 1$ 的非零多项式，$\alpha_1, \alpha_2, \ldots, \alpha_r \in K$ 是 $f(x)$ 的全部不同的根，重数分别为 $k_1, k_2, \ldots, k_r$。则存在 $q(x) \in K[x]$，使得
> $$f(x) = (x - \alpha_1)^{k_1} (x - \alpha_2)^{k_2} \cdots (x - \alpha_r)^{k_r} q(x),$$
> 其中 $q(x)$ 在 $K$ 中没有根，且
> $$k_1 + k_2 + \cdots + k_r + \deg q = n$$
> （特别地，$(x - \alpha_1)^{k_1} \cdots (x - \alpha_r)^{k_r} \mid f(x)$，且 $k_1 + k_2 + \cdots + k_r \leq n$）。

> **证明思路**：对 $r$（根的个数）归纳。由因式定理，$(x - \alpha_1) \mid f(x)$；进而对 $k_1$ 归纳，可证 $(x - \alpha_1)^{k_1} \mid f(x)$ 而 $(x - \alpha_1)^{k_1+1} \nmid f(x)$，令 $f(x) = (x - \alpha_1)^{k_1} f_1(x)$，其中 $\alpha_1$ 不是 $f_1(x)$ 的根。$\alpha_2, \ldots, \alpha_r$ 仍为 $f_1(x)$ 的根，且重数不变，对 $f_1$ 递归应用即得结论。
