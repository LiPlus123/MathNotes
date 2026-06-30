# 与经典导出函子的关系

## 经典 Ext 与 RHom 的同调群

<!-- ext_as_cohomology_of_rhom -->
> [!Theorem]
> **Ext 是 RHom 的上同调 Classical Ext as Cohomology of RHom**：对适当对象 $A,B$，有自然同构
> $$
> \mathrm{Ext}_R^n(A,B) \cong H^n\bigl(\mathbf{R}\!\mathrm{Hom}_R(A,B)\bigr), \quad n\ge0.
> $$
>
> **证明思路**：取 $B$ 的入射分解 $I^\bullet$，则
> $$
> \mathbf{R}\!\mathrm{Hom}_R(A,B)\simeq \mathrm{Hom}_R(A,I^\bullet),
> $$
> 其上同调按定义就是 $\mathrm{Ext}_R^n(A,B)$。

## 经典 Tor 与导出张量积的同调群

<!-- tor_as_homology_of_derived_tensor -->
> [!Theorem]
> **Tor 是导出张量积的同调 Classical Tor as Homology of the Derived Tensor Product**：对适当右 $R$-模 $A$ 与左 $R$-模 $B$，有自然同构
> $$
> \mathrm{Tor}_n^R(A,B) \cong H_n\bigl(A\otimes_R^{\mathbf{L}} B\bigr), \quad n\ge0.
> $$
>
> **证明思路**：取 $A$ 的投射或平坦替代 $P_\bullet\to A$，则
> $$
> A\otimes_R^{\mathbf{L}} B \simeq P_\bullet\otimes_R B,
> $$
> 其同调按定义就是 $\mathrm{Tor}_n^R(A,B)$。

## 经典导出函子作为同调截面

<!-- classical_derived_functors_as_shadows -->
> [!Proposition]
> **经典导出函子是导出范畴对象的同调“影子” Classical Derived Functors as Homological Shadows**：经典的
> $$
> L_nF,\quad R^nF,\quad \mathrm{Ext}_R^n,\quad \mathrm{Tor}_n^R
> $$
> 都可以看作某个导出范畴对象施加同调函子 $H^n$ 或 $H_n$ 后得到的数值不变量。导出范畴对象本身保留了比单个次数更多的结构信息。

## 与前面章节的对应

<!-- relation_to_previous_sections_note -->
> [!Corollary]
> **与经典理论的对应 Relation to the Earlier Classical Theory**：前面各章通过投射/入射/平坦分解定义的导出函子，在导出范畴中统一为 $LF,RF,\mathbf{R}\!\mathrm{Hom},-\otimes_R^{\mathbf{L}}-$。因此，导出范畴并不是替代经典导出函子，而是提供其最自然、最统一的背景。