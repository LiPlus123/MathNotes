# 连续函数与同胚

## 连续函数

<!-- continuous_function_topological_definition -->
> [!Definition]
> **连续函数 Continuous Function**：设 $(X, \mathcal{T}_X)$ 和 $(Y, \mathcal{T}_Y)$ 是拓扑空间，$f: X \to Y$。若对每个开集 $V \in \mathcal{T}_Y$，其原像 $f^{-1}(V) \in \mathcal{T}_X$（即原像是开集），则称 $f$ 是**连续函数 Continuous Function**（或称 $f$ 连续）。

<!-- continuous_at_point_topological -->
> [!Definition]
> **点连续 Continuity at a Point**：设 $(X, \mathcal{T}_X)$ 和 $(Y, \mathcal{T}_Y)$ 是拓扑空间，$f: X \to Y$，$x_0 \in X$。若对 $f(x_0)$ 的每个邻域 $V$，$f^{-1}(V)$ 是 $x_0$ 的邻域，则称 $f$ 在 $x_0$ 处**连续 Continuous at $x_0$**。

> **注**：$f$ 连续当且仅当 $f$ 在每个点处连续。

<!-- continuous_function_properties -->
> [!Theorem]
> **连续函数的性质 Properties of Continuous Functions**：设 $(X, \mathcal{T}_X)$，$(Y, \mathcal{T}_Y)$，$(Z, \mathcal{T}_Z)$ 是拓扑空间，则：
> 1. **恒等映射连续**：$\mathrm{id}_X: X \to X$ 是连续的；
> 2. **常值映射连续**：常值映射 $f: X \to Y$，$f(x) = y_0$ 是连续的；
> 3. **复合连续**：若 $f: X \to Y$ 和 $g: Y \to Z$ 均连续，则 $g \circ f: X \to Z$ 连续；
> 4. **闭集原像**：$f$ 连续当且仅当每个闭集的原像是闭集；
> 5. **闭包条件**：$f$ 连续当且仅当对所有 $A \subseteq X$，$f(\overline{A}) \subseteq \overline{f(A)}$。
>
> **证明思路**：(1)(2) 直接验证。(3) 对 $Z$ 中开集 $W$，$(g \circ f)^{-1}(W) = f^{-1}(g^{-1}(W))$；由 $g$ 连续 $g^{-1}(W)$ 是开集，再由 $f$ 连续得 $f^{-1}(g^{-1}(W))$ 是开集。(4) 取补集后由开集原像的条件得到。(5) 由闭包的特征（最小闭集）与 (4) 结合得到。

<!-- continuous_function_examples -->
> [!Example]+
> **连续函数的例子 Examples of Continuous Functions**：
> 1. 度量空间之间满足 $\varepsilon$-$\delta$ 连续性的映射，在其各自诱导的拓扑下是连续函数；
> 2. 将 $\mathbb{R}$ 配备离散拓扑，恒等映射 $\mathrm{id}: (\mathbb{R}, \mathcal{T}_{\mathrm{disc}}) \to (\mathbb{R}, \mathcal{T}_{\mathrm{std}})$ 连续，但反向 $\mathrm{id}: (\mathbb{R}, \mathcal{T}_{\mathrm{std}}) \to (\mathbb{R}, \mathcal{T}_{\mathrm{disc}})$ 不连续（例如 $\{0\}$ 是离散拓扑的开集，但其原像 $\{0\}$ 不是标准拓扑的开集）；
> 3. 将 $X$ 配备任意拓扑，$Y$ 配备平凡拓扑，任意映射 $f: X \to Y$ 连续（因为 $Y$ 中开集只有 $\varnothing$ 和 $Y$，原像分别为 $\varnothing$ 和 $X$）。

## 同胚

<!-- homeomorphism_definition -->
> [!Definition]
> **同胚 Homeomorphism**：设 $(X, \mathcal{T}_X)$ 和 $(Y, \mathcal{T}_Y)$ 是拓扑空间，$f: X \to Y$。若 $f$ 是双射，且 $f$ 和 $f^{-1}: Y \to X$ 均连续，则称 $f$ 是从 $X$ 到 $Y$ 的**同胚 Homeomorphism**，称 $X$ 与 $Y$ **同胚 Homeomorphic**，记为 $X \cong Y$。

> **注**：同胚等价于 $f$ 是双射连续映射且是**开映射**（将开集映为开集），或等价于 $f$ 建立了 $\mathcal{T}_X$ 与 $\mathcal{T}_Y$ 之间的双射对应。

<!-- homeomorphism_properties -->
> [!Theorem]
> **同胚的性质 Properties of Homeomorphisms**：
> 1. 同胚是等价关系：自反性（恒等映射是同胚）、对称性（同胚的逆是同胚）、传递性（同胚的复合是同胚）；
> 2. 同胚保持所有拓扑性质（称为**拓扑不变量 Topological Invariants**），例如连通性、紧致性、分离公理等。
>
> **证明思路**：(1) 直接验证。(2) 若 $P$ 是一个拓扑性质，$X$ 满足 $P$，$f: X \to Y$ 是同胚，由 $f$ 和 $f^{-1}$ 均连续，利用各拓扑性质对连续映射的稳定性逐一论证。

<!-- homeomorphism_examples -->
> [!Example]+
> **同胚的例子 Examples of Homeomorphisms**：
> 1. 开区间 $(0,1)$ 与 $\mathbb{R}$ 同胚：映射 $f(x) = \tan\!\left(\pi x - \frac{\pi}{2}\right)$ 是同胚；
> 2. 任意两个开区间 $(a,b)$ 与 $(c,d)$（$a < b$，$c < d$）均同胚；
> 3. $n$ 维开球 $\{x \in \mathbb{R}^n \mid \|x\|_2 < 1\}$ 与 $\mathbb{R}^n$ 同胚；
> 4. 单位圆 $S^1 = \{(x,y) \in \mathbb{R}^2 \mid x^2 + y^2 = 1\}$ 与 $[0,1]$ 不同胚（前者是紧致的，后者也是，但去掉一个点后的连通性不同）。
