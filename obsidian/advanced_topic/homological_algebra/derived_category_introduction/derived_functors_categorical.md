# 导出函子的范畴化定义

## 左右导出函子在导出范畴中的定义

<!-- categorical_derived_functors_def -->
> [!Definition]
> **导出范畴中的导出函子 Derived Functors in the Derived Category**：设 $F:\mathcal{A}\to\mathcal{B}$ 是两个阿贝尔范畴之间的函子。
> - 若 $F$ 是右正合且可用投射分解替代，则其**左导出函子**记作
> $$
> LF: D^-(\mathcal{A})\to D^-(\mathcal{B});
> $$
> - 若 $F$ 是左正合且可用入射分解替代，则其**右导出函子**记作
> $$
> RF: D^+(\mathcal{A})\to D^+(\mathcal{B}).
> $$
> 其值由对对象取投射/入射替代后逐项施加 $F$ 再进入导出范畴得到。

> **注**：经典的 $L_nF$ 与 $R^nF$ 只是 $LF,RF$ 的同调群。导出范畴把“所有次数的导出信息”组织成一个对象，而不再是分散的单个群。

## RHom

<!-- rhom_def -->
> [!Definition]
> **右导出 Hom RHom**：在适当条件下，双变函子
> $$
> \mathrm{Hom}_R(-,-)
> $$
> 在导出范畴中可提升为右导出双函子
> $$
> \mathbf{R}\!\mathrm{Hom}_R(-,-): D(R\text{-}\mathbf{Mod})^{\mathrm{op}}\times D(R\text{-}\mathbf{Mod})\to D(\mathbf{Ab}).
> $$
> 对对象 $A,B$，可通过取 $B$ 的入射替代 $I^\bullet$ 定义
> $$
> \mathbf{R}\!\mathrm{Hom}_R(A,B) := \mathrm{Hom}_R(A,I^\bullet)
> $$
> （在导出范畴意义下）。

## 导出张量积

<!-- derived_tensor_def -->
> [!Definition]
> **导出张量积 Derived Tensor Product**：张量积函子在导出范畴中的左导出记作
> $$
> -\otimes_R^{\mathbf{L}}- : D(\mathbf{Mod}\text{-}R)\times D(R\text{-}\mathbf{Mod})\to D(\mathbf{Ab}).
> $$
> 若 $P_\bullet\to A$ 是投射（或平坦）替代，则
> $$
> A\otimes_R^{\mathbf{L}} B := P_\bullet\otimes_R B.
> $$
>
> **注**：经典的 $\mathrm{Tor}$ 群就是该导出张量积的同调群。

## 范畴化视角的优势

<!-- categorical_derived_functor_advantage -->
> [!Corollary]
> **范畴化视角的优势 Advantages of the Categorical Viewpoint**：在导出范畴中，Ext、Tor、谱序列、映射锥与三角结构可以统一处理。许多只在群层面看似零散的长正合列或平衡性结论，在导出范畴里只是某个函子性构造的直接投影。