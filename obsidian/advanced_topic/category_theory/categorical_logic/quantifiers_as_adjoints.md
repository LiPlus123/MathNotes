# 量词作为伴随

## Lawvere 的洞见

<!-- lawvere_quantifiers_insight -->
> **注**：F. W. Lawvere（1969）观察到，量词（存在量词 $\exists$ 与全称量词 $\forall$）可以精确地表述为某个**代入函子**（substitution functor）的左/右伴随。这是"逻辑运算即伴随"思想的核心实例，将逻辑与范畴论深刻联系。

## 子对象格与代入函子

<!-- substitution_functor_def -->
> [!Definition]
> **子对象格与代入函子 Subobject Lattice and Substitution Functor**：设 $\mathcal{E}$ 是具有有限极限的范畴（如集合范畴、拓扑斯）。对每个对象 $X$，设 $\mathrm{Sub}(X)$ 为 $X$ 的**子对象格**（subobject lattice），即 $X$ 的单态射等价类按包含关系构成的偏序集（Heyting 代数）。
>
> 对态射 $f: X \to Y$，定义**代入函子**（substitution functor，也称基变换函子）：
> $$
> f^*: \mathrm{Sub}(Y) \to \mathrm{Sub}(X),
> $$
> 将 $Y$ 的子对象 $m: S \hookrightarrow Y$ 映至拉回 $f^*(S) = S \times_Y X$（在 $X$ 上的拉回）。

> **注**：逻辑上，$f: X \to Y$ 对应谓词代入（substitution）：若 $\varphi(y)$ 是关于 $Y$ 中元素的命题（即 $Y$ 的子对象），则 $f^*(\varphi)$ 是命题 $\varphi(f(x))$（即将 $y$ 代入 $f(x)$）。

## 量词作为伴随

<!-- quantifiers_as_adjoints_theorem -->
> [!Theorem]
> **存在量词与全称量词作为伴随**：设 $f: X \to Y$ 是集合范畴（或更一般的拓扑斯）中的态射。则代入函子 $f^*: \mathrm{Sub}(Y) \to \mathrm{Sub}(X)$ 有左伴随 $\exists_f$ 与右伴随 $\forall_f$：
> $$
> \exists_f \dashv f^* \dashv \forall_f,
> $$
> 其中：
> - **左伴随**（存在量词沿 $f$）：$\exists_f: \mathrm{Sub}(X) \to \mathrm{Sub}(Y)$，$\exists_f(S) = \mathrm{im}(S \hookrightarrow X \xrightarrow{f} Y)$（$f$ 在 $S$ 上的像）；
> - **右伴随**（全称量词沿 $f$）：$\forall_f: \mathrm{Sub}(X) \to \mathrm{Sub}(Y)$，$\forall_f(S) = \{y \in Y \mid f^{-1}(y) \subseteq S\}$（"$f$ 的所有原像都在 $S$ 中"）。
>
> 伴随同构表述为：
> $$
> \exists_f(S) \leq T \iff S \leq f^*(T), \qquad f^*(T) \leq S \iff T \leq \forall_f(S).
> $$
>
> **证明思路**（集合范畴）：
> - $\exists_f(S) \leq T$ 等价于 $f(S) \subseteq T$（像包含）等价于 $S \subseteq f^{-1}(T) = f^*(T)$；
> - $f^*(T) \leq S$ 等价于 $f^{-1}(T) \subseteq S$ 等价于 $T \subseteq \{y \mid f^{-1}(y) \subseteq S\} = \forall_f(S)$。

<!-- beck_chevalley_condition -->
> [!Theorem]
> **Beck–Chevalley 条件 Beck–Chevalley Condition**：在集合范畴（或拓扑斯）中，若有拉回方块
> $$
> \begin{align*}
> P \xrightarrow{g'} X \\
> \downarrow{f'} \quad\quad \downarrow{f} \\
> Z \xrightarrow{g} Y
> \end{align*}
> $$
> 则以下自然同构成立：
> $$
> \exists_{f'} \circ (g')^* \cong g^* \circ \exists_f, \qquad \forall_{f'} \circ (g')^* \cong g^* \circ \forall_f.
> $$
> 这是量词与代入"交换"的精确表述，对应逻辑中量词与代入的可交换性（$\exists y\, \varphi(f(x), y)$ 在代入后不变）。

## 超 doctrine

<!-- hyperdoctrine_def -->
> [!Definition]
> **超 doctrine（Hyperdoctrine）**：**超 doctrine**（F. W. Lawvere, 1969）是函子
> $$
> P: \mathcal{C}^{\mathrm{op}} \to \mathbf{HA},
> $$
> 其中 $\mathcal{C}$ 是有有限积的范畴（对象作为"类型"），$\mathbf{HA}$ 是 Heyting 代数的范畴，满足：
> - 对每个投影态射 $\pi: X \times Y \to X$，代入函子 $\pi^* = P(\pi): P(X) \to P(X \times Y)$ 有左伴随 $\exists_\pi$（存在量词）和右伴随 $\forall_\pi$（全称量词）；
> - Beck–Chevalley 条件对所有拉回成立。

> **注**：超 doctrine 提供了一阶逻辑的范畴论语义：
> - $\mathcal{C}$ 的对象是"上下文"（类型或变量集）；
> - $P(X)$ 是关于 $X$ 中变量的命题（谓词）构成的 Heyting 代数；
> - $\pi^*$ 对应命题中添加多余变量（弱化）；
> - $\exists_\pi$，$\forall_\pi$ 对应量词引入。

<!-- quantifiers_example -->
> [!Example]+
> **集合范畴中的量词**：取 $\mathcal{C} = \mathbf{Set}$，$P(X) = \mathcal{P}(X)$（$X$ 的幂集，作为 Heyting 代数）。对 $f: X \to Y$：
> - $f^*(S) = f^{-1}(S) = \{x \in X \mid f(x) \in S\}$；
> - $\exists_f(T) = f(T) = \{f(x) \mid x \in T\}$（像）；
> - $\forall_f(T) = \{y \in Y \mid \forall x \in f^{-1}(y),\, x \in T\} = Y \setminus f(X \setminus T)$（全称）。
>
> 这精确对应一阶逻辑中沿 $f$ 的量词绑定：若 $\varphi(x)$ 是关于 $X$ 的谓词（$T = \{x \mid \varphi(x)\}$），则 $\exists_f(\varphi)(y) = \exists x\, (f(x) = y \wedge \varphi(x))$，$\forall_f(\varphi)(y) = \forall x\, (f(x) = y \Rightarrow \varphi(x))$。
