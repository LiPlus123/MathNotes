# 函子的定义

## 协变函子

<!-- functor_def -->
> [!Definition]
> **函子 Functor**：设 $\mathcal{C}, \mathcal{D}$ 为范畴。一个（协变）**函子** $F: \mathcal{C} \to \mathcal{D}$ 由如下数据构成：
> 1. **对象映射**：对每个对象 $A \in \mathrm{Ob}(\mathcal{C})$，指定一个对象 $F(A) \in \mathrm{Ob}(\mathcal{D})$；
> 2. **态射映射**：对每对对象 $A, B \in \mathrm{Ob}(\mathcal{C})$ 与每个态射 $f \in \mathrm{Hom}_{\mathcal{C}}(A, B)$，指定一个态射 $F(f) \in \mathrm{Hom}_{\mathcal{D}}(F(A), F(B))$。
>
> 这些数据须满足：
> - **保持恒等**：对每个对象 $A \in \mathrm{Ob}(\mathcal{C})$，$F(\mathrm{id}_A) = \mathrm{id}_{F(A)}$；
> - **保持复合**：对任意可复合的态射 $f: A \to B$ 与 $g: B \to C$，
> $$
> F(g \circ f) = F(g) \circ F(f).
> $$

> **注**：函子在对象与态射上的作用 $F(A), F(f)$ 也常简记为 $FA, Ff$。

## 反变函子

<!-- contravariant_functor_def -->
> [!Definition]
> **反变函子 Contravariant Functor**：从范畴 $\mathcal{C}$ 到范畴 $\mathcal{D}$ 的**反变函子**定义为从 $\mathcal{C}^{\mathrm{op}}$ 到 $\mathcal{D}$ 的（协变）函子 $F: \mathcal{C}^{\mathrm{op}} \to \mathcal{D}$；等价地，反变函子由如下数据构成：
> 1. 对象映射 $A \mapsto F(A)$；
> 2. 态射映射 $f \mapsto F(f)$，其中 $f: A \to B$ 在 $\mathcal{C}$ 中而 $F(f): F(B) \to F(A)$ 在 $\mathcal{D}$ 中。
>
> 满足 $F(\mathrm{id}_A) = \mathrm{id}_{F(A)}$ 以及**反序保持复合** $F(g \circ f) = F(f) \circ F(g)$。

> **注**：协变函子也称为**共变函子**或简称**函子**；当需要强调时方称"协变"。反变函子的语法上的反序复合性质，与对偶范畴的复合定义恰好相容。

## 局部单与局部满的函子

<!-- locally_injective_functor_def -->
> [!Definition]
> **局部单的函子 Locally Injective Functor**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**局部单**，若对任意对象 $A, B \in \mathrm{Ob}(\mathcal{C})$，由 $F$ 诱导的映射
> $$
> F_{A, B}: \mathrm{Hom}_{\mathcal{C}}(A, B) \to \mathrm{Hom}_{\mathcal{D}}(F(A), F(B)), \quad f \mapsto F(f)
> $$
> 是单射。

<!-- locally_surjective_functor_def -->
> [!Definition]
> **局部满的函子 Locally Surjective Functor**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**局部满**，若对任意对象 $A, B \in \mathrm{Ob}(\mathcal{C})$，由 $F$ 诱导的映射 $F_{A, B}$ 是满射。

> **注**：局部单与局部满即下一节 [[properties_of_functor]] 中"忠实"与"满"的同义说法；这里先给出对应的术语，与后文呼应。

## 函子保持同构

<!-- functor_preserves_iso -->
> [!Theorem]
> **函子保持同构 Functors Preserve Isomorphisms**：设 $F: \mathcal{C} \to \mathcal{D}$ 为函子。若 $f: A \to B$ 为 $\mathcal{C}$ 中的同构，则 $F(f): F(A) \to F(B)$ 为 $\mathcal{D}$ 中的同构，且 $F(f)^{-1} = F(f^{-1})$。
>
> **证明思路**：由 $f^{-1} \circ f = \mathrm{id}_A$ 与 $f \circ f^{-1} = \mathrm{id}_B$，应用 $F$ 并使用保持恒等与保持复合，得 $F(f^{-1}) \circ F(f) = \mathrm{id}_{F(A)}$，$F(f) \circ F(f^{-1}) = \mathrm{id}_{F(B)}$。

## 函子的例子

<!-- functor_example_identity -->
> [!Example]+
> **恒等函子 Identity Functor**：对每个范畴 $\mathcal{C}$，**恒等函子** $\mathrm{Id}_{\mathcal{C}}: \mathcal{C} \to \mathcal{C}$ 由
> $$
> \mathrm{Id}_{\mathcal{C}}(A) = A, \qquad \mathrm{Id}_{\mathcal{C}}(f) = f
> $$
> 给出。

<!-- functor_example_constant -->
> [!Example]+
> **常函子 Constant Functor**：固定对象 $D \in \mathrm{Ob}(\mathcal{D})$。**常函子** $\Delta_D: \mathcal{C} \to \mathcal{D}$ 由 $\Delta_D(A) = D$ 与 $\Delta_D(f) = \mathrm{id}_D$ 给出。

<!-- functor_example_composition -->
> [!Example]+
> **函子的复合**：设 $F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{E}$ 为函子。定义复合 $G \circ F: \mathcal{C} \to \mathcal{E}$ 在对象与态射上分别为 $(G \circ F)(A) = G(F(A))$，$(G \circ F)(f) = G(F(f))$。验证保持恒等与保持复合是直接的，故 $G \circ F$ 仍为函子。从而**全体小范畴与函子构成范畴** $\mathbf{Cat}$。

<!-- functor_example_forgetful -->
> [!Example]+
> **忘却函子 Forgetful Functor**：忘记代数结构、只保留底层集合。例如 $U: \mathbf{Grp} \to \mathbf{Set}$ 将群 $G$ 映为其底集 $|G|$、将群同态映为映射本身；类似地有 $\mathbf{Top} \to \mathbf{Set}$，$\mathbf{Vect}_F \to \mathbf{Set}$，$\mathbf{Ring} \to \mathbf{Ab}$，$\mathbf{Ab} \to \mathbf{Grp}$ 等。

<!-- functor_example_free -->
> [!Example]+
> **自由函子 Free Functor**：将集合映为其上的"自由对象"。例如 $F: \mathbf{Set} \to \mathbf{Grp}$ 将集合 $X$ 映为以 $X$ 为基的自由群 $F(X)$，将映射 $f: X \to Y$ 映为由生成元上 $f$ 延拓出的群同态；类似地有 $\mathbf{Set} \to \mathbf{Vect}_F$，$X \mapsto F^{\oplus X}$。

<!-- functor_example_powerset -->
> [!Example]+
> **协变与反变幂集函子 Covariant / Contravariant Power Set Functor**：
> - **协变幂集函子** $\mathcal{P}: \mathbf{Set} \to \mathbf{Set}$：$\mathcal{P}(X) = $ $X$ 的幂集，$\mathcal{P}(f)(S) = f(S)$ 为像；
> - **反变幂集函子** $\mathcal{P}^{\mathrm{op}}: \mathbf{Set}^{\mathrm{op}} \to \mathbf{Set}$：在对象上同样取幂集，$\mathcal{P}^{\mathrm{op}}(f)(T) = f^{-1}(T)$ 为原像。

<!-- functor_example_hom -->
> [!Example]+
> **Hom 函子 Hom Functor**：设 $\mathcal{C}$ 为局部小范畴，固定对象 $A \in \mathrm{Ob}(\mathcal{C})$。
> - **协变 Hom 函子** $\mathrm{Hom}_{\mathcal{C}}(A, -): \mathcal{C} \to \mathbf{Set}$ 将对象 $X$ 映为集合 $\mathrm{Hom}_{\mathcal{C}}(A, X)$；将态射 $g: X \to Y$ 映为 $g_* = g \circ -$，即 $h \mapsto g \circ h$。
> - **反变 Hom 函子** $\mathrm{Hom}_{\mathcal{C}}(-, A): \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ 将对象 $X$ 映为集合 $\mathrm{Hom}_{\mathcal{C}}(X, A)$；将态射 $f: X \to Y$ 映为 $f^* = - \circ f$，即 $h \mapsto h \circ f$。
>
> 二者均为函子，是范畴论中最重要的函子之一，将在 [[representable_functor|可表函子]] 与 [[statement_of_yoneda_lemma|Yoneda 引理]] 中起核心作用。

<!-- functor_example_dual -->
> [!Example]+
> **对偶向量空间函子 Dual Vector Space Functor**：$(-)^*: \mathbf{Vect}_F^{\mathrm{op}} \to \mathbf{Vect}_F$ 将 $V$ 映为对偶空间 $V^*$，将线性映射 $T: V \to W$ 映为对偶映射 $T^*: W^* \to V^*$，$\varphi \mapsto \varphi \circ T$。这是一个反变函子。

<!-- functor_example_fundamental_group -->
> [!Example]+
> **基本群函子 Fundamental Group Functor**：取带基点的拓扑空间范畴 $\mathbf{Top}_*$，基本群构成函子 $\pi_1: \mathbf{Top}_* \to \mathbf{Grp}$，将 $(X, x_0)$ 映为 $\pi_1(X, x_0)$、将连续映射 $f: (X, x_0) \to (Y, y_0)$ 映为诱导同态 $f_*: \pi_1(X, x_0) \to \pi_1(Y, y_0)$。
