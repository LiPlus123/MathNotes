# 有界线性算子的范数

<!-- functional_analysis_operator_norm_definition -->
> [!Definition]
> **算子范数 Operator Norm**：设 $T\in\mathcal{L}(X,Y)$。定义
> $$
> \|T\|=\sup_{\|x\|_X\leq1}\|Tx\|_Y.
> $$
> 称 $\|T\|$ 为 $T$ 的**算子范数 Operator Norm**。

<!-- functional_analysis_operator_norm_equivalent_definitions -->
> [!Proposition]
> **算子范数的等价定义 Equivalent Definitions of the Operator Norm**：对 $T\in\mathcal{L}(X,Y)$，有
> $$
> \|T\|=\sup_{\|x\|_X=1}\|Tx\|_Y
> =\sup_{x\ne0}\frac{\|Tx\|_Y}{\|x\|_X}
> =\inf\{C\geq0:\|Tx\|_Y\leq C\|x\|_X,\ \forall x\in X\}.
> $$
>
> **证明思路**：对非零向量 $x$ 以 $x/\|x\|_X$ 归一化即可在前三个上确界之间转换；最后一个集合恰为全体有界常数，其下确界由上确界定义确定。

<!-- functional_analysis_operator_norm_basic_inequality -->
> [!Theorem]
> **算子范数基本不等式 Fundamental Operator-Norm Inequality**：对任意 $T\in\mathcal{L}(X,Y)$ 与 $x\in X$，
> $$
> \|Tx\|_Y\leq\|T\|\,\|x\|_X.
> $$
>
> **证明思路**：$x=0$ 时显然；$x\ne0$ 时，对单位向量 $x/\|x\|_X$ 应用算子范数定义。

<!-- functional_analysis_operator_norm_submultiplicativity -->
> [!Theorem]
> **算子范数的次乘性 Submultiplicativity of the Operator Norm**：若 $T\in\mathcal{L}(X,Y)$、$S\in\mathcal{L}(Y,Z)$，则
> $$
> \|S\circ T\|\leq\|S\|\,\|T\|.
> $$
>
> **证明思路**：由基本不等式，$\|S(Tx)\|_Z\leq\|S\|\|Tx\|_Y\leq\|S\|\|T\|\|x\|_X$；对所有单位向量取上确界。

<!-- functional_analysis_operator_norm_properties -->
> [!Proposition]
> **算子范数是范数 The Operator Norm is a Norm**：在 $\mathcal{L}(X,Y)$ 上，算子范数满足
> $$
> \|S+T\|\leq\|S\|+\|T\|,
> \qquad\|aT\|=|a|\|T\|,
> \qquad\|T\|=0\Longleftrightarrow T=0.
> $$
>
> **证明思路**：前两式逐点应用范数的三角不等式与齐次性后取上确界；若 $\|T\|=0$，基本不等式给出 $Tx=0$ 对所有 $x$ 成立。