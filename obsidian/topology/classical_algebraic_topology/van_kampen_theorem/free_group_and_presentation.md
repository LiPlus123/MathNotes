# 自由群与群的呈示

## 自由群

自由群的完整定义已在抽象代数章节中建立，此处仅作简要回顾以固定记号。

<!-- free_group_recap -->
> [!Definition]
> **自由群 Free Group**：集合 $S$ 上的**自由群 Free Group** $F(S)$ 是由 $S$ 生成的、满足泛性质的群：对任意群 $G$ 和任意映射 $\varphi: S \to G$，存在唯一的群同态 $\tilde{\varphi}: F(S) \to G$ 使得 $\tilde{\varphi}|_S = \varphi$。当 $S = \{a_1, \ldots, a_n\}$ 有限时，亦记 $F_n = F(S)$，称为**$n$ 元自由群**。

> **注**：$F(S)$ 的元素是 $S \cup S^{-1}$（其中 $S^{-1} = \{a^{-1} \mid a \in S\}$）中符号的有限**约化字（reduced words）**，乘法为字的拼接后约化。$F_1 \cong \mathbb{Z}$；$F_n$（$n \geq 2$）是非阿贝尔群。

## 群的生成元与关系呈示

<!-- group_presentation_definition -->
> [!Definition]
> **群的呈示 Group Presentation**：设 $S$ 是符号集（**生成元集 Generators**），$R \subseteq F(S)$ 是字的集合（**关系集 Relations**）。定义由生成元集 $S$ 和关系集 $R$ **呈示 Presented** 的群为：
> $$\langle S \mid R \rangle = F(S) \big/ N(R),$$
> 其中 $N(R)$ 是 $R$ 在 $F(S)$ 中生成的**正规闭包 Normal Closure**（即包含 $R$ 的最小正规子群）。

<!-- group_presentation_examples -->
> [!Example]+
> **群的呈示例子 Examples of Group Presentations**：
> 1. 循环群：$\mathbb{Z} = \langle a \mid \varnothing \rangle = \langle a \rangle$（无关系）；$\mathbb{Z}/n\mathbb{Z} = \langle a \mid a^n \rangle$；
> 2. $n$ 阶二面体群：$D_n = \langle r, s \mid r^n, s^2, srsr \rangle$；
> 3. 自由群：$F_n = \langle a_1, \ldots, a_n \mid \varnothing \rangle$（无关系）；
> 4. 自由阿贝尔群：$\mathbb{Z}^n = \langle a_1, \ldots, a_n \mid a_i a_j a_i^{-1} a_j^{-1},\ 1 \leq i < j \leq n \rangle$。

## 群的自由积

<!-- free_product_definition -->
> [!Definition]
> **群的自由积 Free Product of Groups**：设 $G, H$ 是群，其**自由积 Free Product** $G * H$ 定义为：
> $$G * H = \langle S_G \cup S_H \mid R_G \cup R_H \rangle,$$
> 其中 $G = \langle S_G \mid R_G \rangle$，$H = \langle S_H \mid R_H \rangle$（取不相交的生成元集）。$G * H$ 中的元素是 $G$ 和 $H$ 的元素交替出现的约化字（各分量非单位元），群运算为拼接后约化。

<!-- free_product_universal_property -->
> [!Theorem]
> **自由积的泛性质 Universal Property of Free Product**：$G * H$ 连同含入同态 $i_G: G \hookrightarrow G * H$ 和 $i_H: H \hookrightarrow G * H$ 满足：对任意群 $K$ 和同态 $\varphi_G: G \to K$，$\varphi_H: H \to K$，存在唯一同态 $\varphi: G * H \to K$ 使得 $\varphi \circ i_G = \varphi_G$，$\varphi \circ i_H = \varphi_H$。即 $G * H$ 是群范畴中 $G$ 与 $H$ 的**余积（Coproduct）**。

## 合成积（推出）

<!-- amalgamated_product_definition -->
> [!Definition]
> **合成积 Amalgamated Product**：设 $G, H, A$ 是群，$\varphi: A \to G$ 和 $\psi: A \to H$ 是群同态。$G$ 与 $H$ 沿 $A$ 的**合成积（融合自由积）Amalgamated Free Product** 定义为：
> $$G *_A H = (G * H) \big/ N\!\left(\{\varphi(a)\psi(a)^{-1} \mid a \in A\}\right),$$
> 即在 $G * H$ 中附加关系 $\varphi(a) = \psi(a)$（对所有 $a \in A$）。等价地：
> $$G *_A H = \langle S_G \cup S_H \mid R_G \cup R_H \cup \{\varphi(a)\psi(a)^{-1} \mid a \in A\} \rangle.$$

<!-- amalgamated_product_universal_property -->
> [!Theorem]
> **合成积的泛性质 Universal Property of Amalgamated Product**：$G *_A H$ 连同同态 $j_G: G \to G *_A H$ 和 $j_H: H \to G *_A H$（满足 $j_G \circ \varphi = j_H \circ \psi$）满足：对任意群 $K$ 和同态 $\alpha: G \to K$，$\beta: H \to K$ 满足 $\alpha \circ \varphi = \beta \circ \psi$，存在唯一同态 $\Phi: G *_A H \to K$ 使得 $\Phi \circ j_G = \alpha$，$\Phi \circ j_H = \beta$。即 $G *_A H$ 是群范畴中 $G$ 和 $H$ 在 $A$ 上的**推出（Pushout）**。

<!-- amalgamated_product_examples -->
> [!Example]+
> **合成积的例子 Examples of Amalgamated Products**：
> 1. 当 $A = \{e\}$（平凡群）时，$G *_{\{e\}} H = G * H$（自由积）；
> 2. $\langle a, b \mid a^2 = b^3 \rangle = \mathbb{Z} *_{\mathbb{Z}} \mathbb{Z}$（三叶结的结点群，$\mathbb{Z}$ 通过 $1 \mapsto 2$ 和 $1 \mapsto 3$ 分别嵌入）；
> 3. $\mathbb{Z} *_{\mathbb{Z}} \mathbb{Z}$（$\mathbb{Z}$ 通过恒等嵌入两个 $\mathbb{Z}$）$\cong \mathbb{Z}$（两个无限循环群沿全体合并）。
