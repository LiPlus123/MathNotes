# 紧致曲面的分类

## 分类定理

<!-- surface_classification_theorem -->
> [!Theorem]
> **紧致曲面分类定理 Classification of Compact Surfaces**：每个紧致连通无边界的曲面（$2$ 维拓扑流形）均同胚于以下三类中的恰好一个：
> 1. **球面** $S^2 = \Sigma_0$；
> 2. **可定向曲面（亏格 $g$ 曲面）$\Sigma_g$**（$g \geq 1$）：$g$ 个环面的连通和 $T^2 \# T^2 \# \cdots \# T^2$；
> 3. **不可定向曲面 $N_k$**（$k \geq 1$）：$k$ 个射影平面的连通和 $\mathbb{R}P^2 \# \cdots \# \mathbb{R}P^2$。

<!-- surface_classification_proof_sketch -->
> **证明思路（多边形标准化）**：
> 1. **三角剖分**：每个紧致曲面均可三角剖分（存在性定理），故可表示为有限单纯复形 $|K|$；
> 2. **多边形表示**：将三角剖分的三角形逐步粘合，最终将曲面表示为一个多边形（$2n$ 边形），其边按某种方式两两识别；
> 3. **标准化**：通过初等的"切割与粘合"操作（elementary moves），将多边形的边识别方案化为标准形式：
>    - $\Sigma_g$：$a_1 b_1 a_1^{-1} b_1^{-1} a_2 b_2 a_2^{-1} b_2^{-1} \cdots a_g b_g a_g^{-1} b_g^{-1}$（$4g$ 边形）；
>    - $N_k$：$c_1 c_1 c_2 c_2 \cdots c_k c_k$（$2k$ 边形）；
> 4. **不变量区分**：证明不同标准形式给出的曲面互不同胚（由代数不变量完成）。

## 用代数不变量完成区分

<!-- surface_distinction_by_invariants -->
> [!Theorem]
> **代数不变量区分紧致曲面 Algebraic Invariants Distinguish Compact Surfaces**：紧致连通无边界曲面 $F$ 由以下三个不变量**完全**确定（即这三个不变量相同则曲面同胚）：
> 1. **可定向性**：$F$ 是否可定向（等价地，$H_2(F) \cong \mathbb{Z}$ 或 $H_2(F) = 0$）；
> 2. **欧拉示性数** $\chi(F)$（或等价地，第一 Betti 数 $\beta_1 = \mathrm{rank}\, H_1(F)$）；
> 3. （以上两个已足够，因为 $\chi$ 在各类中单调。）
>
> **具体地**：
> - 若 $H_2(F) \cong \mathbb{Z}$（可定向），则 $\chi(F) = 2 - 2g$，$F \cong \Sigma_g$；
> - 若 $H_2(F) = 0$（不可定向），则 $\chi(F) = 2 - k$，$F \cong N_k$。
>
> **关键不变量的计算**：
> - **基本群**：$\pi_1(\Sigma_g) = \langle a_1, b_1, \ldots, a_g, b_g \mid [a_1,b_1]\cdots[a_g,b_g] \rangle$，$\pi_1(N_k) = \langle c_1, \ldots, c_k \mid c_1^2 \cdots c_k^2 \rangle$；
> - $H_1(F)$ 是 $\pi_1(F)$ 的阿贝尔化，给出 $H_1(\Sigma_g) \cong \mathbb{Z}^{2g}$，$H_1(N_k) \cong \mathbb{Z}^{k-1} \oplus \mathbb{Z}/2\mathbb{Z}$（扭转元 $c_1 \cdots c_k$ 的阶为 $2$）。

## 全分类一览

<!-- surface_classification_table -->
> [!Example]+
> **紧致曲面分类汇总 Complete Classification Table**：
>
> | 曲面 | 可定向 | $\chi$ | $H_1$ | $H_2$ | $\pi_1$ |
> |---|---|---|---|---|---|
> | $S^2 = \Sigma_0$ | 是 | $2$ | $0$ | $\mathbb{Z}$ | $0$ |
> | $T^2 = \Sigma_1$ | 是 | $0$ | $\mathbb{Z}^2$ | $\mathbb{Z}$ | $\mathbb{Z}^2$ |
> | $\Sigma_2$ | 是 | $-2$ | $\mathbb{Z}^4$ | $\mathbb{Z}$ | $\langle a_1,b_1,a_2,b_2 \mid [a_1,b_1][a_2,b_2]\rangle$ |
> | $\Sigma_g$（$g \geq 1$） | 是 | $2-2g$ | $\mathbb{Z}^{2g}$ | $\mathbb{Z}$ | 见上 |
> | $\mathbb{R}P^2 = N_1$ | 否 | $1$ | $\mathbb{Z}/2\mathbb{Z}$ | $0$ | $\mathbb{Z}/2\mathbb{Z}$ |
> | Klein 瓶 $= N_2$ | 否 | $0$ | $\mathbb{Z} \oplus \mathbb{Z}/2\mathbb{Z}$ | $0$ | $\langle a,b \mid abab^{-1}\rangle$ |
> | $N_k$（$k \geq 1$） | 否 | $2-k$ | $\mathbb{Z}^{k-1} \oplus \mathbb{Z}/2\mathbb{Z}$ | $0$ | 见上 |

> **注**：$\Sigma_1$ 和 $N_2$ 均有 $\chi = 0$，但 $H_2(\Sigma_1) = \mathbb{Z} \neq 0 = H_2(N_2)$（即 $T^2$ 可定向而 Klein 瓶不可定向），故可由同调完全区分。又 $N_1$ 和 $\Sigma_g$（$g \geq 1$）的 $\chi$ 均可为 $1$（只有 $N_1$ 的 $\chi = 1$，$\Sigma_0$ 的 $\chi = 2$，$\Sigma_1$ 的 $\chi = 0$），再通过 $H_2$ 和 $\beta_1$ 区分。
