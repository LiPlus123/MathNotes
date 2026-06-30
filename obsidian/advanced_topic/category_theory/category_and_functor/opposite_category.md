# 对偶范畴

## 对偶范畴的定义

<!-- opposite_category_def -->
> [!Definition]
> **对偶范畴 Opposite Category**：设 $\mathcal{C}$ 为范畴。其**对偶范畴**（也称**逆范畴**）$\mathcal{C}^{\mathrm{op}}$ 定义如下：
> 1. $\mathrm{Ob}(\mathcal{C}^{\mathrm{op}}) = \mathrm{Ob}(\mathcal{C})$；
> 2. 对 $A, B \in \mathrm{Ob}(\mathcal{C}^{\mathrm{op}})$，$\mathrm{Hom}_{\mathcal{C}^{\mathrm{op}}}(A, B) = \mathrm{Hom}_{\mathcal{C}}(B, A)$；记 $\mathcal{C}$ 中态射 $f: B \to A$ 对应的 $\mathcal{C}^{\mathrm{op}}$ 中态射为 $f^{\mathrm{op}}: A \to B$；
> 3. 复合 $g^{\mathrm{op}} \circ_{\mathrm{op}} f^{\mathrm{op}} := (f \circ g)^{\mathrm{op}}$；
> 4. $\mathrm{id}_A^{\mathrm{op}} = \mathrm{id}_A$（按原范畴的恒等态射）。

<!-- opposite_category_is_category -->
> [!Theorem]
> **对偶范畴是范畴 Opposite Category is a Category**：上述定义的 $\mathcal{C}^{\mathrm{op}}$ 满足范畴公理。
>
> **证明思路**：结合律由 $\mathcal{C}$ 的结合律转写而来，单位律由 $\mathcal{C}$ 的单位律转写而来。

<!-- opposite_involutive -->
> [!Theorem]
> **对偶的对偶等于自身 Double Opposite**：对任意范畴 $\mathcal{C}$，$(\mathcal{C}^{\mathrm{op}})^{\mathrm{op}} = \mathcal{C}$。
>
> **证明思路**：两次反转方向回到原方向，逐项核对。

## 对偶范畴的例子

<!-- opposite_example_preorder -->
> [!Example]+
> **前序集的对偶**：设 $(P, \leq)$ 为前序集，视作范畴 $\mathcal{P}$（见 [[definition_of_category|范畴的例子]]）。则 $\mathcal{P}^{\mathrm{op}}$ 即由相反序 $(P, \geq)$ 诱导的范畴。

<!-- opposite_example_monoid -->
> [!Example]+
> **幺半群的对偶**：设 $M$ 为幺半群，对应单对象范畴 $\mathcal{B}M$。则 $(\mathcal{B}M)^{\mathrm{op}} = \mathcal{B}(M^{\mathrm{op}})$，其中 $M^{\mathrm{op}}$ 是 $M$ 在相反乘法 $a \cdot_{\mathrm{op}} b := b \cdot a$ 下的幺半群。

<!-- opposite_example_set -->
> [!Example]+
> **$\mathbf{Set}^{\mathrm{op}}$**：$\mathbf{Set}^{\mathrm{op}}$ 不同构于 $\mathbf{Set}$，但是它仍然是定义良好的范畴；按 Pontryagin–type 对偶可知 $\mathbf{Set}^{\mathrm{op}}$ 等价于完备原子布尔代数范畴。

## 对偶原理

<!-- duality_principle -->
> [!Theorem]
> **对偶原理 Duality Principle**：设 $\sigma$ 为范畴论语言中的一个陈述（即由"对象、态射、复合、恒等态射、结合律、单位律"等基本概念构成的命题）。定义其**对偶陈述** $\sigma^{\mathrm{op}}$ 为：将所有态射反向、并交换"源"与"靶"、交换复合的次序后得到的陈述。
>
> 若 $\sigma$ 在所有范畴中成立，则 $\sigma^{\mathrm{op}}$ 也在所有范畴中成立。
>
> **证明思路**：$\sigma^{\mathrm{op}}$ 在 $\mathcal{C}$ 中成立 $\iff$ $\sigma$ 在 $\mathcal{C}^{\mathrm{op}}$ 中成立。若 $\sigma$ 对所有范畴成立，特别地对 $\mathcal{C}^{\mathrm{op}}$ 成立，从而 $\sigma^{\mathrm{op}}$ 对 $\mathcal{C}$ 成立。

> **注**：对偶原理使得"证明一遍即得一对结论"成为可能：例如下文中"单态射"与"满态射"互为对偶（见 [[monomorphism_and_epimorphism]]），"初对象"与"终对象"互为对偶（见 [[special_objects]]），它们的基本性质可由对偶原理一并得到。
