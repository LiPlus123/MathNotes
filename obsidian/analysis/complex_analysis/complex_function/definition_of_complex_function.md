# 复变函数的定义

## 复变函数与实部、虚部

<!-- complex_function_definition -->
> [!Definition]
> **复变函数 Complex Function**：设 $D\subseteq\mathbb{C}$。从 $D$ 到 $\mathbb{C}$ 的映射
> $$
> f:D\to\mathbb{C}
> $$
> 称为定义在 $D$ 上的复变函数。对 $z\in D$，$f(z)$ 称为 $z$ 在 $f$ 下的函数值；$D$ 称为定义域，$f(D)$ 称为值域或像集。

<!-- complex_function_real_imaginary_decomposition -->
> [!Theorem]
> **实部与虚部分解 Real and Imaginary Decomposition**：任意复变函数 $f:D\to\mathbb{C}$ 都能唯一表示为
> $$
> f(z)=u(z)+iv(z),
> $$
> 其中 $u,v:D\to\mathbb{R}$ 分别为
> $$
> u(z)=\operatorname{Re}f(z),\qquad v(z)=\operatorname{Im}f(z).
> $$
> 若写 $z=x+iy$，也可把 $u,v$ 看作定义在 $\mathbb{R}^2$ 的实值函数 $u(x,y),v(x,y)$。
>
> **证明思路**：对每个 $w\in\mathbb{C}$，有唯一分解 $w=\operatorname{Re}(w)+i\operatorname{Im}(w)$；逐点应用即可。

<!-- complex_function_as_real_map -->
> [!Definition]
> **复函数的实映射表示 Real Map Representation**：若 $z=x+iy$ 且 $f(z)=u(x,y)+iv(x,y)$，则 $f$ 可表示为实映射
> $$
> F:\mathbb{R}^2\supseteq D\to\mathbb{R}^2,\qquad
> F(x,y)=(u(x,y),v(x,y)).
> $$
> 复变函数与二元实向量值函数描述的是同一映射，但复数乘法和复数的方向结构为复变函数提供了额外约束。

<!-- complex_function_examples -->
> [!Example]+
> **复变函数的例子 Examples of Complex Functions**：
> 1. 恒等函数 $f(z)=z$；
> 2. 多项式 $p(z)=a_nz^n+\cdots+a_1z+a_0$；
> 3. 共轭函数 $f(z)=\bar z$，其分解为 $u(x,y)=x$、$v(x,y)=-y$；
> 4. 模函数 $f(z)=|z|$，它是取值于 $\mathbb{R}$ 的复变函数；
> 5. 倒数函数 $f(z)=1/z$，定义域为 $\mathbb{C}\setminus\{0\}$。

## 多值函数与单值分支

<!-- multivalued_function_relation -->
> [!Definition]
> **多值函数 Multivalued Function**：从 $D$ 到 $\mathbb{C}$ 的多值函数是一个对应关系 $F$，它把每个 $z\in D$ 对应到一个非空子集 $F(z)\subseteq\mathbb{C}$，而不是必然对应唯一的复数。其图像可写为
> $$
> \operatorname{Graph}(F)=\{(z,w)\in D\times\mathbb{C}:w\in F(z)\}.
> $$
> 例如，平方根关系 $w^2=z$ 在 $z\ne0$ 时通常有两个值，且 $z=0$ 时有一个值。

<!-- single_valued_branch_definition -->
> [!Definition]
> **单值分支 Single-Valued Branch**：设 $F$ 是定义在 $D$ 上的多值函数。若普通函数 $f:D\to\mathbb{C}$ 满足 $f(z)\in F(z)$ 对所有 $z\in D$ 成立，则称 $f$ 是 $F$ 在 $D$ 上的一个单值分支。
>
> 对平方根关系 $w^2=z$，若 $D$ 是不包含 $0$ 的单连通区域，则存在连续的单值平方根分支；在适当条件下还存在全纯分支。对数函数的分支也遵循同样的原则：需要在定义域上连续选择辐角。

<!-- complex_function_branch_obstruction -->
> [!Theorem]
> **穿孔平面上不存在连续平方根分支 No Continuous Square-Root Branch on the Punctured Plane**：不存在连续函数 $f:\mathbb{C}\setminus\{0\}\to\mathbb{C}$ 满足
> $$
> f(z)^2=z\qquad(z\ne0).
> $$
>
> **证明思路**：若这样的 $f$ 存在，沿单位圆 $z=e^{it}$ 考察 $f(e^{it})$。平方关系迫使其绕原点的卷绕数为半整数，与连续闭曲线的整数卷绕数矛盾。等价地，沿单位圆绕原点一周后平方根的符号必然改变。

> **注**：本小节的基本定义与分支观点参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 1，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 1。
