# Marcinkiewicz 插值定理

## 弱空间与次线性算子

<!-- weak_lp_space_definition -->
> [!Definition]
> **弱 $L^p$ 空间 Weak $L^p$ Space**：对 $0<p<+\infty$，可测函数 $f$ 属于弱 $L^p$ 空间 $L^{p,\infty}(X,\mu)$，若
> $$
> \|f\|_{L^{p,\infty}}
> =\sup_{\lambda>0}\lambda\,\mu(\{|f|>\lambda\})^{1/p}<+\infty.
> $$
> 这等价于 $\mu(\{|f|>\lambda\})\leq\lambda^{-p}\|f\|_{L^{p,\infty}}^p$。

<!-- sublinear_operator_definition -->
> [!Definition]
> **次线性算子 Sublinear Operator**：算子 $T$ 称为次线性的，若对定义域中函数 $f,g$ 及标量 $c$，有
> $$
> |T(f+g)|\leq|Tf|+|Tg|,
> \qquad |T(cf)|=|c|\,|Tf|
> $$
> 几乎处处成立。

<!-- weak_type_operator_definition -->
> [!Definition]
> **弱型算子 Weak-Type Operator**：若存在 $C>0$ 使
> $$
> \|Tf\|_{L^{q,\infty}}\leq C\|f\|_p,
> $$
> 则称 $T$ 为弱型 $(p,q)$。强型 $(p,q)$ 指 $\|Tf\|_q\leq C\|f\|_p$。

## Marcinkiewicz 插值

<!-- marcinkiewicz_interpolation_theorem -->
> [!Theorem]
> **Marcinkiewicz 插值定理 Marcinkiewicz Interpolation Theorem**：设 $T$ 为次线性算子，并且对 $i=0,1$ 是弱型 $(p_i,q_i)$，其中
> $$
> 1\leq p_0<p_1\leq+\infty,
> \qquad 1\leq q_0\ne q_1<+\infty.
> $$
> 对 $0<\theta<1$ 定义
> $$
> \frac{1}{p}=\frac{1-\theta}{p_0}+\frac{\theta}{p_1},
> \qquad
> \frac{1}{q}=\frac{1-\theta}{q_0}+\frac{\theta}{q_1}.
> $$
> 则 $T$ 为强型 $(p,q)$。
>
> **证明思路**：以阈值 $\alpha$ 将 $f$ 分为大值部分和小值部分，对二者分别使用两个弱型估计；将所得分布函数估计按 $\lambda$ 积分，选择 $\alpha$ 平衡两项。

<!-- maximal_function_marcinkiewicz_application -->
> [!Corollary]
> **极大函数的强型估计 Strong-Type Estimate for the Maximal Function**：Hardy-Littlewood 极大算子 $M$ 对 $1<p<+\infty$ 为强型 $(p,p)$。
>
> **证明思路**：$M$ 是弱型 $(1,1)$，且满足 $\|Mf\|_\infty\leq\|f\|_\infty$。对端点 $(1,1)$ 与 $(\infty,\infty)$ 应用 Marcinkiewicz 插值得到结论。

<!-- marcinkiewicz_endpoint_limitation_note -->
> **注**：插值结论不包含端点 $p=1$；事实上 $M$ 一般不从 $L^1$ 映入 $L^1$，弱 $(1,1)$ 是该端点的恰当结论。

> **来源**：Elias M. Stein and Guido Weiss, *Introduction to Fourier Analysis on Euclidean Spaces*, Chapter V；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 1。
