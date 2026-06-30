# 单子的代数

## T-代数的定义

<!-- t_algebra_def -->
> [!Definition]
> **T-代数 T-Algebra**：设 $(T, \eta, \mu)$ 是范畴 $\mathcal{C}$ 上的单子。一个 **$T$-代数**（$T$-algebra），又称 **Eilenberg–Moore 代数**，是一对 $(A, h)$，其中：
> - $A \in \mathrm{Ob}(\mathcal{C})$，称为**底层对象**（underlying object）；
> - $h: T(A) \to A$，称为**结构态射**（structure map）或**代数作用**；
>
> 满足以下相容条件：
> $$
> h \circ \eta_A = \mathrm{id}_A \qquad \text{（单位相容性）},
> $$
> $$
> h \circ \mu_A = h \circ T(h) \qquad \text{（结合相容性）}.
> $$

> **注**：这两个条件表明 $h$ 与单子结构"相容"。单位相容性说明 $T$-代数上的"单位元"作用是恒等；结合相容性说明先乘法再作用等于先作用再作用，类比于幺半群作用的结合律。

<!-- t_algebra_morphism_def -->
> [!Definition]
> **T-代数态射 Morphism of T-Algebras**：设 $(A, h)$ 与 $(B, k)$ 是 $T$-代数。一个 **$T$-代数态射**（morphism of $T$-algebras）是态射 $f: A \to B$（在 $\mathcal{C}$ 中），满足：
> $$
> f \circ h = k \circ T(f).
> $$

> **注**：此条件即要求下图交换：$T(A) \xrightarrow{T(f)} T(B)$，$T(A) \xrightarrow{h} A$，$T(B) \xrightarrow{k} B$，$A \xrightarrow{f} B$。即 $f$ 与结构态射"交换"。

## Eilenberg–Moore 范畴

<!-- eilenberg_moore_category_def -->
> [!Definition]
> **Eilenberg–Moore 范畴 Eilenberg–Moore Category**：设 $(T, \eta, \mu)$ 是 $\mathcal{C}$ 上的单子。所有 $T$-代数与 $T$-代数态射构成一个范畴，称为 **Eilenberg–Moore 范畴**，记作 $\mathcal{C}^T$（也记作 $\mathbf{EM}(T)$）。
>
> - 对象：所有 $T$-代数 $(A, h)$；
> - 态射：$T$-代数态射 $f: (A, h) \to (B, k)$，即满足 $f \circ h = k \circ T(f)$ 的 $\mathcal{C}$-态射；
> - 复合与恒等：继承自 $\mathcal{C}$。

<!-- eilenberg_moore_forgetful_free -->
> [!Theorem]
> **Eilenberg–Moore 范畴的伴随 Adjunction on the Eilenberg–Moore Category**：存在函子：
> - **遗忘函子** $U^T: \mathcal{C}^T \to \mathcal{C}$，$(A, h) \mapsto A$，$f \mapsto f$；
> - **自由函子** $F^T: \mathcal{C} \to \mathcal{C}^T$，$A \mapsto (T(A), \mu_A)$，$f \mapsto T(f)$；
>
> 且 $F^T \dashv U^T$，其单位为 $\eta: \mathrm{Id}_{\mathcal{C}} \Rightarrow U^T \circ F^T$，余单位在 $(A, h)$ 处为 $h: (T(A), \mu_A) \to (A, h)$（即结构态射本身）。
>
> 进一步，由伴随 $F^T \dashv U^T$ 诱导的 $\mathcal{C}$ 上的单子恰好是 $(T, \eta, \mu)$。
>
> **证明思路**：验证 $F^T$ 的像确是 $T$-代数（$(T(A), \mu_A)$ 满足代数条件，由单子律保证）；伴随同构 $\mathrm{Hom}_{\mathcal{C}^T}(F^T(A), (B,h)) \cong \mathrm{Hom}_{\mathcal{C}}(A, U^T(B,h))$ 由 $f \mapsto f \circ \eta_A$ 给出，其逆由 $T$-代数态射条件唯一确定。

## Kleisli 范畴

<!-- kleisli_category_def -->
> [!Definition]
> **Kleisli 范畴 Kleisli Category**：设 $(T, \eta, \mu)$ 是 $\mathcal{C}$ 上的单子。**Kleisli 范畴** $\mathcal{C}_T$ 定义如下：
> - 对象：$\mathrm{Ob}(\mathcal{C}_T) = \mathrm{Ob}(\mathcal{C})$；
> - 从 $A$ 到 $B$ 的态射：$\mathcal{C}_T(A, B) = \mathcal{C}(A, T(B))$（即 $\mathcal{C}$ 中从 $A$ 到 $T(B)$ 的态射）；
> - **Kleisli 复合**：$g \circ_T f$（$f \in \mathcal{C}(A, T(B))$，$g \in \mathcal{C}(B, T(C))$）定义为：
> $$
> g \circ_T f = \mu_C \circ T(g) \circ f: A \to T(B) \to T(T(C)) \to T(C);
> $$
> - 恒等态射：$\eta_A: A \to T(A)$（对象 $A$ 处的单位）。

> **注**：Kleisli 范畴的态射 $f: A \to B$（即 $\mathcal{C}$-态射 $f: A \to T(B)$）可理解为"带效应的计算"——从 $A$ 计算出 $B$，但允许 $T$ 所描述的"副作用"。Kleisli 复合即效应的链式传播，这是函数式编程中"单子"概念的来源。

<!-- kleisli_adjunction -->
> [!Theorem]
> **Kleisli 范畴的伴随 Adjunction on the Kleisli Category**：存在函子：
> - $L: \mathcal{C} \to \mathcal{C}_T$，对象不变，态射 $f: A \to B$ 映至 $\eta_B \circ f \in \mathcal{C}(A, T(B))$；
> - $R: \mathcal{C}_T \to \mathcal{C}$，对象 $A \mapsto T(A)$，态射 $f \in \mathcal{C}(A, T(B))$ 映至 $\mu_B \circ T(f): T(A) \to T(B)$；
>
> 且 $L \dashv R$，由此伴随诱导的 $\mathcal{C}$ 上的单子也是 $(T, \eta, \mu)$。
>
> **证明思路**：验证 $R \circ L = T$ 以及单位、余单位满足三角恒等式。

## 自由代数

<!-- free_t_algebra -->
> [!Definition]
> **自由 T-代数 Free T-Algebra**：由自由函子 $F^T: \mathcal{C} \to \mathcal{C}^T$ 生成的 $T$-代数 $(T(A), \mu_A)$ 称为**由 $A$ 生成的自由 $T$-代数**。它具有泛性质：对任意 $T$-代数 $(B, h)$ 和 $\mathcal{C}$-态射 $f: A \to B$，存在唯一的 $T$-代数态射 $\bar{f}: (T(A), \mu_A) \to (B, h)$，使得 $\bar{f} \circ \eta_A = f$。

<!-- kleisli_em_comparison -->
> [!Theorem]
> **Kleisli 范畴与 Eilenberg–Moore 范畴的关系**：存在唯一的全忠实函子 $K: \mathcal{C}_T \to \mathcal{C}^T$，使得下图交换：
> $$
> \begin{align*}
> &L: \mathcal{C} \to \mathcal{C}_T, \quad R: \mathcal{C}_T \to \mathcal{C},\\
> &F^T: \mathcal{C} \to \mathcal{C}^T, \quad U^T: \mathcal{C}^T \to \mathcal{C},\\
> &K \circ L = F^T, \quad U^T \circ K = R.
> \end{align*}
> $$
> 直觉上，Kleisli 范畴是"只有自由代数"的最小范畴，Eilenberg–Moore 范畴是"含所有代数"的最大范畴，$K$ 是从小到大的嵌入。
>
> **证明思路**：定义 $K(A) = (T(A), \mu_A)$（将 Kleisli 对象映为对应的自由代数），对态射 $f \in \mathcal{C}(A, T(B))$ 令 $K(f) = \mu_B \circ T(f)$，验证这是 $T$-代数态射且与 $L, R, F^T, U^T$ 相容。
