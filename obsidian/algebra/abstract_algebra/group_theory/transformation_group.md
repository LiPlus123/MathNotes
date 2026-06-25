# 变换与变换群

## 变换的定义

<!-- transformation_def -->
> [!Definition]
> **变换 Transformation**：设 $X$ 为非空集合。从 $X$ 到自身的映射 $f: X \to X$ 称为 $X$ 上的一个**变换**。若 $f$ 为双射，则称 $f$ 为 $X$ 上的一个**可逆变换**（或**双射变换**）。

<!-- transformation_composition -->
> [!Definition]
> **变换的复合 Composition of Transformations**：设 $f, g: X \to X$ 为 $X$ 上的两个变换，定义其**复合** $f \circ g: X \to X$ 为
> $$
> (f \circ g)(x) = f(g(x)),\quad x \in X
> $$
> 变换的复合满足结合律：$(f \circ g) \circ h = f \circ (g \circ h)$。

## 变换群

<!-- transformation_group_def -->
> [!Definition]
> **变换群 Transformation Group**：设 $X$ 为非空集合，$G$ 为 $X$ 上某些可逆变换构成的非空集合。若 $G$ 在变换复合运算下构成群（即对复合封闭、含恒等变换、每个元素有逆变换），则称 $G$ 为 $X$ 上的一个**变换群**。

<!-- symmetric_group_of_set -->
> [!Definition]
> **集合的对称群 Symmetric Group of a Set**：设 $X$ 为非空集合，$X$ 上所有可逆变换（双射）的全体在复合运算下构成群，称为 $X$ 的**对称群**，记作 $\mathrm{Sym}(X)$。

> **注**：恒等映射 $\mathrm{id}_X$ 是 $\mathrm{Sym}(X)$ 的单位元；$f$ 的逆变换即为 $f$ 的逆映射 $f^{-1}$。任何变换群 $G$ 均满足 $G \leq \mathrm{Sym}(X)$。

## 例子

<!-- transformation_group_example_dihedral -->
> [!Example]+
> **正多边形的对称群 Symmetry Group of Regular Polygon**：正 $n$ 边形的所有对称变换（旋转与反射）构成一个阶为 $2n$ 的变换群，称为**二面体群**，记作 $D_n$（或 $D_{2n}$）。$D_n$ 由旋转 $r$（转角 $2\pi/n$）和一个反射 $s$ 生成，满足关系
> $$
> r^n = e,\quad s^2 = e,\quad srs^{-1} = r^{-1}
> $$

<!-- transformation_group_example_rotation -->
> [!Example]+
> **平面旋转群 Rotation Group of Plane**：平面 $\mathbb{R}^2$ 上以原点为中心的所有旋转变换构成一个变换群，与圆群 $(\mathbb{R}/\mathbb{Z}, +)$（或单位复数圆 $U(1)$）同构。
