# $A_p$、$A_1$ 与 $A_\infty$ 的定义

## Muckenhoupt 权类

<!-- muckenhoupt_ap_definition -->
> [!Definition]
> **Muckenhoupt $A_p$ 权 Muckenhoupt $A_p$ Weight**：设 $1<p<+\infty$，权函数 $w$ 属于 $A_p$，若
> $$
> [w]_{A_p}
> =\sup_Q\left(\frac{1}{|Q|}\int_Qw\,dx\right)
> \left(\frac{1}{|Q|}\int_Qw^{-1/(p-1)}\,dx\right)^{p-1}<+\infty,
> $$
> 其中上确界遍历所有边与坐标轴平行的立方体 $Q\subset\mathbb{R}^n$。数 $[w]_{A_p}$ 称为 $A_p$ 特征常数。

<!-- muckenhoupt_a1_definition -->
> [!Definition]
> **$A_1$ 权 $A_1$ Weight**：权函数 $w$ 属于 $A_1$，若存在 $C<+\infty$，使几乎处处 $x$ 有
> $$
> Mw(x)\leq Cw(x).
> $$
> 最小的这类常数记为 $[w]_{A_1}$。等价地，对每个立方体 $Q$，有
> $$
> \langle w\rangle_Q\leq [w]_{A_1}\operatorname*{ess\,inf}_{x\in Q}w(x).
> $$

<!-- muckenhoupt_ainfty_definition -->
> [!Definition]
> **$A_\infty$ 权 $A_\infty$ Weight**：定义
> $$
> A_\infty=\bigcup_{1<p<+\infty}A_p.
> $$
> 它也可由定量绝对连续性刻画：$w\in A_\infty$ 当且仅当存在 $C,\delta>0$，使任意立方体 $Q$ 及任意可测集 $E\subseteq Q$ 满足
> $$
> \frac{w(E)}{w(Q)}\leq C\left(\frac{|E|}{|Q|}\right)^\delta.
> $$

<!-- muckenhoupt_ap_nesting -->
> [!Theorem]
> **$A_p$ 类的嵌套性 Nesting of $A_p$ Classes**：若 $1\leq p<q<+\infty$，则
> $$
> A_1\subseteq A_p\subseteq A_q\subseteq A_\infty.
> $$
>
> **证明思路**：$A_1\subseteq A_p$ 由 $A_1$ 的平均与本质下确界比较得到。对 $A_p\subseteq A_q$，将 $w^{-1/(q-1)}$ 写为 $w^{-1/(p-1)}$ 的较小正幂，并应用 Jensen 或 Hölder 不等式。

<!-- muckenhoupt_fujii_wilson_constant -->
> [!Definition]
> **Fujii-Wilson $A_\infty$ 常数 Fujii-Wilson Constant**：定义
> $$
> [w]_{A_\infty}^{\mathrm{FW}}
> =\sup_Q\frac{1}{w(Q)}\int_QM(w\mathbf{1}_Q)(x)\,dx.
> $$
> 对 $A_\infty$ 权该量有限，并为反向 Hölder 自改善提供有用的定量参数。

> **来源**：Benjamin Muckenhoupt, "Weighted Norm Inequalities for the Hardy Maximal Function", *Transactions of the American Mathematical Society* 165 (1972)；J. Duoandikoetxea, *Fourier Analysis*, Chapter 4。
