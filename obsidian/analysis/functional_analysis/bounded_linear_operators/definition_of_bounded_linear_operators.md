# 有界线性算子的定义

<!-- functional_analysis_bounded_linear_operator_definition -->
> [!Definition]
> **有界线性算子 Bounded Linear Operator**：设 $X,Y$ 是同一数域 $\mathbb{F}\in\{\mathbb{R},\mathbb{C}\}$ 上的赋范线性空间，$T:X\to Y$ 是线性映射。若存在常数 $C\geq0$，使得
> $$
> \|Tx\|_Y\leq C\|x\|_X
> \qquad(x\in X),
> $$
> 则称 $T$ 为从 $X$ 到 $Y$ 的**有界线性算子 Bounded Linear Operator**。

<!-- functional_analysis_bounded_linear_operator_continuity_equivalence -->
> [!Theorem]
> **有界性与连续性的等价性 Boundedness is Equivalent to Continuity**：设 $T:X\to Y$ 是赋范线性空间间的线性映射。则下列条件等价：
> 1. $T$ 有界；
> 2. $T$ 在 $0$ 处连续；
> 3. $T$ 在 $X$ 的每一点连续；
> 4. 存在 $\delta>0$，使得 $\|x\|_X<\delta$ 时 $\|Tx\|_Y\leq1$。
>
> **证明思路**：有界性直接给出 Lipschitz 连续性。连续性在 $0$ 处经线性性平移为处处连续。若第四条成立，对任意 $x\ne0$ 以适当正数缩放 $x$ 使其落入半径 $\delta$ 的球内，即可得到全局线性估计。

<!-- functional_analysis_bounded_operator_space_definition -->
> [!Definition]
> **有界线性算子空间 Space of Bounded Linear Operators**：从 $X$ 到 $Y$ 的全体有界线性算子构成的线性空间记为
> $$
> \mathcal{L}(X,Y).
> $$
> 当 $X=Y$ 时简记为 $\mathcal{L}(X)$。

<!-- functional_analysis_bounded_linear_operator_basic_properties -->
> [!Proposition]
> **有界线性算子的基本性质 Basic Properties of Bounded Linear Operators**：若 $S,T\in\mathcal{L}(X,Y)$、$a\in\mathbb{F}$，则 $S+T,aT\in\mathcal{L}(X,Y)$。若 $T\in\mathcal{L}(X,Y)$、$S\in\mathcal{L}(Y,Z)$，则 $S\circ T\in\mathcal{L}(X,Z)$。
>
> **证明思路**：分别以 $\|Sx+Tx\|$、$\|aTx\|$ 和 $\|S(Tx)\|$ 应用三角不等式、绝对齐次性和各自的有界性估计。