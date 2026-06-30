# 表示与群代数模 Representations as Group Algebra Modules

<!-- fg_module_definition -->
> [!Definition]
> **左 $FG$-模 Left $FG$-Module**：设 $FG$ 是群 $G$ 的群代数。一个**左 $FG$-模**是一个 $F$-线性空间 $M$，配备一个 $F$-双线性映射（标量乘法）
> $$FG \times M \to M, \quad (a, v) \mapsto a \cdot v,$$
> 满足：
> 1. $1_{FG} \cdot v = v$（单位元作用为恒等）；
> 2. $(ab) \cdot v = a \cdot (b \cdot v)$（结合律）；
> 3. $(a + b) \cdot v = a \cdot v + b \cdot v$，$a \cdot (v + w) = a \cdot v + a \cdot w$（分配律）；
> 4. $(\lambda a) \cdot v = \lambda (a \cdot v)$ 对所有 $\lambda \in F$ 成立（$F$-线性性）。

<!-- representation_module_correspondence -->
> [!Theorem]
> **表示与 $FG$-模的等价 Equivalence between Representations and $FG$-Modules**：$G$ 的 $F$-表示与左 $FG$-模之间存在自然的一一对应：
>
> **（表示 $\to$ 模）**：设 $\rho: G \to GL(V)$ 是 $G$ 的表示。在 $V$ 上定义 $FG$-模结构：
> $$\left(\sum_{g \in G} a_g \, e_g\right) \cdot v = \sum_{g \in G} a_g \, \rho(g)(v), \quad v \in V.$$
>
> **（模 $\to$ 表示）**：设 $V$ 是左 $FG$-模。对每个 $g \in G$，令 $\rho(g): V \to V$ 为 $\rho(g)(v) = e_g \cdot v$，则 $\rho: G \to GL(V)$ 是 $G$ 的表示。
>
> 上述两个构造互为逆，建立了 $G$ 的 $F$-表示范畴与左 $FG$-模范畴之间的等价。

> **证明思路**：从表示 $\rho$ 出发，可逐一验证 $FG$-模的四条公理（利用 $\rho$ 是群同态）。从 $FG$-模出发，$\rho(gh)(v) = e_{gh} \cdot v = (e_g e_h) \cdot v = e_g \cdot (e_h \cdot v) = \rho(g)(\rho(h)(v))$，故 $\rho$ 是群同态。

<!-- g_map_equals_fg_homomorphism -->
> [!Proposition]
> **$G$-映射等于 $FG$-模同态 $G$-Maps are $FG$-Module Homomorphisms**：设 $V, W$ 是 $G$ 的两个 $F$-表示（对应左 $FG$-模）。$F$-线性映射 $\varphi: V \to W$ 是**表示同态**（即 $G$-等变映射，$\varphi(\rho_V(g)(v)) = \rho_W(g)(\varphi(v))$ 对所有 $g \in G$）当且仅当 $\varphi$ 是 **$FG$-模同态**，即对所有 $a \in FG$，$v \in V$ 有
> $$\varphi(a \cdot v) = a \cdot \varphi(v).$$
> 因此
> $$\mathrm{Hom}_G(V, W) = \mathrm{Hom}_{FG}(V, W).$$

> **注**：通过这一等价，群表示论中的概念可用模论语言重新表述：
> - 子表示 $\leftrightarrow$ $FG$-子模；
> - 表示等价 $\leftrightarrow$ $FG$-模同构；
> - 不可约表示 $\leftrightarrow$ 单 $FG$-模（除 $\{0\}$ 外无非平凡 $FG$-子模）；
> - 完全可约表示 $\leftrightarrow$ 半单 $FG$-模（每个子模均为直和项）。
