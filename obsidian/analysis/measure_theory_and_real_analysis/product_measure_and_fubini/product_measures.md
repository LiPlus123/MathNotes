# 乘积测度

## 乘积可测空间与截面

<!-- product_measurable_space_definition -->
> [!Definition]
> **乘积可测空间 Product Measurable Space**：设 $(X,\mathcal{A})$ 与 $(Y,\mathcal{B})$ 为可测空间。乘积集合 $X\times Y$ 配备乘积 $\sigma$ 代数
> $$
> \mathcal{A}\otimes\mathcal{B}
> =\sigma\bigl(\{A\times B:A\in\mathcal{A},\ B\in\mathcal{B}\}\bigr)
> $$
> 后得到的可测空间 $(X\times Y,\mathcal{A}\otimes\mathcal{B})$ 称为乘积可测空间。

<!-- section_of_set_definition -->
> [!Definition]
> **集合的截面 Section of a Set**：对 $E\subseteq X\times Y$，$x\in X$ 与 $y\in Y$，定义 $E$ 的 $x$-截面和 $y$-截面为
> $$
> E_x=\{y\in Y:(x,y)\in E\},
> \qquad
> E^y=\{x\in X:(x,y)\in E\}.
> $$

<!-- measurable_sections_theorem -->
> [!Theorem]
> **可测集截面定理 Measurable Sections Theorem**：若 $E\in\mathcal{A}\otimes\mathcal{B}$，则对每个 $x\in X$ 与 $y\in Y$，均有
> $$
> E_x\in\mathcal{B},
> \qquad
> E^y\in\mathcal{A}.
> $$
>
> **证明思路**：满足截面可测性的集合族包含所有可测矩形；截面运算与补集、可数并可交换，故该集合族是包含矩形的 $\sigma$ 代数。

## 乘积测度的构造

<!-- product_measure_theorem -->
> [!Theorem]
> **乘积测度 Product Measure**：设 $(X,\mathcal{A},\mu)$ 与 $(Y,\mathcal{B},\nu)$ 为 $\sigma$ 有限测度空间。则存在唯一的测度
> $$
> \mu\otimes\nu
> $$
> 定义在 $(X\times Y,\mathcal{A}\otimes\mathcal{B})$ 上，使得对任意 $A\in\mathcal{A}$、$B\in\mathcal{B}$，
> $$
> (\mu\otimes\nu)(A\times B)=\mu(A)\nu(B).
> $$
> 其中乘积按非负广义实数的约定理解。
>
> **证明思路**：在可测矩形构成的半环上以 $\mu(A)\nu(B)$ 定义预测度，并将有限测度的可数覆盖分解用于验证 $\sigma$ 有限性；再由 Carathéodory 扩张定理得到测度。唯一性由矩形构成的 $\pi$ 系、$\pi$-$\lambda$ 定理及 $\sigma$ 有限性导出。

<!-- product_measure_section_formula -->
> [!Theorem]
> **乘积测度的截面公式 Section Formula for Product Measure**：在乘积测度的条件下，对每个 $E\in\mathcal{A}\otimes\mathcal{B}$，函数
> $$
> x\mapsto\nu(E_x),
> \qquad
> y\mapsto\mu(E^y)
> $$
> 分别是 $\mathcal{A}$-可测和 $\mathcal{B}$-可测，且
> $$
> (\mu\otimes\nu)(E)
> =\int_X\nu(E_x)\,d\mu(x)
> =\int_Y\mu(E^y)\,d\nu(y).
> $$
>
> **证明思路**：先对矩形直接验证：$(A\times B)_x$ 仅在 $x\in A$ 时为 $B$。再令满足结论的集合构成 Dynkin 系，并借助可测矩形的 $\pi$ 系性质及 $\pi$-$\lambda$ 定理推广到整个乘积 $\sigma$ 代数。

<!-- sigma_finiteness_of_product_measure -->
> [!Proposition]
> **乘积测度的 $\sigma$ 有限性 $\sigma$-Finiteness of Product Measure**：若 $\mu$ 与 $\nu$ 都是 $\sigma$ 有限测度，则 $\mu\otimes\nu$ 也是 $\sigma$ 有限测度。
>
> **证明思路**：取 $X=\bigcup_nX_n$、$Y=\bigcup_mY_m$，其中每个 $X_n,Y_m$ 的测度有限。则 $\{X_n\times Y_m\}_{n,m\geq1}$ 可数地覆盖 $X\times Y$，且每个矩形的乘积测度有限。

<!-- product_lebesgue_measure_example -->
> [!Example]+
> **平面 Lebesgue 测度 Planar Lebesgue Measure**：一维 Lebesgue 测度 $m$ 与自身的乘积 $m\otimes m$ 是 $\mathbb{R}^2$ 上的二维 Lebesgue 测度。特别地，对任意矩形 $A\times B$，
> $$
> (m\otimes m)(A\times B)=m(A)m(B).
> $$
> 例如，矩形 $[a,b]\times[c,d]$ 的面积为 $(b-a)(d-c)$。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 2.6；Donald L. Cohn, *Measure Theory*, 2nd ed., Chapter 5。
