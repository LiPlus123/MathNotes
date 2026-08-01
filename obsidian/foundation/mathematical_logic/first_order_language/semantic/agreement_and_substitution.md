---
title: 合同与代入
tags:
  - logic
  - first_order_logic
  - semantic
---
# 合同与代入

在结构 $\mathfrak{M}$ 确认的情况下，考察赋值 $v$ 的变化，如何影响项和公式的“真值”。如果真值在两个不同的赋值之间保持不变，那么称这两个赋值在对应项和公式上“合同”。

<!-- agreement_l_1 -->
> [!Definition]
> **合同 Agreement**：设 $\mathfrak{M}=(M,I)$ 是 $\mathcal{L}_1$ 的一个结构，$u,v$ 是 $\mathcal{L}_1$ 的变量赋值。
> 1. 如果 $\tau$ 是 $\mathcal{L}_1$ 的项，并且对于任意 $x\in \mathrm{vr}(\tau)$，都有 $u(x)=v(x)$，那么称 $u$ 与 $v$ 在项 $\tau$ 上合同。
> 2. 如果 $\varphi$ 是 $\mathcal{L}_1$ 的公式，并且对于任意 $x\in \mathrm{fr}(\varphi)$，都有 $u(x)=v(x)$，那么称 $u$ 与 $v$ 在公式 $\varphi$ 上合同。

> **注**：在结构 $\mathfrak{M}$ 确定的情况下，非逻辑符号也都确定了。因此，公式 $\varphi$ 的真值只依赖于自由变元的赋值。那么，$u$ 与 $v$ 在公式 $\varphi$ 上合同，只要求 $u,v$ 在所有自由变元上相同。项中没有约束变元，那么，$u$ 与 $v$ 在项 $\tau$ 上合同，要求 $u,v$ 在项 $\tau$ 中出现的所有变元上相同。

> [!Lemma]
> **合同引理 Agreement Lemma**：设 $\mathfrak{M}=(M,I)$ 是 $\mathcal{L}_1$ 的一个结构，$u,v$ 是 $\mathcal{L}_1$ 的变量赋值。
> 1. 如果 $u$ 与 $v$ 在项 $\tau$ 上合同，那么 $\bar{u}(\tau)=\bar{v}(\tau)$。
> 2. 如果 $u$ 与 $v$ 在公式 $\varphi$ 上合同，那么 $(\mathfrak{M},u)\models \varphi$ 当且仅当 $(\mathfrak{M},v)\models \varphi$。

在很多时候，会将一些特例代入一阶公式中。比如，“如果 $x$ 是偶数，那么 $x$ 可以被 2 整除”。将 $4$ 代入 $x$ 后得到“如果 $4$ 是偶数，那么 $4$ 可以被 2 整除”。下面给出一阶语言中，代入的严格定义。

<!-- substitution_l_1 -->
> [!Definition]
> **代入 Substitution**：设 $x$ 是个体变元符号，$\sigma,\tau$ 是 $\mathcal{L}_1$ 的项，$\varphi$ 是 $\mathcal{L}_1$ 的公式。用项 $\sigma$ 代入项 $\tau$ 中变元 $x$ 的结果记为 $\tau(x;\sigma)$，递归定义为：
> 1. 如果 $\tau=y\in\mathcal{V}$，那么
> $$
> \tau(x;\sigma)=\begin{cases}
> \sigma & y=x,\\
> y & y\neq x;
> \end{cases}
> $$
> 2. 如果 $\tau=c\in\mathcal{C}$，那么 
> $$
> \tau(x;\sigma)=c
> $$
> 3. 如果 $\tau=f(\tau_1,\cdots,\tau_n)$，其中 $f\in \mathcal{F}$ 是 $n$ 元函数符号，那么
> $$
> \tau(x;\sigma)=f(\tau_1(x;\sigma),\cdots,\tau_n(x;\sigma)).
> $$
>
> 用项 $\sigma$ 代入公式 $\varphi$ 中变元 $x$ 的结果记为 $\varphi(x;\sigma)$，递归定义为：
> 1. 如果 $\varphi=R(\tau_1,\cdots,\tau_n)$，其中 $R$ 是 $n$ 元关系符号，那么
> $$
> \varphi(x;\sigma)=R(\tau_1(x;\sigma),\cdots,\tau_n(x;\sigma));
> $$
> 2. 如果 $\varphi=\tau_1\simeq \tau_2$，那么
> $$
> \varphi(x;\sigma)=\tau_1(x;\sigma)\simeq \tau_2(x;\sigma);
> $$
> 3. 如果 $\varphi=\neg \psi$，那么 
> $$
> \varphi(x;\sigma)=\neg(\psi(x;\sigma))
> $$
> 4. 如果 $\varphi=\psi\to\theta$，那么 
> $$
> \varphi(x;\sigma)=\psi(x;\sigma)\to\theta(x;\sigma)
> $$
> 5. 如果 $\varphi=\forall y\psi$，那么
> $$
> \varphi(x;\sigma)=\begin{cases}
> \forall y\psi & y=x,\\
> \forall y(\psi(x;\sigma)) & y\neq x.
> \end{cases}
> $$

> **注**：代入是语法操作，直观上就是用项 $\sigma$ 替换项或公式中变元 $x$ 的所有自由出现。量词情形中，如果被代入的变元 $x$ 已经被外层 $\forall x$ 约束，则不继续进入其辖域。

> [!Example]
> 下面给出几个代入的例子，设 $\sigma = g(y)$
> - 设 $\tau=f(x,c)$，代入后 $\tau(x;g(y))=f(g(y),c)$
> - 设 $\varphi=\forall x R(x,y)$，代入后  $\varphi(x;g(y))=\forall x R(x,y)$
> - 设 $\varphi=\forall x R(x,y)$，代入后  $\varphi(y;g(y))=\forall x R(x,g(y))$
> - 设 $\varphi=\neg \forall y R(x,y)$，代入后  $\varphi(x;g(y))=\neg \forall y R(g(y),y)$
> - 设 $\varphi=\forall x (R(x,y)\to S(y))$，代入后  $\varphi(y;g(y))=\forall x (R(x,g(y))\to S(g(y)))$
> - 设 $\varphi=\forall y (R(x,y)\to S(y))$，代入后  $\varphi(x;g(y))=\forall y (R(g(y),y)\to S(y))$

再区分一下“代入”和“自由代入”的概念。“代入”是将项 $\sigma$ 替换项或公式中变元 $x$ 的所有自由出现，不管代入后 $\sigma$ 中的变元是否会被量词约束。而“自由代入”要求 $\sigma$ 中的变元在代入后不能落入量词辖域而变成约束变元。下面给出自由代入的准确定义。

<!-- free_substitution_l_1 -->
> [!Definition]
> **自由代入 Free Substitution**：设 $x$ 是个体变元符号，$\sigma,\tau$ 是 $\mathcal{L}_1$ 的项，$\varphi$ 是 $\mathcal{L}_1$ 的公式。用项 $\sigma$ 代入项 $\tau$ 中变元 $x$ 的结果记为 $\tau(x;\sigma)$，$\sigma$ 在 $\tau$ 中相对于 $x$ 是自由的。用项 $\sigma$ 代入公式 $\varphi$ 中变元 $x$ 的结果记为 $\varphi(x;\sigma)$，$\sigma$ 在 $\varphi$ 中相对于 $x$ 是自由的，如果以下情形之一成立：
> 1. $\varphi$ 是原子公式
> 2. $\varphi=\neg\psi$ 且 $\sigma$ 在 $\psi$ 中相对于 $x$ 是自由的；
> 3. $\varphi=\psi\to\theta$ 且 $\sigma$ 在 $\psi$ 和 $\theta$ 中相对于 $x$ 都是自由的；
> 4. $\varphi=\forall y\psi$ 且以下条件之一成立：
>    - $x\notin \mathrm{fr}(\varphi)$；
>    - $x\in \mathrm{fr}(\varphi)$，$y\notin \mathrm{vr}(\sigma)$，并且 $\sigma$ 在 $\psi$ 中相对于 $x$ 是自由的。

> **注**：对项来说，代入和自由代入没有区别。对公式来说，“自由代入”中的“自由”是针对 $\sigma$ 而言的，在 $\varphi$ 中，用 $\sigma$ 代替 $x$ 后，不能有量词对 $\sigma$ 进行约束。

> [!Example]+
> 设 $\sigma = g(y)$，下面给出几个自由代入的例子，
> - 设 $\tau=f(x,c)$，代入后 $\tau(x;g(y))=f(g(y),c)$
> - 设 $\varphi=\forall x R(x,y)$，代入后  $\varphi(x;g(y))=\forall x R(x,y)$
> - 设 $\varphi=\forall x R(x,y)$，代入后  $\varphi(y;g(y))=\forall x R(x,g(y))$
> - 设 $\varphi=\forall x (R(x,y)\to S(y))$，代入后  $\varphi(y;g(y))=\forall x (R(x,g(y))\to S(g(y)))$
>
> 下面给出几个非自由代入的例子：
> - 设 $\varphi=\neg \forall y R(x,y)$，代入后  $\varphi(x;g(y))=\neg \forall y R(g(y),y)$
> - 设 $\varphi=\forall y (R(x,y)\to S(y))$，代入后  $\varphi(x;g(y))=\forall y (R(g(y),y)\to S(y))$

<!-- substitution_lemma_l_1 -->
> [!Lemma]
> **代入引理 Substitution Lemma**：设 $\mathfrak{M}=(M,I)$ 是 $\mathcal{L}_1$ 的一个结构，$v$ 是 $\mathcal{L}_1$ 的一个变量赋值，$\sigma,\tau$ 是项，$\varphi$ 是公式，$x$ 是个体变元符号。则：
> 1. $\bar{v}(\tau(x;\sigma))=\overline{v[x/\bar{v}(\sigma)]}(\tau)$
> 2. 如果 $\varphi(x;\sigma)$ 是自由代入，那么 $(\mathfrak{M},v)\models \varphi(x;\sigma)$，当且仅当 $(\mathfrak{M},v[x/\bar{v}(\sigma)])\models \varphi$。