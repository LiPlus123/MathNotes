---
title: 核与零度
tags:
  - linear_algebra
  - linear_operator
---

# 核与零度

<!-- kernel_definition -->
> [!Definition]
> **核 Kernel**（又称**零空间 Null Space**）：设 $T: V \to W$ 是线性映射，$T$ 的**核**定义为
> $$
> \ker T = \{v \in V \mid T(v) = \mathbf{0}\}.
> $$

> **注**：$\ker T$ 是 $V$ 的子空间。验证：若 $u, v \in \ker T$，$\lambda, \mu \in F$，则 $T(\lambda u + \mu v) = \lambda T(u) + \mu T(v) = \mathbf{0}$，故 $\lambda u + \mu v \in \ker T$。

<!-- nullity_definition -->
> [!Definition]
> **零度 Nullity**：设 $T: V \to W$ 是有限维线性空间之间的线性映射，$T$ 的**零度**定义为核的维数：
> $$
> \mathrm{null}(T) = \dim(\ker T).
> $$

<!-- kernel_and_injectivity -->
> [!Theorem]
> **线性映射单射的充要条件**：线性映射 $T: V \to W$ 是单射，当且仅当 $\ker T = \{\mathbf{0}\}$。

> **证明思路**：
> - 必要性：若 $T$ 是单射，则 $T(v) = \mathbf{0} = T(\mathbf{0})$ 蕴含 $v = \mathbf{0}$，故 $\ker T = \{\mathbf{0}\}$。
> - 充分性：若 $\ker T = \{\mathbf{0}\}$，设 $T(u) = T(v)$，则 $T(u - v) = \mathbf{0}$，从而 $u - v \in \ker T = \{\mathbf{0}\}$，即 $u = v$。

<!-- isomorphism_criterion_kernel -->
> [!Theorem]
> **线性同构的充要条件**：设 $V, W$ 是数域 $F$ 上有限维线性空间且 $\dim V = \dim W$，则线性映射 $T: V \to W$ 是线性同构，当且仅当 $\ker T = \{\mathbf{0}\}$，当且仅当 $T$ 是满射。

> **证明思路**：由秩-零定理（见下节）知 $\dim V = \mathrm{null}(T) + \mathrm{rank}(T)$。若 $\ker T = \{\mathbf{0}\}$，则 $\mathrm{null}(T) = 0$，故 $\mathrm{rank}(T) = \dim V = \dim W$，即 $\mathrm{Im}\, T = W$，$T$ 为满射，从而为双射。另一方向类似。

<!-- kernel_of_composition -->
> [!Theorem]
> **复合映射的核**：设 $T: V \to W$，$S: W \to U$ 为线性映射，则
> $$
> \ker T \subseteq \ker(S \circ T).
> $$
> 若 $S$ 是单射，则 $\ker(S \circ T) = \ker T$。

> **证明思路**：若 $v \in \ker T$，则 $(S \circ T)(v) = S(T(v)) = S(\mathbf{0}) = \mathbf{0}$，故 $v \in \ker(S \circ T)$。若 $S$ 是单射，则 $(S \circ T)(v) = \mathbf{0}$ 蕴含 $S(T(v)) = \mathbf{0}$，由单射性得 $T(v) = \mathbf{0}$，即 $v \in \ker T$。
