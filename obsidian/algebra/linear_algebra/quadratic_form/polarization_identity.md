---
title: 极化恒等式
tags:
  - linear_algebra
  - quadratic_form
---

# 极化恒等式

<!-- polarization_identity_real -->
> [!Theorem]
> **实极化恒等式 Real Polarization Identity**：设 $V$ 是实线性空间，$B$ 是 $V$ 上的对称双线性型，$q(x) = B(x,x)$ 是对应的二次型，则对任意 $x, y \in V$，
> $$
> B(x, y) = \frac{1}{4}\bigl[q(x + y) - q(x - y)\bigr].
> $$
> 等价地，
> $$
> B(x, y) = \frac{1}{2}\bigl[q(x + y) - q(x) - q(y)\bigr].
> $$
>
> **证明思路**：直接展开 $q(x+y) = B(x+y, x+y) = q(x) + 2B(x,y) + q(y)$，以及 $q(x-y) = q(x) - 2B(x,y) + q(y)$，作差后除以 4（或取第一式后移项除以 2）即得。

> **注**：极化恒等式说明，对称双线性型 $B$ 可以完全由二次型 $q$ 恢复。因此，在实线性空间上，对称双线性型与二次型携带等价的信息。

<!-- polarization_identity_complex -->
> [!Theorem]
> **复极化恒等式 Complex Polarization Identity**：设 $V$ 是复线性空间，$B: V \times V \to \mathbb{C}$ 是 Hermitian 型（即满足 $B(x,y) = \overline{B(y,x)}$），$q(x) = B(x,x) \in \mathbb{R}$ 是对应的 Hermitian 二次型，则对任意 $x, y \in V$，
> $$
> B(x, y) = \frac{1}{4}\bigl[q(x+y) - q(x-y) + i\,q(x+iy) - i\,q(x-iy)\bigr].
> $$
>
> **证明思路**：分别展开 $q(x \pm y)$ 与 $q(x \pm iy)$，利用 $B$ 的共轭线性（在第二变量上）抵消虚部，再对四个等式作线性组合即得。

<!-- polarization_identity_uniqueness -->
> [!Corollary]
> **对称双线性型由二次型唯一确定 Uniqueness of Symmetric Bilinear Form**：设 $B_1$，$B_2$ 是实线性空间 $V$ 上的两个对称双线性型，若对所有 $x \in V$ 有 $B_1(x,x) = B_2(x,x)$，则 $B_1 = B_2$。
>
> **证明思路**：由极化恒等式，$B_1(x,y)$ 和 $B_2(x,y)$ 都可以完全由各自的二次型在 $x \pm y$ 处的值确定；两个二次型相同则两个双线性型相同。
