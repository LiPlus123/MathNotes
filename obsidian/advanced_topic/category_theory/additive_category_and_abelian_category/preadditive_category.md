# 预加法范畴

## 预加法范畴的定义

<!-- preadditive_category_def -->
> [!Definition]
> **预加法范畴 Preadditive Category**：一个**预加法范畴**（preadditive category），也称 **$\mathbf{Ab}$-丰富范畴**（$\mathbf{Ab}$-enriched category），是满足以下条件的范畴 $\mathcal{C}$：
> - 对任意 $A, B \in \mathrm{Ob}(\mathcal{C})$，Hom 集 $\mathrm{Hom}_{\mathcal{C}}(A, B)$ 配有阿贝尔群结构（态射可相加），加法记为 $f + g$，零元记为 $0_{A,B}$；
> - **复合关于加法双线性**：对任意 $f, g \in \mathrm{Hom}(A, B)$，$h \in \mathrm{Hom}(B, C)$，$k \in \mathrm{Hom}(C', A)$，
> $$
> h \circ (f + g) = h \circ f + h \circ g, \qquad (f + g) \circ k = f \circ k + g \circ k.
> $$

> **注**：预加法范畴恰好是丰富在 $(\mathbf{Ab}, \otimes_{\mathbb{Z}}, \mathbb{Z})$ 上的范畴（见 [[enriched_category|丰富范畴]]）。由双线性条件，复合零态射仍为零态射：$h \circ 0_{A,B} = 0_{A,C}$，$0_{B,C} \circ f = 0_{A,C}$。

## 零态射

<!-- zero_morphism_preadditive -->
> [!Theorem]
> **零态射的存在性与唯一性**：在预加法范畴 $\mathcal{C}$ 中，对任意 $A, B \in \mathrm{Ob}(\mathcal{C})$，存在唯一的**零态射**（zero morphism）$0_{A,B}: A \to B$，即 Hom 群 $\mathrm{Hom}(A, B)$ 的加法零元，满足：对任意 $f: B \to C$ 与 $g: D \to A$，
> $$
> f \circ 0_{A,B} = 0_{A,C}, \qquad 0_{A,B} \circ g = 0_{D,B}.
> $$
>
> **证明思路**：由复合的双线性与阿贝尔群公理：$h \circ 0 = h \circ (0 + 0) = h \circ 0 + h \circ 0$，故 $h \circ 0 = 0$；另一侧类似。

<!-- preadditive_morphism_ring -->
> [!Theorem]
> **自同态环**：在预加法范畴 $\mathcal{C}$ 中，对任意对象 $A$，自同态集 $\mathrm{End}(A) = \mathrm{Hom}(A, A)$ 在加法（来自阿贝尔群结构）与复合（乘法）下构成一个**环**（一般为非交换环）。
>
> **证明思路**：加法为阿贝尔群，乘法（复合）结合，由双线性知乘法对加法有分配律，$\mathrm{id}_A$ 为乘法单位元。

## 例子

<!-- preadditive_examples -->
> [!Example]+
> **预加法范畴的例子**：
> 1. **阿贝尔群范畴 $\mathbf{Ab}$**：Hom 集 $\mathrm{Hom}(A, B)$ 为群同态构成的阿贝尔群（逐点加法），复合双线性。
> 2. **左 $R$-模范畴 $R\text{-}\mathbf{Mod}$**：$\mathrm{Hom}_R(M, N)$ 为 $R$-模同态构成的阿贝尔群。
> 3. **$F$-向量空间范畴 $\mathbf{Vect}_F$**：$\mathrm{Hom}_F(V, W)$ 为线性映射构成的阿贝尔群（也是 $F$-向量空间）。
> 4. **环视为单对象预加法范畴**：任意环 $R$ 确定单对象预加法范畴 $\mathcal{B}R$，其唯一对象 $*$ 的自同态环为 $R$（环的乘法对应复合，加法对应 Hom 群加法）。
> 5. **矩阵范畴 $\mathbf{Mat}_R$**：对象为非负整数，$\mathrm{Hom}(m, n)$ 为 $n \times m$ 的 $R$-矩阵，复合为矩阵乘法，加法为矩阵加法。
