# 正交投影算子

<!-- functional_analysis_orthogonal_projection_operator_definition -->
> [!Definition]
> **正交投影算子 Orthogonal Projection Operator**：闭子空间 $M\subseteq H$ 的正交投影 $P_M:H\to H$ 由正交投影定理定义。

<!-- functional_analysis_orthogonal_projection_operator_properties -->
> [!Theorem]
> **正交投影算子的性质 Properties of Orthogonal Projection Operators**：
> $$
> P_M^2=P_M,\qquad P_M^*=P_M,\qquad\|P_M\|=1\ (M\ne\{0\}).
> $$
> 并且 $\ker P_M=M^\perp$，$\operatorname{Im}P_M=M$。
>
> **证明思路**：由正交分解逐项验证。勾股恒等式给出 $\|P_Mx\|\leq\|x\|$，而非零 $m\in M$ 满足 $P_Mm=m$。