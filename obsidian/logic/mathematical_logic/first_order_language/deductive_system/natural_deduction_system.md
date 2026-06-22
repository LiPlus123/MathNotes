---
title: 自然演绎系统
tags:
  - logic
  - first_order_logic
  - deductive_system
---

# 自然演绎系统

希尔伯特式的一阶公理系统理论上有无穷多的公理，与两条推理规则，使用公理系统编写的证明会非常冗长。一阶逻辑的“自然演绎系统 Natural Deduction System”在命题逻辑自然演绎系统的十条推理规则的基础上，增加了四条关于量词的推理规则，一共十四条推理规则。

<!-- universal_introduction_rule -->
> [!Definition]
> **全称引入规则 Universal Introduction Rule**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的公式集，$\varphi$ 是 $\mathcal{L}_1$ 的公式，$x$ 是 $\mathcal{L}_1$ 的一个个体变元符号。全称引入规则为：
> $$
> \frac{\Gamma \vdash \varphi}{\Gamma \vdash \forall x \varphi}
> $$
> 其中，$x$ 不能自由出现在任何未解除假设中。

> **注**：全称引入规则和公理系统的 Gen 规则密切相关。全称引入规则说明，在已知 $\Gamma$ 的前提下，能推出 $\varphi$，并且 $x$ 没有出现在任何未解除假设中，那么 $\Gamma$ 能推出 $\forall x \varphi$。

<!-- universal_elimination_rule -->
> [!Definition]
> **全称消去规则 Universal Elimination Rule**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的公式集，$\varphi$ 是 $\mathcal{L}_1$ 的公式，$x$ 是 $\mathcal{L}_1$ 的一个个体变元符号，$\sigma$ 是 $\mathcal{L}_1$ 的一个项。全称消去规则为：
> $$
> \frac{\Gamma \vdash \forall x \varphi}{\Gamma \vdash \varphi(x;\sigma)}
> $$
> 其中，$\varphi(x;\sigma)$ 是一个“自由代入”。

> **注**：全称消去规则说明，在已知 $\Gamma$ 的前提下，能推出 $\forall x \varphi$，并且 $\sigma$ 可以自由代入 $\varphi$ 中，那么 $\Gamma$ 能推出 $\varphi(x;\sigma)$。该规则与“代入类有效式” $\forall x \varphi \to \varphi(x;\sigma)$ 有密切关系。

<!-- existential_introduction_rule -->
> [!Definition]
> **存在引入规则 Existential Introduction Rule**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的公式集，$\varphi$ 是 $\mathcal{L}_1$ 的公式，$x$ 是 $\mathcal{L}_1$ 的一个个体变元符号，$\sigma$ 是 $\mathcal{L}_1$ 的一个项。存在引入规则为：
> $$
> \frac{\Gamma \vdash \varphi(x;\sigma)}{\Gamma \vdash \exists x \varphi}
> $$
> 其中，$\varphi(x;\sigma)$ 是一个“自由代入”。

> **注**：存在引入规则说明，在已知 $\Gamma$ 的前提下，能推出 $\varphi(x;\sigma)$，并且 $\sigma$ 可以自由代入 $\varphi$ 中，那么 $\Gamma$ 能推出 $\exists x \varphi$。该规则与“代入类有效式” $\varphi(x;\sigma) \to \exists x \varphi$ 有密切关系。

<!-- existential_elimination_rule -->
> [!Definition]
> **存在消去规则 Existential Elimination Rule**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的公式集，$\varphi$ 和 $\psi$ 是 $\mathcal{L}_1$ 的公式，$x$ 是 $\mathcal{L}_1$ 的一个个体变元符号。存在消去规则为：
> $$
> \frac{\Gamma \vdash \exists x \varphi \qquad (\Gamma, \varphi) \vdash \psi}{\Gamma \vdash \psi}
> $$

> **注**：存在消去规则说明，在已知 $\Gamma$ 的前提下，能推出 $\exists x \varphi$，并且在假设 $\varphi$ 的前提下能推出 $\psi$，那么解除假设 $\varphi$，$\Gamma$ 能推出 $\psi$。

<!-- natural_deduction_formal_proof_l_1 -->
> [!Definition]
> **自然演绎系统的形式证明**：设 $\Gamma$ 是 $\mathcal{L}_1$ 的一个公式集，$\varphi$ 是 $\mathcal{L}_1$ 的一个公式。如果存在一棵有限的树，满足以下条件：
> 1. 根节点是 $\varphi$
> 2. 每个叶节点是 $\Gamma$ 中的一个公式，或者是一个假设
> 3. 每个非叶节点都是由其子节点通过自然演绎系统的推理规则得到的
>
> 那么，称 $\Gamma$ 能形式证明 $\varphi$，记为 $\Gamma \vdash \varphi$。