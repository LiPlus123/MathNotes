# 三角范畴

## 三角范畴的基本数据

<!-- triangulated_category_def -->
> [!Definition]
> **三角范畴 Triangulated Category**：一个**三角范畴**（triangulated category）是一个加性范畴 $\mathcal{T}$，配备：
> 1. 一个自同构函子
> $$
> [1]:\mathcal{T}\to\mathcal{T}
> $$
> 称为**平移函子**（shift, translation）；
> 2. 一类特殊三元组
> $$
> X\xrightarrow{u}Y\xrightarrow{v}Z\xrightarrow{w}X[1]
> $$
> 称为**可分辨三角**（distinguished triangles），满足一组公理（TR1--TR4）。

> **注**：这些公理抽象了短正合列在同调代数中的长正合列行为，但用映射锥和三角替代了普通核像结构。

## 映射锥构造的三角

<!-- cone_triangle_def -->
> [!Definition]
> **映射锥三角 Cone Triangle**：在链同伦范畴中，每个链映射 $f:C_\bullet\to D_\bullet$ 自然给出一个三角
> $$
> C_\bullet\xrightarrow{f}D_\bullet\to \mathrm{Cone}(f)\to C_\bullet[1].
> $$
> 该三角称为由 $f$ 的**映射锥构造**（mapping-cone construction）得到的三角。

## 可分辨三角

<!-- distinguished_triangle_def -->
> [!Definition]
> **可分辨三角 Distinguished Triangle**：在 $K(R\text{-}\mathbf{Mod})$ 或 $D(R\text{-}\mathbf{Mod})$ 中，一个与某个映射锥三角同构的三角
> $$
> X\to Y\to Z\to X[1]
> $$
> 称为**可分辨三角**。
>
> 这些三角在导出范畴中扮演与短正合列近似对应的角色：它们诱导同调长正合列，并编码“某个对象由另外两个对象拼接而来”的信息。

## 三角范畴公理的直观含义

<!-- triangulated_axioms_note -->
> [!Corollary]
> **三角范畴公理的直观作用 Intuition Behind the Triangulated Axioms**：
> - TR1 保证任意态射都能嵌入到一个可分辨三角；
> - TR2 允许三角循环；
> - TR3 说明态射之间的交换图可延拓为三角之间的态射；
> - TR4（八面体公理）控制复合态射的映射锥之间的关系。
>
> **注**：在“导出范畴初步”层级，理解映射锥三角与长正合列的关系比完整掌握 TR1--TR4 更重要。