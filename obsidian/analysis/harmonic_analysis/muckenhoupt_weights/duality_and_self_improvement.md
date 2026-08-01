# 对偶性与自改善

## 对偶权与开性

<!-- ap_dual_weight_definition -->
> [!Definition]
> **对偶权 Dual Weight**：对 $1<p<+\infty$，令 $p'=p/(p-1)$，并定义
> $$
> \sigma=w^{-1/(p-1)}=w^{1-p'}.
> $$
> 称 $\sigma$ 为 $w$ 关于指数 $p$ 的对偶权。

<!-- ap_duality_theorem -->
> [!Theorem]
> **$A_p$ 对偶性 $A_p$ Duality**：对 $1<p<+\infty$，
> $$
> w\in A_p
> \quad\Longleftrightarrow\quad
> \sigma=w^{1-p'}\in A_{p'},
> $$
> 且
> $$
> [\sigma]_{A_{p'}}=[w]_{A_p}^{p'-1}.
> $$
>
> **证明思路**：将 $A_{p'}$ 条件中的 $\sigma^{-1/(p'-1)}$ 化简为 $w$，即可得到与 $A_p$ 表达式同一的立方体平均乘积。

<!-- reverse_holder_theorem -->
> [!Theorem]
> **反向 Hölder 不等式 Reverse Hölder Inequality**：若 $w\in A_\infty$，则存在 $r>1$ 与常数 $C$，使任意立方体 $Q$ 满足
> $$
> \left(\frac{1}{|Q|}\int_Qw(x)^r\,dx\right)^{1/r}
> \leq C\frac{1}{|Q|}\int_Qw(x)\,dx.
> $$
> 指数 $r-1>0$ 可定量地依赖于 $[w]_{A_\infty}^{\mathrm{FW}}$。
>
> **证明思路**：对 $w\mathbf{1}_Q$ 的极大函数作层析分解，并使用 $A_\infty$ 的定量绝对连续性控制超水平集；积分分布函数估计得到更高可积性。

<!-- gehring_lemma -->
> [!Lemma]
> **Gehring 引理 Gehring's Lemma**：若非负局部可积函数 $u$ 满足某个反向 Hölder 不等式，即存在 $r>1$ 使
> $$
> \left\langle u^r\right\rangle_Q^{1/r}\leq C\langle u\rangle_Q
> $$
> 对所有立方体 $Q$ 成立，则存在 $\varepsilon>0$，使 $u$ 还满足指数 $r+\varepsilon$ 的反向 Hölder 不等式。
>
> **证明思路**：运用覆盖引理将高超水平集分解为极大立方体，并将原反向 Hölder 条件迭代到分布函数上，从而获得更高次可积性。

<!-- ap_openness_theorem -->
> [!Corollary]
> **$A_p$ 的开性 Openness of $A_p$**：若 $w\in A_p$ 且 $1<p<+\infty$，则存在 $\varepsilon>0$，使
> $$
> w\in A_{p-\varepsilon}.
> $$
>
> **证明思路**：对偶权 $\sigma\in A_{p'}\subset A_\infty$ 具有反向 Hölder 性。选取略小于 $p$ 的指数，使新 $A_{p-\varepsilon}$ 条件中的对偶幂可由 $\sigma$ 的更高可积性控制。

> **来源**：F. W. Gehring, "The $L^p$-Integrability of the Partial Derivatives of a Quasiconformal Mapping", *Acta Mathematica* 130 (1973)；Tuomas Hytönen, Carlos Pérez, and Ezequiel Rela, "Sharp Reverse Hölder Property for $A_\infty$ Weights", *Journal of Functional Analysis* 263 (2012)。
