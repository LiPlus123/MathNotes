# 投影算子

<!-- functional_analysis_projection_operator_definition -->
> [!Definition]
> **投影算子 Projection Operator**：设 $X$ 是线性空间。线性算子 $P:X\to X$ 若满足 $P^2=P$，则称为投影算子。

<!-- functional_analysis_projection_kernel_image_decomposition -->
> [!Theorem]
> **核像分解 Kernel-Image Decomposition**：若 $P$ 是投影算子，则
> $$
> X=\operatorname{Im}P\oplus\ker P,
> \qquad x=Px+(x-Px).
> $$
> **证明思路**：$Px\in\operatorname{Im}P$，且 $P(x-Px)=0$；交集中的元素同时满足 $u=Pu=0$。

<!-- functional_analysis_projection_operator_properties -->
> [!Proposition]
> **投影算子的性质 Properties of Projection Operators**：$P$ 在 $\operatorname{Im}P$ 上为恒等映射，在 $\ker P$ 上为零映射；反之，任意直和分解 $X=M\oplus N$ 唯一确定一个像为 $M$、核为 $N$ 的投影。