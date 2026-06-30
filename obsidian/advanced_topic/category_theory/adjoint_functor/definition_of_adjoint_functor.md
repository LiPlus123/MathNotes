# 伴随函子的定义

## 通过 Hom 集自然同构定义伴随

<!-- adjunction_hom_def -->
> [!Definition]
> **伴随函子 Adjoint Functors（Hom 集定义）**：设 $F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{C}$ 为函子。若存在双射族
> $$
> \varphi_{A, B}: \mathrm{Hom}_{\mathcal{D}}(F(A), B) \xrightarrow{\sim} \mathrm{Hom}_{\mathcal{C}}(A, G(B)),
> $$
> 关于 $A \in \mathrm{Ob}(\mathcal{C})$ 与 $B \in \mathrm{Ob}(\mathcal{D})$ 均**自然**（即 $\varphi$ 是函子 $\mathcal{C}^{\mathrm{op}} \times \mathcal{D} \to \mathbf{Set}$ 的自然同构），则称 $F$ 为 $G$ 的**左伴随**，$G$ 为 $F$ 的**右伴随**，记作
> $$
> F \dashv G.
> $$
> 三元组 $(F, G, \varphi)$（或简称 $(F, G)$）称为一个**伴随**（adjunction）。

> **注**：自然性条件明确为：
> - 关于 $A$ 的自然性：对 $a: A' \to A$，$\varphi_{A', B}(f \circ F(a)) = \varphi_{A, B}(f) \circ a$；
> - 关于 $B$ 的自然性：对 $b: B \to B'$，$\varphi_{A, B'}(b \circ f) = G(b) \circ \varphi_{A, B}(f)$。

<!-- adjunction_notation -->
> [!Definition]
> **伴随对的记法 Notation for Adjoint Pairs**：伴随 $F \dashv G$ 也常记作：
> $$
> F: \mathcal{C} \rightleftharpoons \mathcal{D} : G \qquad \text{或} \qquad \mathcal{C} \underset{G}{\overset{F}{\rightleftharpoons}} \mathcal{D}.
> $$
> 对应 $f: F(A) \to B$ 的 $\varphi_{A,B}(f): A \to G(B)$ 称为 $f$ 的**转置**（transpose），记为 $\tilde{f}$；反之 $\varphi_{A,B}^{-1}(g)$ 为 $g: A \to G(B)$ 的转置，记为 $\tilde{g}$。

## 基本性质

<!-- adjunction_compose -->
> [!Theorem]
> **伴随的复合 Composition of Adjunctions**：若 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{C}$）且 $F' \dashv G'$（$F': \mathcal{D} \to \mathcal{E}$，$G': \mathcal{E} \to \mathcal{D}$），则 $(F' \circ F) \dashv (G \circ G')$。
>
> **证明思路**：$\mathrm{Hom}(F'F(A), C) \cong \mathrm{Hom}(F(A), G'(C)) \cong \mathrm{Hom}(A, GG'(C))$，自然性由两次自然同构的复合保证。

<!-- identity_is_self_adjoint -->
> [!Example]+
> **恒等函子的伴随**：恒等函子 $\mathrm{Id}_{\mathcal{C}}$ 自伴随于自身：$\mathrm{Id}_{\mathcal{C}} \dashv \mathrm{Id}_{\mathcal{C}}$，因为 $\mathrm{Hom}(\mathrm{Id}(A), B) = \mathrm{Hom}(A, B) = \mathrm{Hom}(A, \mathrm{Id}(B))$ 自然。
