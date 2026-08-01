# Helmholtz 分解

<!-- real_analysis_helmholtz_decomposition_theorem -->
> [!Theorem]
> **Helmholtz 分解定理 Helmholtz Decomposition Theorem**：设 $F\in C^2(\mathbb{R}^3,\mathbb{R}^3)$ 及其一阶导数在无穷远处衰减足够快，使下列积分收敛且分部积分的无穷远边界项消失。令
> $$
> \Phi(x)=\frac{1}{4\pi}\int_{\mathbb{R}^3}\frac{\operatorname{div}F(y)}{\|x-y\|}\,\mathrm{d}y,
> \qquad
> A(x)=\frac{1}{4\pi}\int_{\mathbb{R}^3}\frac{\operatorname{curl}F(y)}{\|x-y\|}\,\mathrm{d}y.
> $$
> 则
> $$
> F=-\nabla\Phi+\operatorname{curl}A.
> $$
> 前一项无旋，后一项无散。
>
> **证明思路**：利用 $-\Delta(1/(4\pi\|x-y\|))=\delta_y$ 的基本解性质，将向量恒等式与分部积分结合，恢复 $F$。

<!-- real_analysis_helmholtz_decomposition_components -->
> [!Definition]
> **Helmholtz 分解的无旋部分与无散部分 Irrotational and Solenoidal Components**：在 Helmholtz 分解中，
> $$
> F_{\mathrm{irr}}=-\nabla\Phi,
> \qquad F_{\mathrm{sol}}=\operatorname{curl}A
> $$
> 分别称为 $F$ 的无旋部分与无散部分，且 $F=F_{\mathrm{irr}}+F_{\mathrm{sol}}$。

<!-- real_analysis_helmholtz_decomposition_uniqueness -->
> [!Theorem]
> **Helmholtz 分解的唯一性 Uniqueness of Helmholtz Decomposition**：在上述全空间衰减条件下，若要求两个分量也在无穷远处衰减，则由 $\operatorname{div}F$、$\operatorname{curl}F$ 唯一确定 $F_{\mathrm{irr}}$ 和 $F_{\mathrm{sol}}$。位势 $\Phi$ 可差一个常数，向量位势 $A$ 仍有规范自由度。
>
> **证明思路**：两个分解之差同时无散、无旋，并在无穷远处消失；相应调和势的唯一性迫使场差为零。

<!-- real_analysis_helmholtz_decomposition_scope_note -->
> [!Definition]
> **Helmholtz 分解的适用范围 Scope of Helmholtz Decomposition**：有界区域上的 Helmholtz 分解需要配合边界条件，并可能出现由区域拓扑决定的调和场项；因此不能将全空间的唯一性结论直接移植到任意区域。

> **注**：本小节参见 Jerrold E. Marsden and Anthony J. Tromba, *Vector Calculus*, 6th ed., Chapter 6。