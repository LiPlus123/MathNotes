# 原子分解

## 原子与 Hardy 拟范数

<!-- hardy_atom_definition -->
> [!Definition]
> **$(p,q,s)$-原子 $(p,q,s)$-Atom**：设 $0<p\leq1$、$1<q\leq+\infty$，并令
> $$
> s\geq\left\lfloor n\left(\frac1p-1\right)\right\rfloor.
> $$
> 可测函数 $a$ 称为 $(p,q,s)$-原子，若存在立方体 $Q$ 使：
> $$
> \operatorname{supp}a\subseteq Q,
> \qquad
> \|a\|_q\leq |Q|^{1/q-1/p},
> $$
> 且对每个 $|\alpha|\leq s$，
> $$
> \int_{\mathbb{R}^n}x^\alpha a(x)\,dx=0.
> $$
> 当 $q=+\infty$ 时，将大小条件解释为 $\|a\|_\infty\leq|Q|^{-1/p}$。

<!-- hardy_atomic_space_definition -->
> [!Definition]
> **原子 Hardy 空间 Atomic Hardy Space**：设 $f\in\mathcal{S}'(\mathbb{R}^n)$。若存在 $(p,q,s)$-原子 $(a_j)$ 与复系数 $(\lambda_j)$，使
> $$
> f=\sum_j\lambda_ja_j
> $$
> 在温和分布意义成立，并且 $\sum_j|\lambda_j|^p<+\infty$，则定义
> $$
> \|f\|_{H^p_{\mathrm{at}}}
> =\inf\left(\sum_j|\lambda_j|^p\right)^{1/p},
> $$
> 其中下确界取遍所有这样的原子表示。

<!-- hardy_atomic_decomposition_theorem -->
> [!Theorem]
> **原子分解定理 Atomic Decomposition Theorem**：对 $0<p\leq1$、$1<q\leq+\infty$ 及上述 $s$，
> $$
> H^p(\mathbb{R}^n)=H^p_{\mathrm{at}}(\mathbb{R}^n)
> $$
> 且两种拟范数等价。特别地，$H^1$ 的每个元素可表示为具有零均值、$L^\infty$ 大小受控的原子的绝对可和级数。
>
> **证明思路**：对大极大函数的超水平集作 Whitney 分解，在每个立方体上以低阶多项式剥离局部平均，余项归一化为原子；反向则以原子的大小和消去矩逐个控制其极大函数，再用 $p$ 次拟三角不等式求和。

<!-- hardy_atomic_operator_criterion -->
> [!Theorem]
> **原子有界性判据 Atomic Boundedness Criterion**：设 $T$ 在有限原子和上定义，且对所有 $(p,q,s)$-原子 $a$ 满足
> $$
> \|Ta\|_Y\leq C,
> $$
> 其中 $Y$ 是 Banach 空间。当 $p=1$ 时，$T$ 唯一延拓为
> $$
> T:H^1(\mathbb{R}^n)\longrightarrow Y
> $$
> 的有界算子。
>
> **证明思路**：对有限原子和 $f=\sum_j\lambda_ja_j$，由 Banach 空间三角不等式得到 $\|Tf\|_Y\leq C\sum_j|\lambda_j|$，再以有限原子和在 $H^1$ 中的稠密性延拓。

<!-- hardy_finite_atomic_caveat -->
> [!Theorem]
> **有限原子分解的注意事项 Finite Atomic Decomposition Caveat**：当使用 $L^\infty$ 原子定义 $H^1$ 时，有限原子和上的原子范数未必自动与完整 $H^1$ 范数等价；加入连续原子或改用 $q<+\infty$ 原子可得到适合有界性判据的有限分解版本。应用原子判据时必须指明所采用的有限原子定理。
>
> **证明思路**：$L^\infty$ 原子的有限和范数会受到有限表示的结构限制。以 $q<\infty$ 的原子获得更好的近似稳定性，并通过密度与原子范数等价修正该问题。

> **来源**：Ronald R. Coifman, "A Real Variable Characterization of $H^p$", *Studia Mathematica* 51 (1974)；Charles Fefferman and Elias M. Stein, "$H^p$ Spaces of Several Variables", *Acta Mathematica* 129 (1972)；Yves Meyer, *Wavelets and Operators*, Chapter VI。
