---
title: 公式的形成规则
tags:
  - logic
  - propositional_logic
  - syntax
---
# 公式的形成规则

有了 $\mathcal{L}_0$ 的[[variables_and_connectives|初始符号]]，下面定义 $\mathcal{L}_0$ 的语法规则。符合语法规则的字符串，称为 $\mathcal{L}_0$ 的“公式”，通常记为 $\varphi_0,\varphi_1,\cdots$ 或 $\varphi,\psi$。由公式组成的集合，称为“公式集”，通常记为 $\Gamma_0,\Gamma_1,\cdots$ 或 $\Gamma,\Delta,\Sigma$。

<!-- formation_rules_of_L0 -->
> [!Definition]
> **公式形成规则**：$\mathcal{L}_0$ 公式的形成规则如下：
> 1. 任意命题变元 $p_0,p_1,\cdots$ 都是 $\mathcal{L}_0$ 的公式
> 2. 如果 $\varphi$ 是公式，那么 $\neg \varphi$ 也是公式
> 3. 如果 $\varphi$ 和 $\psi$ 是公式，那么 $(\varphi \to \psi)$ 也是公式

<!-- formula_of_L0 -->
> [!Definition]
> **公式 Formula**：$\varphi$ 是 $\mathcal{L}_0$ 的公式，当且仅当，$\varphi$ 是有限次使用上述形成规则得到的字符串。除此之外没有别的公式。

> [!Example]+
> 以下是 $\mathcal{L}_0$ 的一些公式：
> - $p$
> - $\neg\neg p$
> - $(p \to q)$
> - $\neg (p \to q)$
> - $((p \to q) \to r)$
> - $\neg (p \to \neg q)$
> - $(\neg p \to q)$

> [!Example]+
> 以下不是 $\mathcal{L}_0$ 的公式：
> - $\neg$
> - $pq$
> - $p\to\to q$
> - $p \to$
> - $\neg \to p$
> - $\neg (p \to)$
> - $\neg (p \to q$
> - $\neg (p \to q))$
> - $\neg \neg \to p$