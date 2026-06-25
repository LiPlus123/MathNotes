# 分式域

## 分式域的构造

<!-- field_of_fractions_equiv -->
> [!Definition]
> **分式域的等价关系**：设 $R$ 为整环，在集合 $R \times (R \setminus \{0\})$ 上定义关系：
> $$
> (a, b) \sim (c, d) \iff ad = bc
> $$
> 此关系是等价关系（对称性显然；传递性：若 $ad = bc$ 且 $cf = de$，则由 $adf = bcf = bde$，因 $d \neq 0$，消去律给出 $af = be$）。

<!-- field_of_fractions_def -->
> [!Definition]
> **分式域 Field of Fractions**：设 $R$ 为整环，记 $(a, b)$ 的等价类为 $\dfrac{a}{b}$，令
> $$
> \mathrm{Frac}(R) = (R \times (R \setminus \{0\})) / {\sim}
> $$
> 在 $\mathrm{Frac}(R)$ 上定义加法和乘法：
> $$
> \frac{a}{b} + \frac{c}{d} = \frac{ad + bc}{bd}, \quad \frac{a}{b} \cdot \frac{c}{d} = \frac{ac}{bd}
> $$
> 则 $(\mathrm{Frac}(R), +, \cdot)$ 构成域，称为 $R$ 的**分式域**（或**商域**）。

> **注**：运算定义与代表元的选取无关（需验证），$bd \neq 0$ 由 $R$ 是整环保证。$\mathrm{Frac}(R)$ 的加法单位元为 $\dfrac{0}{1}$，乘法单位元为 $\dfrac{1}{1}$；非零元 $\dfrac{a}{b}$（$a \neq 0$）的乘法逆元为 $\dfrac{b}{a}$。

## 泛性质

<!-- field_of_fractions_embedding -->
> [!Theorem]
> **$R$ 嵌入 $\mathrm{Frac}(R)$**：映射 $\iota: R \to \mathrm{Frac}(R)$，$a \mapsto \dfrac{a}{1}$，是单环同态（整环嵌入）。

<!-- field_of_fractions_universal -->
> [!Theorem]
> **分式域的泛性质 Universal Property**：设 $R$ 为整环，$F$ 为域，$\varphi: R \to F$ 为单环同态，则存在唯一的域同态 $\tilde{\varphi}: \mathrm{Frac}(R) \to F$ 使得下图交换，即 $\tilde{\varphi} \circ \iota = \varphi$：
> $$
> \tilde{\varphi}\!\left(\frac{a}{b}\right) = \varphi(a)\,\varphi(b)^{-1}
> $$
>
> **证明思路**：定义 $\tilde{\varphi}(a/b) = \varphi(a)\varphi(b)^{-1}$（$\varphi(b) \neq 0$ 由 $\varphi$ 单射与 $b \neq 0$ 保证）；验证定义与代表元无关、$\tilde{\varphi}$ 是域同态，唯一性由 $\tilde{\varphi}$ 在 $\iota(R)$ 上的值被 $\varphi$ 唯一确定，再由域同态扩展到全域。

<!-- field_of_fractions_minimal -->
> [!Corollary]
> **分式域是最小包含域**：$\mathrm{Frac}(R)$ 是包含 $R$（通过 $\iota$）的最小域，即任何包含 $R$ 的域都包含与 $\mathrm{Frac}(R)$ 同构的子域。

## 例子

<!-- field_of_fractions_example_Q -->
> [!Example]+
> **有理数域**：$\mathbb{Q} = \mathrm{Frac}(\mathbb{Z})$，有理数域是整数环的分式域。

<!-- field_of_fractions_example_rational_func -->
> [!Example]+
> **有理函数域**：设 $F$ 为域，$F(x) = \mathrm{Frac}(F[x])$ 称为 $F$ 上的**有理函数域**，其元素为形式商 $\dfrac{f(x)}{g(x)}$（$f, g \in F[x]$，$g \neq 0$）。

<!-- field_of_fractions_example_Gauss -->
> [!Example]+
> **高斯有理数域**：$\mathbb{Q}(i) = \mathrm{Frac}(\mathbb{Z}[i]) = \{a + bi \mid a, b \in \mathbb{Q}\}$，是高斯整数环的分式域。
