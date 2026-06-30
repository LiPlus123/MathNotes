# 映射柱与映射锥

## 映射柱

<!-- mapping_cylinder_definition -->
> [!Definition]
> **映射柱 Mapping Cylinder**：设 $f: X \to Y$ 是连续映射。定义**映射柱 Mapping Cylinder** $M_f$ 为：
> $$M_f = (X \times I \sqcup Y) \Big/ {\sim},$$
> 其中等价关系 $\sim$ 由 $(x, 1) \sim f(x)$（对所有 $x \in X$）生成，商空间配备商拓扑。

> **注**：$M_f$ 中有两个自然子空间：
> - $X \times \{0\}$（通过映射 $x \mapsto [(x, 0)]$ 嵌入），称为映射柱的**底 Bottom**；
> - $Y$（通过含入 $i_Y: Y \hookrightarrow M_f$，$y \mapsto [y]$ 嵌入），称为映射柱的**顶 Top**。
>
> 这两个嵌入均为拓扑嵌入。映射柱 $M_f$ 直观上是将 $X$ 通过 $f$ "粘合"到 $Y$ 上，同时在粘合过程中保留了一个 $X$ 的副本和粘合的轨迹（柱体 $X \times I$）。

## 映射锥

<!-- mapping_cone_definition -->
> [!Definition]
> **映射锥 Mapping Cone**：设 $f: X \to Y$ 是连续映射，$M_f$ 是其映射柱。定义**映射锥 Mapping Cone** $C_f$ 为：
> $$C_f = M_f \Big/ (X \times \{0\}),$$
> 即将映射柱底部的 $X \times \{0\}$ 坍缩（collapse）为单点所得的商空间。

> **注**：当 $Y = \{*\}$ 为单点空间时，$f$ 是唯一的常值映射，此时 $M_f \cong X \times I / (X \times \{1\})$（即 $X$ 的锥 $CX$），$C_f$ 则是 $CX$ 再将底面 $X \times \{0\}$ 坍缩，从而 $C_f \cong \Sigma X$（$X$ 的约化悬挂）。一般情况下，$C_f$ 可视为将 $X$ 的锥体 $CX$ 沿 $f$ 粘合到 $Y$ 上所得的空间。

## 映射柱给出形变收缩

<!-- mapping_cylinder_deformation_retract -->
> [!Theorem]
> **映射柱形变收缩到余域 Mapping Cylinder Deformation Retracts to the Codomain**：设 $f: X \to Y$，$i_Y: Y \hookrightarrow M_f$ 是自然含入。则 $Y$ 是 $M_f$ 的强形变收缩核，从而 $M_f \simeq Y$。
>
> **证明思路**：定义 $H: M_f \times I \to M_f$ 如下：
> $$H([(x, s)], t) = [(x, s + t(1-s))], \quad H([y], t) = [y].$$
> 验证：$H$ 与等价关系 $\sim$ 相容（当 $s = 1$ 时，$[(x, 1)] = [f(x)]$，$H([f(x)], t) = [f(x)]$，与 $H([(x,1)], t) = [(x, 1)]$ 一致）；$H(\cdot, 0) = \mathrm{id}_{M_f}$；$H([(x, s)], 1) = [(x, 1)] = [f(x)] \in Y$，$H([y], 1) = [y] \in Y$；且 $H([y], t) = [y]$ 对所有 $t \in I$ 成立（$Y$ 中各点在整个形变过程中不动），故满足强形变收缩条件。

## 把任意映射换为嵌入

<!-- mapping_cylinder_factorization -->
> [!Theorem]
> **映射柱分解定理 Factorization via Mapping Cylinder**：任意连续映射 $f: X \to Y$ 可分解为：
> $$X \xrightarrow{j} M_f \xrightarrow{r} Y,$$
> 其中 $j: X \to M_f$，$j(x) = [(x, 0)]$ 是闭嵌入，$r: M_f \to Y$ 是同伦等价（且满足 $r \circ j = f$）。
>
> **证明思路**：$j$ 是嵌入：$X \times \{0\}$ 在 $X \times I$ 中是闭子集，且商映射将 $X \times \{0\}$ 单射地嵌入 $M_f$（因为等价关系仅粘合 $X \times \{1\}$ 与 $Y$），故 $j$ 是闭嵌入。定义收缩 $r: M_f \to Y$ 为 $r([(x, s)]) = f(x)$（对所有 $x \in X$，$s \in I$），$r([y]) = y$（对所有 $y \in Y$）；由等价关系的相容性 $r$ 连续，且 $r \circ i_Y = \mathrm{id}_Y$；结合映射柱形变收缩到余域定理，$r$ 是同伦等价。最后 $r \circ j(x) = r([(x,0)]) = f(x)$，故 $r \circ j = f$。
