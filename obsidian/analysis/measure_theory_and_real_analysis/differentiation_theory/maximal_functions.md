# 极大函数

## Hardy-Littlewood 极大函数

<!-- hardy_littlewood_maximal_function_definition -->
> [!Definition]
> **Hardy-Littlewood 极大函数 Hardy-Littlewood Maximal Function**：设 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$。$f$ 的 Hardy-Littlewood 极大函数定义为
> $$
> Mf(x)=\sup_{r>0}\frac{1}{m(B(x,r))}\int_{B(x,r)}|f(y)|\,dy,
> $$
> 其中 $B(x,r)$ 是以 $x$ 为中心、半径为 $r$ 的开球，$m$ 为 $n$ 维 Lebesgue 测度。

<!-- centered_maximal_function_measurability -->
> [!Proposition]
> **极大函数的可测性 Measurability of the Maximal Function**：若 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$，则 $Mf$ 是 Lebesgue 可测函数。并且在几乎每个 $x\in\mathbb{R}^n$ 处，$Mf(x)<+\infty$。
>
> **证明思路**：对局部可积函数，可将半径限制为正有理数并利用球平均随中心和半径的可测性，将上确界写为可数个可测函数的上确界。有限性由弱型极大不等式应用于各个有界球上的截断函数得到。

## Vitali 覆盖与极大不等式

<!-- vitali_covering_lemma -->
> [!Lemma]
> **Vitali 覆盖引理 Vitali Covering Lemma**：设 $E\subseteq\mathbb{R}^n$ 有界，且 $\mathcal{F}$ 是一族以 $E$ 中每一点为中心、半径可任意小的球。则可从 $\mathcal{F}$ 中选出至多可数个两两不交的球 $\{B_j\}$，使得
> $$
> m\left(E\setminus\bigcup_jB_j\right)=0.
> $$
>
> **证明思路**：按半径分层贪心选取两两不交球，并用被舍弃球与已选球的有限倍膨胀之间的包含关系控制未覆盖部分；对层数取极限得到零测余集。

<!-- weak_type_maximal_inequality -->
> [!Theorem]
> **Hardy-Littlewood 极大不等式 Hardy-Littlewood Maximal Inequality**：存在仅依赖于维数 $n$ 的常数 $C_n>0$，使得对每个 $f\in L^1(\mathbb{R}^n)$ 与 $\alpha>0$，
> $$
> m\bigl(\{x\in\mathbb{R}^n:Mf(x)>\alpha\}\bigr)
> \leq\frac{C_n}{\alpha}\|f\|_1.
> $$
> 这称为 $M$ 的弱型 $(1,1)$ 估计。
>
> **证明思路**：对超水平集的每一点选择一个使球平均大于 $\alpha$ 的球。由 Vitali 覆盖引理抽取互不交子族；这些球上的积分下界与其体积相乘后求和，再用不交性由 $\|f\|_1$ 控制。

<!-- strong_type_maximal_inequality -->
> [!Theorem]
> **$L^p$ 极大不等式 $L^p$ Maximal Inequality**：若 $1<p\leq+\infty$，则存在仅依赖于 $n,p$ 的常数 $C_{n,p}>0$，使得对每个 $f\in L^p(\mathbb{R}^n)$，
> $$
> \|Mf\|_p\leq C_{n,p}\|f\|_p.
> $$
>
> **证明思路**：$p=+\infty$ 时由球平均直接估计。对 $1<p<+\infty$，将弱型 $(1,1)$ 估计与 $L^\infty$ 有界性结合，通过分布函数积分公式或 Marcinkiewicz 插值定理得到结论。

<!-- maximal_function_example -->
> [!Example]+
> **区间示性函数的极大函数 Maximal Function of an Interval Indicator**：在 $\mathbb{R}$ 上令 $f=\mathbf{1}_{[0,1]}$。对 $x\notin[0,1]$，为了使含 $x$ 的中心球与 $[0,1]$ 相交，球半径至少与 $x$ 到区间的距离同阶；因此 $Mf(x)$ 随 $|x|\to+\infty$ 至少按 $|x|^{-1}$ 的量级衰减。该例说明即使 $f\in L^1$，$Mf$ 一般也不属于 $L^1$，所以弱型 $(1,1)$ 估计不能加强为强型 $(1,1)$ 估计。

> **注**：本小节参见 Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 1；Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 3.3。
