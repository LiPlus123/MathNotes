# 幺半范畴的定义

## 幺半范畴

<!-- monoidal_category_def -->
> [!Definition]
> **幺半范畴 Monoidal Category**：一个**幺半范畴**（monoidal category）是一个六元组 $(\mathcal{C}, \otimes, I, \alpha, \lambda, \rho)$，其中：
> - $\mathcal{C}$ 是范畴；
> - $\otimes: \mathcal{C} \times \mathcal{C} \to \mathcal{C}$ 是**张量积**（tensor product）函子，称为幺半积；
> - $I \in \mathrm{Ob}(\mathcal{C})$ 是**单位对象**（unit object）；
> - $\alpha$：**结合子**（associator），是自然同构
> $$
> \alpha_{A,B,C}: (A \otimes B) \otimes C \xrightarrow{\sim} A \otimes (B \otimes C);
> $$
> - $\lambda$：**左单位子**（left unitor），是自然同构
> $$
> \lambda_A: I \otimes A \xrightarrow{\sim} A;
> $$
> - $\rho$：**右单位子**（right unitor），是自然同构
> $$
> \rho_A: A \otimes I \xrightarrow{\sim} A;
> $$
>
> 满足以下相干公理：
>
> **五边形公理（Pentagon Axiom）**：对所有 $A, B, C, D \in \mathrm{Ob}(\mathcal{C})$，下图交换：
> $$
> \alpha_{A,B,C \otimes D} \circ \alpha_{A \otimes B, C, D} = (\mathrm{id}_A \otimes \alpha_{B,C,D}) \circ \alpha_{A, B \otimes C, D} \circ (\alpha_{A,B,C} \otimes \mathrm{id}_D);
> $$
>
> **三角公理（Triangle Axiom）**：对所有 $A, B \in \mathrm{Ob}(\mathcal{C})$，下图交换：
> $$
> (\mathrm{id}_A \otimes \lambda_B) \circ \alpha_{A, I, B} = \rho_A \otimes \mathrm{id}_B.
> $$

> **注**：幺半范畴是"对象可以做张量积"的范畴，类比于幺半群（集合上的结合乘法与单位元），但结合律与单位律仅在同构意义下成立（而非严格等式）。若 $\alpha$、$\lambda$、$\rho$ 均为恒等自然变换，则称为**严格幺半范畴**（strict monoidal category）。

## Mac Lane 相干定理

<!-- mac_lane_coherence -->
> [!Theorem]
> **Mac Lane 相干定理 Mac Lane Coherence Theorem**：设 $(\mathcal{C}, \otimes, I, \alpha, \lambda, \rho)$ 是幺半范畴。则所有由 $\alpha$、$\lambda$、$\rho$ 及其逆通过函子性（自然变换的水平/垂直复合）构造的、具有相同源与靶的态射均相等。
>
> 等价地：每个幺半范畴均与某个严格幺半范畴**范畴等价**。
>
> **证明思路**：对"括号化表达式"（bracketing）的形式归纳：引入自由幺半范畴，利用五边形公理保证所有重新括号化的路径唯一，再由此推出一般情形。等价到严格情形的构造用 Cayley 定理类比的端函子。

## 例子

<!-- monoidal_category_examples -->
> [!Example]+
> **幺半范畴的例子**：
> 1. $(\mathbf{Set}, \times, \{*\}, \alpha, \lambda, \rho)$：集合范畴配以笛卡尔积，单位对象为单点集。
> 2. $(\mathbf{Vect}_F, \otimes_F, F, \alpha, \lambda, \rho)$：$F$-向量空间范畴配以张量积，单位对象为基域 $F$（视为一维向量空间）。
> 3. $(\mathbf{Ab}, \otimes_{\mathbb{Z}}, \mathbb{Z}, \alpha, \lambda, \rho)$：阿贝尔群范畴配以整数张量积，单位对象为 $\mathbb{Z}$。
> 4. $(R\text{-}\mathbf{Mod}, \otimes_R, R, \alpha, \lambda, \rho)$：左 $R$-模范畴（$R$ 为交换环）配以 $R$ 上的张量积，单位对象为 $R$。
> 5. $(\mathbf{Cat}, \times, \mathbf{1}, \alpha, \lambda, \rho)$：小范畴范畴配以范畴的笛卡尔积，单位对象为单点范畴 $\mathbf{1}$。
> 6. **端函子范畴**：$[\mathcal{C}, \mathcal{C}]$ 配以函子复合 $\circ$，单位对象为恒等函子 $\mathrm{Id}_{\mathcal{C}}$，结合子、单位子均为恒等（严格幺半范畴）。
