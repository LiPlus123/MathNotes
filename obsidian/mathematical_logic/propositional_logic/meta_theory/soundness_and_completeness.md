---
title: 可靠性和完全性
tags:
  - logic
  - propositional_logic
---

# 可靠性和完全性

可靠性和完全性是语义和语法之间的桥梁。

<!-- soundness_l_0 -->
> [!Theorem]
> **可靠性 Soundness**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式。如果 $\Gamma \vdash \varphi$，那么 $\Gamma \models \varphi$。

> **注**：命题逻辑 $\mathcal{L}_0$ 的可靠性说明，语法上，凡是能被演绎系统形式证明出来的公式，语义上都确实成立，形式证明不会证明出语义上错误的结论。

> [!Corollary]
> **内定理都是重言式**：特别地，当 $\Gamma = \varnothing$ 时，如果 $\vdash \varphi$，那么 $\models \varphi$。

<!-- completeness_l_0 -->
> [!Theorem]
> **完全性 Completeness**：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，$\varphi$ 是 $\mathcal{L}_0$ 的一个公式。如果 $\Gamma \models \varphi$，那么 $\Gamma \vdash \varphi$。

> **注**：命题逻辑 $\mathcal{L}_0$ 的完全性说明，凡是语义上成立的公式，语法上都能被演绎系统形式证明出来。

> [!Corollary]
> **重言式都是内定理**：特别地，当 $\Gamma = \varnothing$ 时，如果 $\models \varphi$，那么 $\vdash \varphi$。