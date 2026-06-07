
# 可靠性与完全性

<!-- soundness_l_1 -->
> [!Theorem] 
> **可靠性 Soundness**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的公式集，$\varphi$ 是 $\mathcal{L}_1$ 的一个公式。如果 $\Gamma \vdash \varphi$，那么 $\Gamma \models \varphi$。

> **注**：可靠性说明语法上，凡是能被演绎系统形式证明出来的公式，语义上都确实成立，形式证明不会证明出语义上错误的结论。一阶语言 $\mathcal{L}_1$ 也具有可靠性，也即
> $$
> \Gamma \vdash \varphi \implies \Gamma \models \varphi
> $$

> [!Corollary]
> **内定理都是有效式**：特别地，当 $\Gamma = \varnothing$ 时，如果 $\vdash \varphi$，那么 $\models \varphi$。

> [!Theorem]
> **完全性 Completeness**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的公式集，$\varphi$ 是 $\mathcal{L}_1$ 的一个公式。如果 $\Gamma \models \varphi$，那么 $\Gamma \vdash \varphi$。

> **注**：完全性说明凡是语义上成立的公式，语法上都能被演绎系统形式证明出来。一阶语言 $\mathcal{L}_1$ 既具备可靠性，也具备完全性，也即
> $$
> \Gamma \vdash \varphi \iff \Gamma \models \varphi
> $$

