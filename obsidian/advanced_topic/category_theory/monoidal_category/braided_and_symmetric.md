# 辫子与对称幺半范畴

## 辫子幺半范畴

<!-- braided_monoidal_category_def -->
> [!Definition]
> **辫子幺半范畴 Braided Monoidal Category**：一个**辫子幺半范畴**（braided monoidal category）是幺半范畴 $(\mathcal{C}, \otimes, I, \alpha, \lambda, \rho)$ 配以**辫子**（braiding）——自然同构族
> $$
> \beta_{A,B}: A \otimes B \xrightarrow{\sim} B \otimes A,
> $$
> 满足以下两个**六边形公理**（hexagon axioms）：
> $$
> \alpha_{B,C,A} \circ \beta_{A, B \otimes C} \circ \alpha_{A,B,C} = (\mathrm{id}_B \otimes \beta_{A,C}) \circ \alpha_{B,A,C} \circ (\beta_{A,B} \otimes \mathrm{id}_C),
> $$
> $$
> \alpha_{C,A,B}^{-1} \circ \beta_{A \otimes B, C} \circ \alpha_{A,B,C}^{-1} = (\beta_{A,C} \otimes \mathrm{id}_B) \circ \alpha_{A,C,B}^{-1} \circ (\mathrm{id}_A \otimes \beta_{B,C}).
> $$

> **注**：六边形公理保证辫子与结合子的相干性：对三个对象换位时，无论先换前两个还是后两个再换，结果一致。这是对"辫群"（braid group）公理的范畴化。辫子 $\beta_{A,B}$ 一般**不要求** $\beta_{B,A} \circ \beta_{A,B} = \mathrm{id}_{A \otimes B}$。

## 对称幺半范畴

<!-- symmetric_monoidal_category_def -->
> [!Definition]
> **对称幺半范畴 Symmetric Monoidal Category**：一个**对称幺半范畴**（symmetric monoidal category）是辫子幺半范畴 $(\mathcal{C}, \otimes, I, \alpha, \lambda, \rho, \beta)$，进一步满足**对称条件**：
> $$
> \beta_{B,A} \circ \beta_{A,B} = \mathrm{id}_{A \otimes B}, \qquad \forall A, B \in \mathrm{Ob}(\mathcal{C}).
> $$

> **注**：对称条件要求换位两次回到原来，即 $\beta$ 是"对合"的。对称幺半范畴中，张量积在同构意义下满足交换律。辫子幺半范畴（不对称）是对称幺半范畴的推广，在量子群、辫子群表示、拓扑场论中自然出现。

## 例子

<!-- braided_symmetric_examples -->
> [!Example]+
> **辫子与对称幺半范畴的例子**：
> 1. **向量空间张量积**：$(\mathbf{Vect}_F, \otimes_F, F)$ 是对称幺半范畴，辫子为交换同构 $\beta_{V,W}: V \otimes_F W \xrightarrow{\sim} W \otimes_F V$，$v \otimes w \mapsto w \otimes v$；对称条件显然成立。
> 2. **集合的笛卡尔积**：$(\mathbf{Set}, \times, \{*\})$ 是对称幺半范畴，辫子为 $\beta_{A,B}: A \times B \xrightarrow{\sim} B \times A$，$(a, b) \mapsto (b, a)$。
> 3. **阿贝尔群范畴**：$(\mathbf{Ab}, \otimes_{\mathbb{Z}}, \mathbb{Z})$ 是对称幺半范畴。
> 4. **超向量空间（辫子非对称的例子）**：设 $\mathbf{SVect}_F$ 为 $\mathbb{Z}/2\mathbb{Z}$-分次向量空间范畴，辫子定义为 $\beta_{V,W}(v \otimes w) = (-1)^{|v||w|} w \otimes v$（其中 $|v|, |w|$ 为元素的次数）。此辫子满足对称条件，仍为对称幺半范畴，但辫子引入了符号。
> 5. **辫子范畴（非对称）**：量子群 $U_q(\mathfrak{g})$ 的表示范畴（当 $q$ 不是单位根时）是辫子幺半范畴，但一般**不是**对称的（$\beta_{B,A} \circ \beta_{A,B} \neq \mathrm{id}$）。

<!-- symmetric_monoidal_coherence -->
> [!Theorem]
> **对称幺半范畴的相干性 Coherence for Symmetric Monoidal Categories**：在对称幺半范畴中，所有由 $\alpha$、$\lambda$、$\rho$、$\beta$ 及其逆通过函子性构造的、具有相同源与靶的态射均相等。等价地，每个对称幺半范畴均与某个严格对称幺半范畴范畴等价。
>
> **证明思路**：在 Mac Lane 相干定理的基础上，进一步利用对称条件与六边形公理归纳验证；等价到严格情形的构造类似幺半范畴相干定理。
