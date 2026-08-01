# Riesz 表示定理与 Lax-Milgram 定理

<!-- functional_analysis_riesz_representation_theorem -->
> [!Theorem]
> **Riesz 表示定理 Riesz Representation Theorem**：对 Hilbert 空间 $H$ 的每个连续线性泛函 $f\in H^*$，存在唯一 $y\in H$，使
> $$
> f(x)=\langle y,x\rangle\quad(x\in H),\qquad\|f\|=\|y\|.
> $$
> **证明思路**：若 $f\ne0$，令 $M=\ker f$，将某个 $z\notin M$ 正交分解为 $M$ 分量与 $M^\perp$ 分量；后者张成 $M^\perp$，据此构造 $y$。

<!-- functional_analysis_riesz_representation_application -->
> [!Example]+
> **Riesz 表示的应用 Application of Riesz Representation**：给定 $f\in H^*$，求解 $\langle y,x\rangle=f(x)$ 对所有 $x\in H$ 的唯一向量 $y$，将抽象泛函识别为其 Riesz 代表元；这构成弱形式 PDE 中载荷泛函的向量表示。