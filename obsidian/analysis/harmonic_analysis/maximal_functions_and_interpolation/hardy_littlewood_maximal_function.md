# Hardy-Littlewood 极大函数

以下 $m$ 表示 $\mathbb{R}^n$ 上的 Lebesgue 测度。

## 中心与非中心极大函数

<!-- harmonic_centered_maximal_function_definition -->
> [!Definition]
> **中心 Hardy-Littlewood 极大函数 Centered Hardy-Littlewood Maximal Function**：对 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$，定义
> $$
> M_cf(x)=\sup_{r>0}\frac{1}{m(B(x,r))}\int_{B(x,r)}|f(y)|\,dy.
> $$

<!-- harmonic_uncentered_maximal_function_definition -->
> [!Definition]
> **非中心 Hardy-Littlewood 极大函数 Uncentered Hardy-Littlewood Maximal Function**：定义
> $$
> Mf(x)=\sup_{B\ni x}\frac{1}{m(B)}\int_B|f(y)|\,dy,
> $$
> 上确界遍历所有包含 $x$ 的 Euclidean 球。二者满足 $M_c f\leq Mf\leq 2^nM_cf$。

<!-- vitali_five_covering_lemma -->
> [!Lemma]
> **Vitali 五倍覆盖引理 Vitali Five-Covering Lemma**：设 $\mathcal{B}$ 是半径有上界的一族 Euclidean 球。则可选出至多可数个两两不交的球 $(B_j)\subseteq\mathcal{B}$，使得
> $$
> \bigcup_{B\in\mathcal{B}}B\subseteq\bigcup_j5B_j.
> $$
>
> **证明思路**：按半径从大到小贪心选取互不相交的球；每个未选球与先选球相交且半径不大于后者，故包含于该先选球的五倍球中。

## 极大不等式与微分定理

<!-- harmonic_maximal_weak_type_one_one -->
> [!Theorem]
> **极大函数的弱 $(1,1)$ 型估计 Weak $(1,1)$ Estimate**：存在仅依赖于 $n$ 的常数 $C_n$，使任意 $f\in L^1(\mathbb{R}^n)$ 及 $\lambda>0$ 满足
> $$
> m\bigl(\{x:Mf(x)>\lambda\}\bigr)\leq\frac{C_n}{\lambda}\|f\|_1.
> $$
>
> **证明思路**：为超水平集内每一点选一个平均值超过 $\lambda$ 的球，在有界截断上应用五倍覆盖引理。利用五倍球的体积增长和所选球的不交性估计其并的测度，最后令截断半径趋于无穷。

<!-- harmonic_maximal_strong_type_pp -->
> [!Theorem]
> **极大函数的强 $(p,p)$ 型估计 Strong $(p,p)$ Estimate**：若 $1<p\leq+\infty$，则存在 $C_{n,p}>0$ 使
> $$
> \|Mf\|_p\leq C_{n,p}\|f\|_p,
> \qquad f\in L^p(\mathbb{R}^n).
> $$
>
> **证明思路**：$p=\infty$ 由平均值直接控制。对 $1<p<\infty$，将弱 $(1,1)$ 型估计与 $L^\infty$ 有界性应用于截断函数，或等价地使用 Marcinkiewicz 插值定理。

<!-- lebesgue_differentiation_maximal_form -->
> [!Theorem]
> **Lebesgue 微分定理的极大函数形式 Maximal-Function Form of the Lebesgue Differentiation Theorem**：若 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$，则几乎处处 $x$ 满足
> $$
> \lim_{r\to0^+}\frac{1}{m(B(x,r))}\int_{B(x,r)}|f(y)-f(x)|\,dy=0.
> $$
> 特别地，球平均几乎处处收敛到 $f(x)$。
>
> **证明思路**：先对连续紧支撑函数由一致连续性证明。对一般 $f$ 以连续紧支撑函数在局部 $L^1$ 中逼近，并用弱 $(1,1)$ 型估计控制逼近误差的局部平均上确界。

> **来源**：Elias M. Stein, *Singular Integrals and Differentiability Properties of Functions*, Chapter I；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 2。
