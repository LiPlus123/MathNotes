# BMO 的定义与基本例子

## 有界均值振荡

<!-- harmonic_bmo_definition -->
> [!Definition]
> **有界均值振荡空间 Bounded Mean Oscillation**：局部可积函数 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$ 属于 $\operatorname{BMO}(\mathbb{R}^n)$，若
> $$
> \|f\|_{\operatorname{BMO}}
> =\sup_Q\frac{1}{|Q|}\int_Q|f(x)-\langle f\rangle_Q|\,dx<+\infty,
> $$
> 其中上确界遍历所有与坐标轴平行的立方体 $Q$，且
> $$
> \langle f\rangle_Q=\frac{1}{|Q|}\int_Qf(x)\,dx.
> $$

<!-- harmonic_bmo_ball_cube_equivalence -->
> [!Theorem]
> **球与立方体定义的等价性 Equivalence of Ball and Cube Definitions**：将上式中的立方体改为 Euclidean 球，并以球平均替代立方体平均，得到等价的 BMO 半范数。
>
> **证明思路**：每个球包含在体积可比的立方体中，每个立方体又包含在半径可比的球中。用较大集合上的平均振荡控制较小集合，并比较两种平均值即可。

<!-- harmonic_bmo_quotient_constants -->
> [!Proposition]
> **常数商空间 Quotient by Constants**：对任意常数 $c\in\mathbb{C}$，
> $$
> \|f+c\|_{\operatorname{BMO}}=\|f\|_{\operatorname{BMO}}.
> $$
> 因而 BMO 半范数的零空间恰为常数函数，通常将 $\operatorname{BMO}(\mathbb{R}^n)$ 视为模常数的 Banach 空间。
>
> **证明思路**：$(f+c)-\langle f+c\rangle_Q=f-\langle f\rangle_Q$。若半范数为零，则每个立方体上函数几乎处处等于其平均，重叠立方体链表明该常数全局一致。

<!-- harmonic_bounded_functions_in_bmo -->
> [!Theorem]
> **$L^\infty$ 嵌入 BMO $L^\infty$ Embeds into BMO**：
> $$
> \|f\|_{\operatorname{BMO}}\leq2\|f\|_\infty.
> $$
> 因而 $L^\infty(\mathbb{R}^n)\subseteq\operatorname{BMO}(\mathbb{R}^n)$。
>
> **证明思路**：对任意 $Q$，$|\langle f\rangle_Q|\leq\|f\|_\infty$，故 $|f-\langle f\rangle_Q|\leq2\|f\|_\infty$ 几乎处处。

<!-- harmonic_logarithm_in_bmo -->
> [!Example]+
> **对数函数是 BMO 函数 Logarithm Belongs to BMO**：函数
> $$
> f(x)=\log|x|
> $$
> 属于 $\operatorname{BMO}(\mathbb{R}^n)$，但不属于 $L^\infty(\mathbb{R}^n)$。因此
> $$
> L^\infty(\mathbb{R}^n)\subsetneq\operatorname{BMO}(\mathbb{R}^n).
> $$
>
> **证明思路**：对包含原点的球，以伸缩不变性将平均振荡化为单位球上的固定有限积分；对远离原点的球，用 $\nabla\log|x|=x/|x|^2$ 控制局部振荡。立方体与球定义等价后结论成立。

> **来源**：John B. Garnett, *Bounded Analytic Functions*, Chapter VI；Elias M. Stein, *Harmonic Analysis*, Chapter IV。
