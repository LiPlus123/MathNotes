# 形变收缩

## 收缩

<!-- retraction_definition -->
> [!Definition]
> **收缩与收缩核 Retraction and Retract**：设 $A \subseteq X$ 是拓扑空间的子空间，$i: A \hookrightarrow X$ 是含入映射。若存在连续映射 $r: X \to A$，使得 $r \circ i = \mathrm{id}_A$（即对所有 $a \in A$，$r(a) = a$），则称 $r$ 是从 $X$ 到 $A$ 的**收缩 Retraction**，称 $A$ 是 $X$ 的**收缩核 Retract**。

> **注**：收缩 $r: X \to A$ 满足 $r^2 = r$（视 $r$ 为 $X$ 到自身的映射），即 $r$ 是幂等的连续映射。收缩核是比形变收缩核更弱的概念，它不要求形变过程，仅要求存在"连续投影"。

## 形变收缩

<!-- deformation_retraction_definition -->
> [!Definition]
> **形变收缩 Deformation Retraction**：设 $A \subseteq X$，$i: A \hookrightarrow X$ 是含入映射，$r: X \to A$ 是收缩。若 $i \circ r \simeq \mathrm{id}_X$，即存在连续映射 $H: X \times I \to X$，使得：
> $$H(x, 0) = x \quad \forall x \in X, \qquad H(x, 1) \in A \quad \forall x \in X, \qquad H(a, 1) = a \quad \forall a \in A,$$
> 则称 $H$ 是从 $X$ 到 $A$ 的**形变收缩同伦 Deformation Retraction**，称 $A$ 是 $X$ 的**形变收缩核 Deformation Retract**。

<!-- strong_deformation_retraction_definition -->
> [!Definition]
> **强形变收缩 Strong Deformation Retraction**：若形变收缩同伦 $H: X \times I \to X$ 还满足对所有 $a \in A$ 和所有 $t \in I$：
> $$H(a, t) = a,$$
> 则称 $H$ 是从 $X$ 到 $A$ 的**强形变收缩同伦 Strong Deformation Retraction**，称 $A$ 是 $X$ 的**强形变收缩核 Strong Deformation Retract**。

> **注**：强形变收缩要求形变过程中 $A$ 中各点始终不动（而不仅仅是在 $t=1$ 时不动）。大多数常见的几何例子实际上都满足强形变收缩条件。

## 形变收缩与同伦等价

<!-- deformation_retract_implies_homotopy_equivalence -->
> [!Theorem]
> **形变收缩核同伦等价 Deformation Retract Implies Homotopy Equivalence**：若 $A$ 是拓扑空间 $X$ 的形变收缩核，则含入映射 $i: A \hookrightarrow X$ 是同伦等价，从而 $A \simeq X$。
>
> **证明思路**：设 $r: X \to A$ 是相应的收缩，$H$ 是形变收缩同伦。则：
> - $r \circ i = \mathrm{id}_A$（精确等式，由收缩定义）；
> - $i \circ r \simeq \mathrm{id}_X$（$H$ 即为所需同伦，$H(x,0) = x$，$H(x,1) = r(x) \in A$）。
>
> 故 $i$ 是同伦等价，$r$ 是 $i$ 的同伦逆。

## 例子

<!-- disk_contracts_to_point -->
> [!Example]+
> **圆盘强形变收缩到原点 Disk Strongly Deformation Retracts to the Origin**：单位闭球 $D^n = \{x \in \mathbb{R}^n \mid \|x\| \leq 1\}$ 强形变收缩到原点 $\{0\}$，从而 $D^n \simeq \{0\}$（即 $D^n$ 可缩）。
>
> **证明思路**：令 $H: D^n \times I \to D^n$，$H(x, t) = (1-t)x$。则 $H$ 连续，$H(x, 0) = x$，$H(x, 1) = 0$，且 $H(0, t) = 0$ 对所有 $t \in I$ 成立，满足强形变收缩条件。

<!-- mobius_band_contracts_to_circle -->
> [!Example]+
> **Möbius 带强形变收缩到中心圆 Möbius Band Strongly Deformation Retracts to Its Central Circle**：Möbius 带 $M$ 强形变收缩到其中心圆 $S^1$，从而 $M \simeq S^1$。
>
> **证明思路**：将 Möbius 带参数化为 $M = ([0,1] \times [-1,1]) / {\sim}$，其中 $(0, s) \sim (1, -s)$。中心圆为 $S^1 = [0,1] \times \{0\} / {\sim}$（含入 $i: S^1 \hookrightarrow M$）。定义形变 $H: M \times I \to M$，$H([(u, s)], t) = [(u, (1-t)s)]$。验证：此映射与等价关系相容（因为 $(1-t)$ 因子保持 $s$ 的符号反转关系）；$H([(u,s)],0) = [(u,s)]$，$H([(u,s)],1) = [(u,0)] \in S^1$，且 $H([(u,0)],t) = [(u,0)]$ 对所有 $t$ 成立，即为强形变收缩。
