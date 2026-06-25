# 代数学基本定理 Fundamental Theorem of Algebra

## 基本引理

<!-- fta_existence_lemma -->
> [!Lemma]
> **代数学基本定理引理 Lemma for FTA**：设 $f(x) \in \mathbb{C}[x]$ 是次数 $n \geq 1$ 的非零多项式，则 $f(x)$ 在 $\mathbb{C}$ 中至少有一个根。

> **注**：此引理的证明本质上依赖**复分析**（complex analysis）或**代数拓扑**（algebraic topology）。常见证明路径有三：
> 1. **刘维尔定理**（Liouville's theorem）：若 $f$ 无根，则 $1/f$ 是全纯有界函数，由刘维尔定理为常数，矛盾。
> 2. **绕数论证**：利用连续函数在单位圆上绕原点的绕数在圆半径趋于 $0$ 和 $\infty$ 时的变化推导矛盾。
> 3. **最小模原理**：$|f|$ 在 $\mathbb{C}$ 上的最小值在某点取到，若最小值非零则推出矛盾。
>
> 该引理不能仅用纯代数手段证明，其证明将在"复分析"章节中补充。

## 代数学基本定理

<!-- fundamental_theorem_of_algebra -->
> [!Theorem]
> **代数学基本定理 Fundamental Theorem of Algebra**：设 $f(x) \in \mathbb{C}[x]$ 是次数为 $n \geq 1$ 的多项式，首项系数为 $a_n$，则 $f(x)$ 在 $\mathbb{C}$ 中恰好有 $n$ 个根（计入重数）。即存在 $\alpha_1, \alpha_2, \ldots, \alpha_n \in \mathbb{C}$（不必两两不同），使得
> $$f(x) = a_n (x - \alpha_1)(x - \alpha_2) \cdots (x - \alpha_n).$$

> **证明思路**：对 $n$ 归纳。$n = 1$ 时，$f(x) = a_1 x + a_0$，唯一根为 $-a_0/a_1$，结论显然。$n \geq 2$ 时，由上述引理，$f$ 在 $\mathbb{C}$ 中有根 $\alpha_1$，由因式定理 $f(x) = (x - \alpha_1) g(x)$，其中 $g(x) \in \mathbb{C}[x]$ 且 $\deg g = n - 1$。由归纳假设，$g(x) = a_n(x - \alpha_2) \cdots (x - \alpha_n)$，从而 $f(x) = a_n(x-\alpha_1)\cdots(x-\alpha_n)$。根的个数恰好为 $n$（计入重数）由根的个数上界保证。

> **注**：代数学基本定理等价于 $\mathbb{C}$ 是**代数闭域**（algebraically closed field）：任意次数 $\geq 1$ 的 $\mathbb{C}[x]$ 多项式在 $\mathbb{C}$ 中有根。$\mathbb{R}$ 不是代数闭域（如 $x^2 + 1$ 在 $\mathbb{R}$ 中无根），$\mathbb{Q}$ 亦然（如 $x^2 - 2$ 在 $\mathbb{Q}$ 中无根）。
