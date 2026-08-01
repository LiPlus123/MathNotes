
# Lambda 演算

<!-- lambda_term -->
> [!Definition]
> **λ-项 λ-Terms**：设 $V=\{x,y,z,x_1,x_2,\dots\}$ 是一个可数的变元集。λ 的生成规则如下：
> 1. 变元是项：如果 $x\in V$，则 $x$ 是一个 λ 项
> 2. 抽象：如果 $M$ 是一个 λ 项，$x\in V$，则 $\lambda x.M$ 是一个 λ 项
> 3. 应用：如果 $M$ 和 $N$ 是 λ 项，则 $(M\ N)$ 是一个 λ 项
>
> 只有根据以上规则有限次使用得到的字符串才是 λ 项，除此之外没有别的 λ 项。λ 项的集合记为 $\Lambda$。

> [!Example]+
> 设 $V=\{x,y,z,x_1,x_2,\dots\}$，以下是一些 λ 项：
> - $x$
> - $\lambda x.x$
> - $\lambda x.y$
> - $\lambda x.(\lambda y.x)$
> - $\lambda x.(x\ y)$
> - $((\lambda x.x)\ z)$
> - $((\lambda x.y)\ z)$

> **注**：在 λ 项的定义中，
>- λ 项中的抽象规则表示一个“匿名函数”，$\lambda x.M$ 是一个以 $x$ 为参数，$M$ 为函数体的函数。比如：
>   - $\lambda x.x$ 表示一个恒等函数 $f(x)=x$
>   - $\lambda x.y$ 表示一个常值函数 $f(x)=y$
> - λ 项中的应用规则表示函数的调用，$(M\ N)$ 是将函数 $M$ 应用到参数 $N$ 上的操作。比如：
>   - $((\lambda x.x)\ z)$ 表示将参数 $z$ 应用到恒等函数 $f(x)=x$ 上，结果是 $f(z)=z$。
>   - $((\lambda x.y)\ z)$ 表示将参数 $z$ 应用到常值函数 $f(x)=y$ 上，结果是 $f(z)=y$。


**括号的省略约定**：为了使表达式更加简洁，在不引起歧义的前提下，引入括号的省略约定：
1. 公式最外层的括号可以省略
2. 应用的左结合性：$M\ N\ P$ 等价于 $(M\ N)\ P$
3. 抽象的右结合性：$\lambda x.\lambda y.M$ 等价于 $\lambda x.(\lambda y.M)$
4. 应用的优先级高于抽象：$\lambda x.M\ N$ 等价于 $\lambda x.(M\ N)$

<!-- free_var_lambda_term -->
> [!Definition]
> **自由变元 Free Variable**：设 $\mathrm{fv}$ 是定义在 $\Lambda$ 上的一个函数。如果输入一个 λ 项，那么：
> 1. $\mathrm{fv}(x) = \{x\}$，其中 $x\in V$ 是一个变元
> 2. $\mathrm{fv}(\lambda x.M) = \mathrm{fv}(M) \setminus \{x\}$，其中 $M\in \Lambda$ 是一个 λ 项，$x\in V$ 是一个变元
> 3. $\mathrm{fv}(M\ N) = \mathrm{fv}(M) \cup \mathrm{fv}(N)$，其中 $M,N\in \Lambda$ 是 λ 项

<!-- closed_lambda_term -->
> [!Definition]
> **闭项 Closed Term**：设 $M\in \Lambda$ 是一个 λ 项。如果 $\mathrm{fv}(M) = \varnothing$，则称 $M$ 是一个闭项。

<!-- bound_var_lambda_term -->
> [!Definition]
> **约束变元 Bound Variable**：设 $\mathrm{bv}$ 是定义在 $\Lambda$ 上的一个函数。如果输入一个 λ 项，那么：
> 1. $\mathrm{bv}(x) = \varnothing$，其中 $x\in V$ 是一个变元
> 2. $\mathrm{bv}(M\ N) = \mathrm{bv}(M) \cup \mathrm{bv}(N)$，其中 $M,N\in \Lambda$ 是 λ 项
> 3. $\mathrm{bv}(\lambda x.M) = \mathrm{bv}(M) \cup \{x\}$，其中 $M\in \Lambda$ 是一个 λ 项，$x\in V$ 是一个变元

> **注**：自由变元和约束变元的定义，类似于一阶逻辑语言中的自由变元和约束变元。绑定子 $\lambda x$ 总是约束其辖域内的变元 $x$，因此无论 $x$ 是否在 $M$ 中实际出现，都有 $x \in \mathrm{bv}(\lambda x.M)$。比如，$(\lambda x.(x\ y))$ 中，$x$ 是约束变元，$y$ 是自由变元。

<!-- substitution_lambda_term -->
> [!Definition]
> **代入 Substitution**：设 $M,N \in \Lambda$ 是 λ 项，$x \in V$ 是一个变元，则将 $N$ 代入 $M$ 记为 $M(x;N)$，定义为：
> 1. 如果 $M=y$ 是一个变元，那么
> $$
> y(x;N) = \begin{cases}
> N & \text{if } y = x \\
> y & \text{otherwise}
> \end{cases}
> $$
> 2. 如果 $M=(M_1\ M_2)$，其中 $M_1,M_2\in \Lambda$ 是 λ 项，那么
> $$
> (M_1\ M_2)(x;N) = (M_1(x;N)\ M_2(x;N))
> $$
> 3. 如果 $M=\lambda y.M_1$，其中 $M_1\in \Lambda$ 是 λ 项，$y\in V$ 是一个变元，那么
> $$
> (\lambda y.M_1)(x;N) = \begin{cases}
> \lambda y.M_1 & \text{if } y = x \\
> \lambda y.(M_1(x;N)) & \text{if } y \neq x \text{ 且 } \big(x \notin \mathrm{fv}(M_1) \text{ 或 } y \notin \mathrm{fv}(N)\big) \\
> \lambda z.(M_1(y;z)(x;N)),\ z \notin \mathrm{fv}(M_1) \cup \mathrm{fv}(N) & \text{if } y \neq x \text{ 且 } x \in \mathrm{fv}(M_1) \text{ 且 } y \in \mathrm{fv}(N)
> \end{cases}
> $$

> **注**：$M(x;N)$ 表示将 $M$ 中的自由变元 $x$ 替换为 $N$，并且要避免代入后，$N$ 的自由变元被捕获。
> - 当 $y = x$ 时，$x$ 在 $\lambda y.M_1$ 中被绑定，不再自由出现，因此代入不发生任何改变。
> - 当 $y \neq x$ 时，只有在 $x$ 确实自由出现于 $M_1$（$x \in \mathrm{fv}(M_1)$），且约束变元 $y$ 同时是 $N$ 的自由变元（$y \in \mathrm{fv}(N)$）时，才会发生变元捕获。此时需先将 $M$ 中的约束变元 $y$ 重命名为新变元 $z$，并且 $z$ 既不是 $M_1$ 的自由变元，也不是 $N$ 的自由变元，即 $z \notin \mathrm{fv}(M_1) \cup \mathrm{fv}(N)$，这样就避免了代入后 $N$ 的自由变元被捕获。

<!-- alpha_equivalence -->
> [!Definition]
> **α-等价 α-Equivalence**：设 $M \in \Lambda$ 是 λ 项。如果变元 $y\notin \mathrm{fv}(M)$，那么称 $\lambda x.M$ 和 $\lambda y.M(x;y)$ 是 α-等价的，记为 $\lambda x.M \equiv_\alpha \lambda y.M(x;y)$。

> **注**：α-等价表示两个 λ 项在结构上是相同的，只是约束变元的名字不同。比如，$\lambda x.x$ 和 $\lambda y.y$ 是 α-等价的，因为它们都表示恒等函数，只是约束变元的名字不同。

<!-- beta_reduction -->
> [!Definition]
> **β-规约 β-Reduction**：单步 β-规约 $\to_\beta$ 是 $\Lambda$ 上满足下列条件的最小二元关系：
> 1. **β-收缩**：对任意 $M,N \in \Lambda$ 和 $x \in V$，
> $$
> (\lambda x.M)\ N \to_\beta M(x;N)
> $$
> 2. **抽象下封闭**：如果 $M \to_\beta M'$，则
> $$
> \lambda x.M \to_\beta \lambda x.M'
> $$
> 3. **应用左侧封闭**：如果 $M \to_\beta M'$，则对任意 $N \in \Lambda$，
> $$
> (M\ N) \to_\beta (M'\ N)
> $$
> 4. **应用右侧封闭**：如果 $N \to_\beta N'$，则对任意 $M \in \Lambda$，
> $$
> (M\ N) \to_\beta (M\ N')
> $$

> **注**：$\lambda x.M$ 定义了一个参数为 $x$ 的匿名函数，而 $(\lambda x.M)\ N$ 表示函数应用。β-收缩说明，函数应用的结果，就是将 $N$ 代入 $M$，也即将函数体 $M$ 中自由出现的 $x$ 替换为参数 $N$。比如：
> - $(\lambda x.x)\ z \to_\beta x(x;z) = z$
> - $(\lambda x.y)\ z \to_\beta y(x;z) = y$
>
> 抽象下封闭、应用左侧封闭和应用右侧封闭说明，β-规约是上下文无关的：如果 $M$ 可以 β-规约为 $M'$，那么在任何上下文中，$M$ 都可以 β-规约为 $M'$。比如，如果 $M \to_\beta M'$，则 $\lambda x.M \to_\beta \lambda x.M'$，以及对任意 $N$，$(M\ N) \to_\beta (M'\ N)$ 和 $(N\ M) \to_\beta (N\ M')$。

> [!Definition]
> **多步 β-规约 Multi-step β-Reduction**：多步 β-规约 $\twoheadrightarrow_\beta$ 定义为单步 β-规约 $\to_\beta$ 的自反传递闭包。即对 $M,N \in \Lambda$，$M \twoheadrightarrow_\beta N$ 当且仅当存在有限序列 $M = P_0, P_1, \dots, P_k = N$（$k \geq 0$），使得对每个 $0 \leq i < k$ 都有 $P_i \to_\beta P_{i+1}$。

> [!Definition]
> **正规项 Normal Form**：设 $M \in \Lambda$ 是 λ 项。如果不存在 $N \in \Lambda$，使得 $M \to_\beta N$，则称 $M$ 是一个正规项。若 $M \twoheadrightarrow_\beta N$ 且 $N$ 是正规项，则称 $N$ 是 $M$ 的正规型。

> **注**：正规型是不可再 β-规约的 λ 项。比如，
> 1. $\lambda x.x$ 是一个正规项，因为它没有可规约式；
> 2. $(\lambda x.x)\ z$ 不是一个正规项，因为它有可规约式 $(\lambda x.x)\ z \to_\beta z$
> 3. $(\lambda x.(x\ x))\ (\lambda x.(x\ x))$ 不是一个正规项，而且根据 β-规约规则，规约后还是它自己，形成无限循环，所以它没有正规型
> $$
> (\lambda x.(x\ x))\ (\lambda x.(x\ x)) \to_\beta (x\ x)(x;(\lambda x.(x\ x))) = (\lambda x.(x\ x))\ (\lambda x.(x\ x))
> $$

<!-- thm_church_rosser -->
> [!Theorem]
> **Church-Rosser 定理 Church-Rosser Theorem**（合流性 Confluence）：设 $M \in \Lambda$ 是 λ 项。如果 $M \twoheadrightarrow_\beta M_1$ 且 $M \twoheadrightarrow_\beta M_2$，那么存在 λ 项 $P \in \Lambda$，使得 $M_1 \twoheadrightarrow_\beta P$ 且 $M_2 \twoheadrightarrow_\beta P$。

> **注**：Church-Rosser 定理表明，β-规约具有合流性：从同一个 λ 项出发，无论沿哪条路径规约，所得结果总能再规约到一个共同的项。

> [!Corollary]
> λ 项的正规型如果存在，那么它在 α-等价意义下是唯一的。

> **注**：由 Church-Rosser 定理可得此推论。若 $M$ 有两个正规型 $N_1, N_2$，即 $M \twoheadrightarrow_\beta N_1$ 且 $M \twoheadrightarrow_\beta N_2$，则存在 $P$ 使得 $N_1 \twoheadrightarrow_\beta P$ 且 $N_2 \twoheadrightarrow_\beta P$。因 $N_1, N_2$ 都是正规项，不可再规约，故 $N_1 \equiv_\alpha P \equiv_\alpha N_2$，即正规型在 α-等价意义下唯一。

<!-- beta_equivalence -->
> [!Definition]
> **β-等价 β-Equivalence**：β-等价 $\equiv_\beta$ 定义为单步 β-规约 $\to_\beta$ 生成的自反、对称、传递闭包，即包含 $\to_\beta$ 的最小等价关系。

> **注**：由 Church-Rosser 定理可得 β-等价的一个等价刻画：$M \equiv_\beta N$ 当且仅当存在一个 λ 项 $P$，使得 $M \twoheadrightarrow_\beta P$ 且 $N \twoheadrightarrow_\beta P$，即 $M$ 与 $N$ 可分别经有限次 β-规约共汇于同一个项 $P$。


> [!Definition]
> **η-等价 η-Equivalence**：设 $M \in \Lambda$ 是 λ 项，如果 $x\notin \mathrm{fv}(M)$，则称 $\lambda x.(M\ x)$ 和 $M$ 是 η-等价的，记为 $\lambda x.(M\ x) \equiv_\eta M$。

> **注**：η-等价说明，当 $x\notin \mathrm{fv}(M)$ 时，$\lambda x.(M\ x)$ 和 $M$ 本质上是同一个函数：把它们应用到任意参数 $N$ 上，$(\lambda x.(M\ x))\ N \to_\beta (M\ x)(x;N) = (M\ N)$，结果与直接计算 $(M\ N)$ 相同。比如，
> - 设 $M = \lambda y.y$（恒等函数），因为 $x\notin \mathrm{fv}(M)$，所以 $\lambda x.(M\ x) = \lambda x.((\lambda y.y)\ x)$ 和 $M = \lambda y.y$ 是 η-等价的，它们都表示恒等函数。
> - 设 $M = x$，因为 $x\in \mathrm{fv}(M)$，$\lambda x.(M\ x) = \lambda x.(x\ x)$ 和 $M=x$ 是完全不同的项，所以不是 η-等价的。

<!-- church_numerals -->
> [!Definition]
> **丘奇数 Church Numerals**：设 $n\in \mathbb{N}$ 是一个自然数，定义闭项：
> $$   
> \bar{n} = \lambda f.\lambda x.\underbrace{f(f(\cdots (f}_{n\text{次}}\ x)\cdots))
> $$
> 特别地，
> $$
> \bar{0} = \lambda f.\lambda x.x
> $$
> 称闭项 $\bar{n}$ 是数字 $n$ 的丘奇数。

> **注**：丘奇数 $\bar{n}$ 表示一个高阶函数，它接受一个函数 $f$ 和一个参数 $x$，并且将 $f$ 应用 $n$ 次到 $x$ 上。比如，
> - $\bar{0} = \lambda f.\lambda x.x$ 表示一个恒等函数，它接受任何函数 $f$ 和参数 $x$，返回 $x$。
> - $\bar{1} = \lambda f.\lambda x.(f\ x)$ 表示一个函数，它接受任何函数 $f$ 和参数 $x$，返回 $f\ x$。

<!-- lambda_definable_func -->
> [!Definition]
> **λ-可定义函数 λ-Definable Function**：设 $f:\mathbb{N}^k \rightharpoonup \mathbb{N}$ 是一个部分函数。如存在一个“闭项”$F\in \Lambda$，对于任意 $(n_1,\cdots,n_k) \in \mathbb{N}$：
> 1. $f(n_1,\cdots,n_k) \downarrow$ 有定义，当且仅当，$(F\ \bar{n}_1 \cdots\ \bar{n}_k)$ 存在正规型 $N$ 并且 $N \equiv_\alpha \overline{f(n_1,\cdots,n_k)}$
> 2. $f(n_1,\cdots,n_k) \uparrow$ 无定义，当且仅当，$(F\ \bar{n}_1 \cdots\ \bar{n}_k)$ 不存在正规型。