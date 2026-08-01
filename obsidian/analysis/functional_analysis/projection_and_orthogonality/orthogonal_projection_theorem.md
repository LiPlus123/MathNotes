# 正交投影定理

<!-- functional_analysis_orthogonal_projection_theorem -->
> [!Theorem]
> **正交投影定理 Orthogonal Projection Theorem**：设 $M$ 是 Hilbert 空间 $H$ 的闭子空间。每个 $x\in H$ 唯一分解为
> $$
> x=P_Mx+(x-P_Mx),\qquad P_Mx\in M,\quad x-P_Mx\in M^\perp.
> $$
> 且 $P_Mx$ 是 $x$ 在 $M$ 中的唯一最佳逼近。
>
> **证明思路**：对闭凸集 $M$ 应用最佳逼近定理；沿任意 $m\in M$ 的实、虚方向微扰最小元，得到残差与 $M$ 正交。

<!-- functional_analysis_orthogonal_direct_sum -->
> [!Corollary]
> **正交直和分解 Orthogonal Direct-Sum Decomposition**：对闭子空间 $M\subseteq H$，
> $$
> H=M\oplus M^\perp.
> $$