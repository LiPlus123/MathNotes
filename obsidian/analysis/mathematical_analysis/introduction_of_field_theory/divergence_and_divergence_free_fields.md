# 有源与无源场

<!-- real_analysis_source_and_divergence_free_field_definition -->
> [!Definition]
> **有源场与无源场 Source and Divergence-Free Fields**：设 $F\in C^1(U,\mathbb{R}^3)$。若 $\operatorname{div}F(a)>0$，则称 $a$ 为源型点；若 $\operatorname{div}F(a)<0$，则称其为汇型点。若 $\operatorname{div}F=0$ 于 $U$，则称 $F$ 为无散场或无源场。

<!-- real_analysis_divergence_free_flux_condition -->
> [!Theorem]
> **无散场的通量判据 Flux Characterization of Divergence-Free Fields**：设 $F\in C^1(U,\mathbb{R}^3)$。则 $\operatorname{div}F=0$ 于 $U$ 当且仅当对每个闭包包含于 $U$ 的有界区域 $\Omega$，均有
> $$
> \iint_{\partial\Omega}F\cdot n\,\mathrm{d}S=0.
> $$
>
> **证明思路**：充分性由 Gauss 定理及散度连续性：若某点散度非零，则足够小球上的散度积分非零。必要性直接由 Gauss 定理。

<!-- real_analysis_divergence_free_field_example -->
> [!Example]+
> **无散场的例子 Example of a Divergence-Free Field**：设 $F(x,y,z)=(-y,x,0)$，则
> $$
> \operatorname{div}F=0.
> $$
> 因而 $F$ 通过任意满足 Gauss 定理条件的闭曲面的净外向通量为零。
>
> **证明思路**：$\partial(-y)/\partial x=0$、$\partial x/\partial y=0$，第三分量也为零。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 12。