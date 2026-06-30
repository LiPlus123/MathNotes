# 商拓扑

## 商映射

<!-- quotient_map_definition -->
> [!Definition]
> **商映射 Quotient Map**：设 $(X, \mathcal{T}_X)$ 和 $(Y, \mathcal{T}_Y)$ 是拓扑空间，$q: X \to Y$ 是满射。若对 $V \subseteq Y$，
> $$V \in \mathcal{T}_Y \iff q^{-1}(V) \in \mathcal{T}_X$$
> 则称 $q$ 是**商映射 Quotient Map**。

> **注**：商映射必然连续（由 $\Rightarrow$ 方向）。但连续满射未必是商映射（商映射要求 $q^{-1}(V)$ 开则 $V$ 开）。连续的开满射和连续的闭满射都是商映射。

## 商拓扑

<!-- quotient_topology_definition -->
> [!Definition]
> **商拓扑 Quotient Topology**：设 $(X, \mathcal{T}_X)$ 是拓扑空间，$Y$ 是集合，$q: X \to Y$ 是满射。令
> $$\mathcal{T}_q = \{V \subseteq Y \mid q^{-1}(V) \in \mathcal{T}_X\}$$
> 则 $\mathcal{T}_q$ 是 $Y$ 上的一个拓扑，称为由 $q$ 诱导的 $Y$ 上的**商拓扑 Quotient Topology**。$q$ 在 $\mathcal{T}_q$ 下是商映射，且 $\mathcal{T}_q$ 是使 $q$ 连续的最精细的拓扑。
>
> **证明思路**：验证拓扑公理：$q^{-1}(\varnothing) = \varnothing \in \mathcal{T}_X$，$q^{-1}(Y) = X \in \mathcal{T}_X$；$q^{-1}$ 保持并与交，故任意并和有限交封闭。最精细性：若 $\mathcal{T}'$ 使 $q$ 连续则 $\mathcal{T}' \subseteq \mathcal{T}_q$。

## 商空间

<!-- equivalence_relation_partition -->
> [!Definition]
> **等价关系与商空间 Equivalence Relation and Quotient Space**：设 $(X, \mathcal{T})$ 是拓扑空间，$\sim$ 是 $X$ 上的等价关系，$X/{\sim}$ 是等价类的集合（商集），$[x] = \{y \in X \mid y \sim x\}$ 为 $x$ 的等价类。**自然投影 Natural Projection**
> $$q: X \to X/{\sim},\quad q(x) = [x]$$
> 是满射，$X/{\sim}$ 配备由 $q$ 诱导的商拓扑，称为**商空间 Quotient Space**。

<!-- quotient_space_universal_property -->
> [!Theorem]
> **商空间的泛性质 Universal Property of Quotient Space**：设 $q: X \to X/{\sim}$ 是自然投影，$(Z, \mathcal{T}_Z)$ 是拓扑空间，$f: X \to Z$ 是连续映射且满足 $x \sim y \Rightarrow f(x) = f(y)$（即 $f$ 在等价类上取常值）。则存在唯一的连续映射 $\bar{f}: X/{\sim} \to Z$ 使得 $f = \bar{f} \circ q$，即下图交换：
> $$X \xrightarrow{q} X/{\sim} \xrightarrow{\bar{f}} Z,\quad \bar{f}([x]) = f(x)$$
>
> **证明思路**：$\bar{f}$ 由 $\bar{f}([x]) = f(x)$ 良定义（因 $f$ 在等价类上常值）。连续性：对开集 $V \subseteq Z$，$q^{-1}(\bar{f}^{-1}(V)) = f^{-1}(V)$ 是开集，由商拓扑定义 $\bar{f}^{-1}(V)$ 是开集。

## 粘合空间

<!-- adjunction_space -->
> [!Definition]
> **粘合空间 Adjunction Space**：设 $(X, \mathcal{T}_X)$ 是拓扑空间，$A \subseteq X$，$(Y, \mathcal{T}_Y)$ 是拓扑空间，$f: A \to Y$ 是连续映射。在不相交并 $X \sqcup Y$ 上定义等价关系：$a \sim f(a)$（对所有 $a \in A$）以及各点与自身等价。商空间 $(X \sqcup Y)/{\sim}$ 称为 $X$ 沿 $f$ **粘合 Adjunction** 到 $Y$ 的**粘合空间**，记为 $X \cup_f Y$。

## 例子

<!-- circle_as_quotient -->
> [!Example]+
> **圆 Circle $S^1$**：在 $[0, 1]$ 上定义等价关系：$0 \sim 1$，其余点只与自身等价。则商空间 $[0,1]/{\sim}$ 与单位圆 $S^1 = \{(x,y) \in \mathbb{R}^2 \mid x^2 + y^2 = 1\}$ 同胚，映射 $t \mapsto (\cos 2\pi t,\ \sin 2\pi t)$ 诱导同胚。

<!-- torus_as_quotient -->
> [!Example]+
> **环面 Torus $T^2$**：在正方形 $[0,1]^2$ 上定义等价关系：$(x, 0) \sim (x, 1)$（上下边对应粘合）且 $(0, y) \sim (1, y)$（左右边对应粘合）。商空间 $[0,1]^2/{\sim}$ 称为**环面 Torus**，记为 $T^2$，与 $S^1 \times S^1$ 同胚。

<!-- mobius_band_as_quotient -->
> [!Example]+
> **莫比乌斯带 Möbius Strip**：在 $[0,1]^2$ 上定义等价关系：$(0, y) \sim (1, 1-y)$（左右边反向粘合），其余点与自身等价。商空间 $[0,1]^2/{\sim}$ 称为**莫比乌斯带 Möbius Strip**，是一个不可定向的曲面（带有边界）。

<!-- klein_bottle_as_quotient -->
> [!Example]+
> **克莱因瓶 Klein Bottle**：在 $[0,1]^2$ 上定义等价关系：$(x, 0) \sim (x, 1)$（上下边同向粘合）且 $(0, y) \sim (1, 1-y)$（左右边反向粘合）。商空间 $[0,1]^2/{\sim}$ 称为**克莱因瓶 Klein Bottle**，是一个不可定向的闭曲面，无法无自交地嵌入 $\mathbb{R}^3$。

<!-- sphere_as_quotient -->
> [!Example]+
> **球面 Sphere $S^2$**：将正方形 $[0,1]^2$ 的全部边界 $\partial([0,1]^2)$ 粘合为一个点，即定义等价关系：$\partial([0,1]^2)$ 中所有点互相等价，内部点只与自身等价。商空间 $[0,1]^2/{\sim}$ 与 $S^2 = \{(x,y,z) \in \mathbb{R}^3 \mid x^2+y^2+z^2=1\}$ 同胚。等价地，$S^2 \cong D^2/{\partial D^2}$，其中 $D^2$ 是单位闭圆盘。

<!-- annulus_quotient -->
> [!Example]+
> **圆环的商空间 Quotient Spaces of the Annulus**：圆环（环形区域）$A = \{(x,y) \in \mathbb{R}^2 \mid 1 \leq x^2 + y^2 \leq 4\}$ 有两个边界圆。将内边界圆粘合为一点得到与 $S^2$ 同胚的空间；将内外两个边界圆分别粘合为一点则得到 $S^2 \vee S^2$（两球面的楔和）；将内外边界圆用恒等映射粘合（两个同心圆对应点粘合）则得到与 $T^2$ 同胚的空间。
