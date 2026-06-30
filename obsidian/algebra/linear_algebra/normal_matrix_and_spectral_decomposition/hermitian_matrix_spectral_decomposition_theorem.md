---
title: 厄米矩阵谱分解定理
tags:
  - linear_algebra
  - normal_matrix_and_spectral_decomposition
---

# 厄米矩阵谱分解定理

<!-- hermitian_matrix_spectral_theorem -->
> [!Theorem]
> **厄米矩阵谱定理 Spectral Theorem for Hermitian Matrices**：设 $A \in M_n(\mathbb{C})$，则以下条件等价：
> 1. $A$ 是 Hermitian 矩阵；
> 2. 存在酉矩阵 $U \in M_n(\mathbb{C})$ 与实对角矩阵
> $$
> \Lambda = \mathrm{diag}(\lambda_1, \lambda_2, \ldots, \lambda_n), \quad \lambda_i \in \mathbb{R},
> $$
> 使得
> $$
> A = U\Lambda U^*.
> $$
> 也就是说，Hermitian 矩阵当且仅当存在一组标准正交特征向量基，并且对应特征值全为实数。
>
> **证明思路**：由 Hermitian 矩阵的基本性质，$A$ 正规且特征值实，故可用正规矩阵谱定理酉对角化，并且所得对角元为实数。反向若 $A = U\Lambda U^*$ 且 $\Lambda$ 为实对角矩阵，则
> $$
> A^* = U\Lambda^*U^* = U\Lambda U^* = A.
> $$

<!-- hermitian_matrix_spectral_decomposition_definition -->
> [!Definition]
> **厄米矩阵的谱分解 Spectral Decomposition of a Hermitian Matrix**：设 $A$ 的不同特征值为 $\mu_1, \ldots, \mu_s$，对应正交投影为 $P_1, \ldots, P_s$，则
> $$
> A = \sum_{i=1}^s \mu_i P_i
> $$
> 称为 Hermitian 矩阵 $A$ 的**谱分解**。其中每个 $\mu_i \in \mathbb{R}$，且 $P_i^* = P_i$。

<!-- hermitian_positive_semidefinite_criterion -->
> [!Theorem]
> **半正定的特征值判据 Eigenvalue Criterion for Positive Semidefiniteness**：设 $A$ 为 Hermitian 矩阵，则以下条件等价：
> 1. 对任意 $x \in \mathbb{C}^n$，有 $x^*Ax \geq 0$；
> 2. $A$ 的全部特征值都满足 $\lambda_i \geq 0$。
>
> **证明思路**：若 $x$ 取为特征向量，则
> $$
> x^*Ax = \lambda_i \|x\|_2^2,
> $$
> 因而由半正定性得 $\lambda_i \geq 0$。反向若 $A = U\Lambda U^*$ 且所有 $\lambda_i \geq 0$，令 $y = U^*x$，则
> $$
> x^*Ax = y^*\Lambda y = \sum_{i=1}^n \lambda_i |y_i|^2 \geq 0.
> $$

<!-- hermitian_square_root_corollary -->
> [!Corollary]
> **半正定 Hermitian 矩阵存在平方根**：若 $A$ 为 Hermitian 半正定矩阵，则存在 Hermitian 半正定矩阵 $B$，使得
> $$
> B^2 = A.
> $$
> 此矩阵可取为
> $$
> B = U\,\mathrm{diag}(\sqrt{\lambda_1}, \ldots, \sqrt{\lambda_n})\,U^*,
> $$
> 其中 $A = U\,\mathrm{diag}(\lambda_1, \ldots, \lambda_n)\,U^*$。
>
> **证明思路**：由上一条判据，$\lambda_i \geq 0$，故可逐个取平方根，再按谱分解重组即可。

<!-- hermitian_rayleigh_quotient_corollary -->
> [!Corollary]
> **Rayleigh 商的取值范围**：若 $A$ 为 Hermitian 矩阵，特征值满足
> $$
> \lambda_{\min} \leq \lambda \leq \lambda_{\max},
> $$
> 则对任意 $x \neq \mathbf{0}$，有
> $$
> \lambda_{\min} \leq \frac{x^*Ax}{x^*x} \leq \lambda_{\max}.
> $$
>
> **证明思路**：令 $A = U\Lambda U^*$，并设 $y = U^*x$，则
> $$
> \frac{x^*Ax}{x^*x} = \frac{\sum_i \lambda_i |y_i|^2}{\sum_i |y_i|^2},
> $$
> 这是特征值的加权平均，因此落在最小特征值与最大特征值之间。
