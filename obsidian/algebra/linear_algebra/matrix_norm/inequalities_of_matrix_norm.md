---
title: 矩阵范数的不等式
tags:
  - linear_algebra
  - matrix_norm
---

# 矩阵范数的不等式

<!-- matrix_norm_compatibility_inequality -->
> [!Theorem]
> **矩阵范数相容不等式 Matrix Norm Compatibility Inequality**：设 $\|\cdot\|_\alpha$ 是 $F^n$ 上的向量范数，$\|\cdot\|_\beta$ 是 $F^m$ 上的向量范数，$\|\cdot\|_{\alpha\to\beta}$ 为由其诱导的算子范数。则对任意 $A\in M_{m\times n}(F)$、$x\in F^n$，有
> $$
> \|Ax\|_\beta \le \|A\|_{\alpha\to\beta}\,\|x\|_\alpha.
> $$

> **证明思路**：由算子范数定义，$\|A\|_{\alpha\to\beta}=\sup_{x\neq\mathbf{0}}\frac{\|Ax\|_\beta}{\|x\|_\alpha}$，故对任意 $x\neq\mathbf{0}$ 直接得到 $\|Ax\|_\beta\leq\|A\|_{\alpha\to\beta}\|x\|_\alpha$；$x=\mathbf{0}$ 时两边均为 $0$。

<!-- submultiplicativity_of_matrix_norm -->
> [!Definition]
> **次乘性 Submultiplicativity**：称方阵空间 $M_n(F)$ 上的矩阵范数 $\|\cdot\|$ 具有**次乘性**（或称相容乘法的范数），若对任意 $A,B\in M_n(F)$ 有
> $$
> \|AB\| \le \|A\|\,\|B\|.
> $$

<!-- submultiplicativity_of_induced_norm -->
> [!Theorem]
> **诱导范数的次乘性 Submultiplicativity of Induced Norm**：$M_n(F)$ 上由向量 $p$-范数诱导的算子范数 $\|\cdot\|_p$ 满足次乘性：
> $$
> \|AB\|_p \le \|A\|_p\,\|B\|_p.
> $$

> **证明思路**：对任意 $\|x\|_p=1$，$\|ABx\|_p\leq\|A\|_p\|Bx\|_p\leq\|A\|_p\|B\|_p\|x\|_p=\|A\|_p\|B\|_p$，对上确界取极值即得。

<!-- submultiplicativity_of_frobenius_norm -->
> [!Theorem]
> **Frobenius 范数的次乘性 Submultiplicativity of Frobenius Norm**：Frobenius 范数满足次乘性：对 $A\in M_{m\times k}(F)$，$B\in M_{k\times n}(F)$，有
> $$
> \|AB\|_F \le \|A\|_F\,\|B\|_F.
> $$

> **证明思路**：$(AB)_{ij}=\sum_\ell a_{i\ell}b_{\ell j}$，由 Cauchy–Schwarz 不等式得 $|(AB)_{ij}|^2\leq\sum_\ell|a_{i\ell}|^2\cdot\sum_\ell|b_{\ell j}|^2$，对 $i,j$ 求和后整理即得。

<!-- identity_norm_lower_bound -->
> [!Theorem]
> **单位矩阵范数下界 Identity Norm Lower Bound**：对 $M_n(F)$ 上任意满足次乘性的矩阵范数 $\|\cdot\|$，有
> $$
> \|I_n\| \ge 1.
> $$

> **证明思路**：$\|I_n\|=\|I_n\cdot I_n\|\leq\|I_n\|^2$，而 $\|I_n\|>0$，故 $\|I_n\|\geq 1$。

<!-- inequalities_among_norms -->
> [!Theorem]
> **常用矩阵范数之间的不等式 Inequalities Among Common Matrix Norms**：对 $A\in M_{m\times n}(F)$（$m,n\geq 1$），以下不等式成立：
> $$
> \begin{align*}
> &\|A\|_2 \le \|A\|_F \le \sqrt{\min(m,n)}\,\|A\|_2,\\
> &\frac{1}{\sqrt{n}}\|A\|_\infty \le \|A\|_2 \le \sqrt{m}\,\|A\|_\infty,\\
> &\frac{1}{\sqrt{m}}\|A\|_1 \le \|A\|_2 \le \sqrt{n}\,\|A\|_1,\\
> &\|A\|_2 \le \sqrt{\|A\|_1\,\|A\|_\infty}.
> \end{align*}
> $$

> **证明思路**：$\|A\|_F^2=\mathrm{tr}(A^*A)=\sum_i\lambda_i(A^*A)\leq\min(m,n)\cdot\lambda_{\max}(A^*A)=\min(m,n)\|A\|_2^2$，下界由迹不小于最大特征值得到；其余不等式通过对诱导范数定义和列向量分析逐一推导。
