---
title: 像与秩
tags:
  - linear_algebra
  - linear_operator
---

# 像与秩

<!-- image_definition -->
> [!Definition]
> **像 Image**（又称**值域**）：设 $T: V \to W$ 是线性映射，$T$ 的**像**定义为
> $$
> \mathrm{Im}\, T = T(V) = \{T(v) \mid v \in V\}.
> $$

> **注**：$\mathrm{Im}\, T$ 是 $W$ 的子空间。验证：若 $w_1, w_2 \in \mathrm{Im}\, T$，取 $v_1, v_2 \in V$ 使得 $T(v_i) = w_i$，则对任意 $\lambda, \mu \in F$，有 $\lambda w_1 + \mu w_2 = T(\lambda v_1 + \mu v_2) \in \mathrm{Im}\, T$。

<!-- rank_definition -->
> [!Definition]
> **秩 Rank**：设 $T: V \to W$ 是有限维线性空间之间的线性映射，$T$ 的**秩**定义为像的维数：
> $$
> \mathrm{rank}(T) = \dim(\mathrm{Im}\, T).
> $$

<!-- image_spanned_by_basis_images -->
> [!Theorem]
> **像由基的像张成**：设 $\mathcal{B} = (e_1, \ldots, e_n)$ 是 $V$ 的基，则
> $$
> \mathrm{Im}\, T = \mathrm{span}(T(e_1), T(e_2), \ldots, T(e_n)).
> $$

> **证明思路**：任意 $v = \sum_{i=1}^n \xi_i e_i$，则 $T(v) = \sum_{i=1}^n \xi_i T(e_i)$，故 $\mathrm{Im}\, T \subseteq \mathrm{span}(T(e_1), \ldots, T(e_n))$。反向包含显然。

<!-- rank_nullity_theorem -->
> [!Theorem]
> **秩-零定理 Rank-Nullity Theorem**（又称**维数公式**）：设 $V$ 是数域 $F$ 上的有限维线性空间，$T: V \to W$ 是线性映射，则
> $$
> \dim V = \mathrm{null}(T) + \mathrm{rank}(T).
> $$

> **证明思路**：设 $\ker T$ 的一组基为 $(u_1, \ldots, u_k)$（$k = \mathrm{null}(T)$），将其扩充为 $V$ 的基 $(u_1, \ldots, u_k, v_1, \ldots, v_r)$（$r = n - k$）。断言 $(T(v_1), \ldots, T(v_r))$ 构成 $\mathrm{Im}\, T$ 的基：
> - **张成**：由像由基的像张成，$T(u_i) = \mathbf{0}$，故 $\mathrm{Im}\, T = \mathrm{span}(T(v_1), \ldots, T(v_r))$。
> - **线性无关**：若 $\sum_{j=1}^r \mu_j T(v_j) = \mathbf{0}$，则 $T\!\left(\sum_j \mu_j v_j\right) = \mathbf{0}$，即 $\sum_j \mu_j v_j \in \ker T$，可由 $u_i$ 线性表出，结合 $V$ 的基的线性无关性得所有 $\mu_j = 0$。
>
> 因此 $\mathrm{rank}(T) = r = n - k$，即 $\dim V = k + r = \mathrm{null}(T) + \mathrm{rank}(T)$。

<!-- surjectivity_criterion -->
> [!Corollary]
> **满射的判定**：设 $V, W$ 是有限维线性空间，$T: V \to W$ 是线性映射，则 $T$ 是满射当且仅当 $\mathrm{rank}(T) = \dim W$。

> **证明思路**：$T$ 是满射当且仅当 $\mathrm{Im}\, T = W$，即 $\dim(\mathrm{Im}\, T) = \dim W$。

<!-- rank_of_composition -->
> [!Theorem]
> **复合映射的秩不等式**：设 $T: V \to W$，$S: W \to U$ 为有限维线性空间之间的线性映射，则
> $$
> \mathrm{rank}(S \circ T) \leq \min(\mathrm{rank}(S),\ \mathrm{rank}(T)).
> $$

> **证明思路**：$\mathrm{Im}(S \circ T) = S(T(V)) \subseteq S(W) = \mathrm{Im}\, S$，故 $\mathrm{rank}(S \circ T) \leq \mathrm{rank}(S)$；又 $S(T(V))$ 是 $T(V)$ 在 $S$ 下的像，由秩-零定理知 $\dim S(T(V)) \leq \dim T(V) = \mathrm{rank}(T)$。
