---
title: 一致性
---

# 一致性

<!-- consistency -->
> [!Definition]
> 一致性 Consistency：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集，如果存在 $\varphi$，使得：
> $$
> \Gamma \vdash \varphi \qquad \text{且} \qquad \Gamma \vdash \neg \varphi
> $$
> 那么称 $\Gamma$ 是不一致的；反之，则称 $\Gamma$ 是一致的。

> **注**：公式集不一致，说明它能推出矛盾。在经典命题逻辑中，一旦推出矛盾，那么就能推出任意公式：
> $$
> \frac{\Gamma\vdash \bot}{\Gamma \vdash \psi}
> $$
> 其中，$\psi$ 是 $\mathcal{L}_0$ 的任意公式，这称为“爆炸原理 Principle of Explosion”。

> [!Definition]
> 极大一致集：设 $\Gamma$ 是 $\mathcal{L}_0$ 的公式集。$\Gamma$ 是极大一致的，当且仅当，$\Gamma$ 是一致的，且如果任意公式 $\varphi$ 满足 $\Gamma \cup \{\varphi\}$ 是一致的，那么 $\varphi\in\Gamma$。