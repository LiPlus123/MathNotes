# 滤过复形的谱序列

## 谱序列的基本定义

<!-- spectral_sequence_def -->
> [!Definition]
> **谱序列 Spectral Sequence**：一个**谱序列**（spectral sequence）是一族双分次阿贝尔群（或模）
> $$
> \{E_r^{p,q}\}_{r\ge r_0,\ p,q\in\mathbb{Z}}
> $$
> 连同微分
> $$
> d_r^{p,q}: E_r^{p,q} \to E_r^{p-r,\, q+r-1}
> $$
> （链型记号；上同调型可用 $d_r:E_r^{p,q}\to E_r^{p+r,q-r+1}$），满足 $d_r\circ d_r=0$，并且下一页由前一页的同调给出：
> $$
> E_{r+1}^{p,q} \cong H(E_r^{p,q}, d_r).
> $$
>
> **注**：谱序列可以理解为“逐页逼近”某个复杂同调对象的计算装置；每一页的微分剔除一部分信息，剩下的信息传递到下一页。

## 由滤过复形构造谱序列

<!-- spectral_sequence_from_filtered_complex -->
> [!Theorem]
> **滤过复形的谱序列 Spectral Sequence of a Filtered Complex**：设 $(C_\bullet,F)$ 是滤过链复形，则可自然构造谱序列 $E_r^{p,q}(C,F)$，其第一页与第二页分别可表述为：
> $$
> E_0^{p,q} \cong \operatorname{gr}_p^F C_{p+q},
> $$
> $$
> E_1^{p,q} \cong H_{p+q}(\operatorname{gr}_p^F C_\bullet),
> $$
> 并继续得到各页 $E_r^{p,q}$ 与微分 $d_r$。
>
> **证明思路**：将链群中的循环与边缘同时按滤过层切开，构造“近似循环”与“近似边缘”的商群 $Z_r^{p,q}/B_r^{p,q}$；微分来自原链复形微分的更高阶余项。完整构造技术性较强，但核心思想是：链复形微分在相伴分次上先给出 $d_0$，再逐页修正。

## 收敛性

<!-- convergence_of_spectral_sequence -->
> [!Definition]
> **谱序列的收敛 Convergence of a Spectral Sequence**：若由滤过复形构造的谱序列满足
> $$
> E_\infty^{p,q} \cong \operatorname{gr}_p^F H_{p+q}(C_\bullet),
> $$
> 则称其**收敛到** $H_*(C_\bullet)$（更准确地，收敛到该同调上的滤过）。
>
> 这里 $E_\infty^{p,q}$ 表示对足够大的 $r$，稳定后的 $E_r^{p,q}$。

## 极限页

<!-- e_infinity_term_def -->
> [!Definition]
> **极限页 $E_\infty$ The $E_\infty$-page**：若对固定 $(p,q)$，存在 $r_0$ 使得对所有 $r\ge r_0$，
> $$
> E_r^{p,q} \cong E_{r+1}^{p,q},
> $$
> 则该稳定值记作 $E_\infty^{p,q}$。它通常不是最终同调群本身，而是最终同调群上一层滤过的分次块：
> $$
> E_\infty^{p,q} \cong F_p H_{p+q}(C_\bullet)/F_{p-1}H_{p+q}(C_\bullet).
> $$

> **注**：谱序列的输出往往是“分次信息”，从 $E_\infty$ 重建总同调时还需处理扩张问题（extension problem）。