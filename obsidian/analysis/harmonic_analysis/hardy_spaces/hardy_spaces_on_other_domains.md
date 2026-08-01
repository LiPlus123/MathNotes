# 其他背景上的 Hardy 空间

## 齐次型空间、半群与边界版本

<!-- hardy_spaces_of_homogeneous_type -->
> [!Definition]
> **齐次型空间上的 Hardy 空间 Hardy Spaces on Spaces of Homogeneous Type**：设 $(X,d,\mu)$ 是齐次型空间，即 $d$ 是拟度量且 $\mu$ 是加倍测度。可用近似恒等算子的极大函数、原子或分子定义 $H^p(X)$。原子支撑于球 $B$，满足适当大小条件与
> $$
> \int_Xa\,d\mu=0
> $$
> 的消去条件。

<!-- semigroup_hardy_space_definition -->
> [!Definition]
> **半群 Hardy 空间 Semigroup Hardy Space**：设 $L$ 是非负自伴或扇形型算子，$(e^{-tL})_{t>0}$ 为其热半群。可通过
> $$
> \mathcal{M}_Lf(x)=\sup_{t>0}|e^{-tL}f(x)|
> $$
> 或由 $tLe^{-tL}f$ 构成的平方函数定义 $H^p_L$。当 $L=-\Delta$ 时，该构造与经典实 Hardy 空间密切对应。

<!-- operator_hardy_space_theorem -->
> [!Theorem]
> **算子 Hardy 空间的原子/分子刻画 Atomic and Molecular Characterizations for Operator Hardy Spaces**：若 $L$ 的半群满足适当的核上界、Davies-Gaffney 型脱靶估计或函数演算条件，则 $H^1_L$ 可由适应于 $L$ 的原子或分子刻画，并成为研究 Riesz 变换、平方函数及边值问题的端点空间。
>
> **证明思路**：以半群平方函数的超水平集进行停时分解。通过 $L$ 的脱靶衰减将局部块构造成分子；反向用原子/分子在半群极大函数中的衰减估计求和。

<!-- boundary_hardy_space_definition -->
> [!Definition]
> **边界 Hardy 空间 Boundary Hardy Space**：在 Lipschitz 域 $\Omega$ 或其边界 $\partial\Omega$ 上，Hardy 空间可由调和或椭圆方程解的非切向极大函数定义。例如边界数据 $f$ 的范数可由其延拓 $u$ 的非切向极大函数
> $$
> \mathcal{N}u(x)=\sup_{(y,t)\in\Gamma(x)}|u(y,t)|
> $$
> 控制，其中 $\Gamma(x)$ 是以 $x\in\partial\Omega$ 为顶点的非切向区域。

<!-- vector_valued_hardy_space -->
> [!Definition]
> **向量值 Hardy 空间 Vector-Valued Hardy Space**：若 $X$ 是 Banach 空间，可将标量值分布替换为 $X$ 值分布，并以 $X$-范数定义极大函数或平方函数。向量值 $H^p$ 的奇异积分理论往往需要 UMD 性、类型余型或其他 Banach 空间几何条件。

<!-- hardy_spaces_generalization_significance -->
> [!Theorem]
> **广义 Hardy 空间的统一作用 Unifying Role of Generalized Hardy Spaces**：上述构造都以“局部尺度分析加消去或半群衰减”替代全局 Fourier 变换；它们使端点估计能够推广到非 Euclidean 度量测度空间、变系数算子及粗糙边界问题。
>
> **证明思路**：经典原子分解依赖平移、缩放与卷积。在一般背景中，分别以加倍几何、适应于算子的近似恒等式和局部化分解取代这些结构，从而保留端点分析所需的核心估计。

> **来源**：Ronald R. Coifman and Guido Weiss, *Analyse Harmonique Non-Commutative sur Certains Espaces Homogènes*, Lecture Notes in Mathematics 242；Steve Hofmann, Guozhen Lu, Dorina Mitrea, Marius Mitrea, and Lixin Yan, *Hardy Spaces Associated to Non-Negative Self-Adjoint Operators Satisfying Davies-Gaffney Estimates*, Memoirs of the AMS 214 (2011)。
