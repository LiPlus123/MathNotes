---
title: 矩阵谱理论
tags:
  - linear_algebra
  - matrix_norm
---

# 矩阵谱理论

<!-- spectral_radius_definition -->
> [!Definition]
> **谱半径 Spectral Radius**：设 $A\in M_n(F)$，其全部特征值为 $\lambda_1,\lambda_2,\ldots,\lambda_n$（计代数重数）。定义 $A$ 的**谱半径**为
> $$
> \rho(A) = \max_{1\le i\le n}|\lambda_i|.
> $$

> **注**：谱半径不是矩阵范数（例如它不满足三角不等式，对幂零矩阵 $N\neq O$ 有 $\rho(N)=0$），但它与矩阵范数有密切关系。

<!-- spectral_radius_lower_bound_of_matrix_norm -->
> [!Theorem]
> **谱半径是方阵范数的下界 Spectral Radius as Lower Bound of Matrix Norm**：设 $\|\cdot\|$ 是 $M_n(F)$ 上任意满足次乘性的矩阵范数，则对任意 $A\in M_n(F)$ 有
> $$
> \rho(A) \le \|A\|.
> $$

> **证明思路**：设 $\lambda$ 为 $A$ 的特征值，$x\neq\mathbf{0}$ 为对应特征向量，令矩阵 $X$ 各列均为 $x$，则 $AX=\lambda X$，故 $|\lambda|\|X\|=\|\lambda X\|=\|AX\|\leq\|A\|\|X\|$，因 $\|X\|>0$ 得 $|\lambda|\leq\|A\|$；对所有特征值取最大即得。

> **注**：对谱范数，精确等式成立：$\|A\|_2=\sqrt{\rho(A^*A)}$，但一般范数只有不等式。

<!-- spectral_radius_infimum_of_matrix_norm -->
> [!Theorem]
> **谱半径是方阵范数的下确界 Spectral Radius as Infimum of Matrix Norms**：对任意 $A\in M_n(F)$ 及 $\varepsilon>0$，存在 $M_n(F)$ 上满足次乘性的矩阵范数 $\|\cdot\|_\varepsilon$ 使得
> $$
> \|A\|_\varepsilon \le \rho(A)+\varepsilon.
> $$
> 因此
> $$
> \rho(A) = \inf\{\|A\| \mid \|\cdot\| \text{ 为 } M_n(F) \text{ 上的次乘性矩阵范数}\}.
> $$

> **证明思路**：利用 Jordan 标准形 $A=PJP^{-1}$，对 $\varepsilon>0$ 构造对角缩放矩阵 $D_\varepsilon=\mathrm{diag}(1,\varepsilon,\varepsilon^2,\ldots,\varepsilon^{n-1})$，令 $\|\cdot\|_\varepsilon$ 为由 $D_\varepsilon P^{-1}(\cdot)PD_\varepsilon^{-1}$ 诱导的范数，则 Jordan 块的超对角线元素被 $\varepsilon$ 压缩，使得范数趋近于谱半径。

<!-- gelfand_formula -->
> [!Theorem]
> **Gelfand 定理（谱半径公式）Gelfand's Formula**：设 $\|\cdot\|$ 是 $M_n(F)$ 上任意满足次乘性的矩阵范数，则对任意 $A\in M_n(F)$，极限
> $$
> \rho(A) = \lim_{k\to\infty}\|A^k\|^{1/k}
> $$
> 成立，与范数的选取无关。

> **证明思路**：一方面，由次乘性 $\|A^k\|\leq\|A\|^k$，故 $\limsup_{k\to\infty}\|A^k\|^{1/k}\leq\|A\|$；利用谱半径是下确界定理对各范数取下确界得 $\limsup_{k\to\infty}\|A^k\|^{1/k}\leq\rho(A)+\varepsilon$，令 $\varepsilon\to 0$ 得上界。另一方面，设 $\lambda$ 为 $A$ 的特征值，则 $\lambda^k$ 是 $A^k$ 的特征值，由谱半径不等式 $\rho(A^k)\leq\|A^k\|$，得 $|\lambda|^k\leq\|A^k\|$，即 $|\lambda|\leq\|A^k\|^{1/k}$，取最大特征值得 $\liminf_{k\to\infty}\|A^k\|^{1/k}\geq\rho(A)$。两端合并得等式。

<!-- spectral_radius_convergence_criterion -->
> [!Theorem]
> **矩阵幂次收敛判准 Convergence Criterion for Matrix Powers**：设 $A\in M_n(F)$，则
> $$
> \lim_{k\to\infty} A^k = O \iff \rho(A) < 1.
> $$

> **证明思路**：若 $\rho(A)<1$，由 Gelfand 定理存在 $k_0$ 使 $\|A^k\|^{1/k}<1$ 对 $k\geq k_0$ 成立，故 $\|A^k\|\to 0$；反之若某特征值 $|\lambda|\geq 1$，则 $|A^k x|=|\lambda|^k|x|\not\to 0$。
