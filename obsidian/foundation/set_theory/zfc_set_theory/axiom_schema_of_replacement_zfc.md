---
title: 替代公理模式
tags:
  - set_theory
  - foundation
  - zfc
---

# 替代公理模式

替代公理模式说明：若一个公式在每个输入上都唯一确定一个输出，那么一个集合在该“函数式规则”下的像仍然是集合。它为递归定义和自然数运算的构造提供了关键保障。

<!-- axiom_schema_of_replacement_zfc -->
> [!Axiom]
> **替代公理模式 Axiom Schema of Replacement**：设公式 $\varphi(x,y,p_1,\ldots,p_n)$ 满足
> $$
> \forall x\forall y\forall z\bigl((\varphi(x,y,p_1,\ldots,p_n) \land \varphi(x,z,p_1,\ldots,p_n)) \Rightarrow y=z\bigr).
> $$
> 若 $A$ 是集合，则存在集合 $B$，使得对每个对象 $y$ 都有
> $$
> y \in B \iff \exists x \in A\ \varphi(x,y,p_1,\ldots,p_n).
> $$

<!-- addition_on_natural_numbers_definition -->
> [!Definition]
> **自然数加法 Addition on Natural Numbers**：对每个固定的 $m \in \omega$，用递归方式定义函数 $f_m: \omega \to \omega$：
> $$
> f_m(0)=m,
> $$
> $$
> f_m(n^+) = f_m(n)^+.
> $$
> 记
> $$
> m+n := f_m(n).
> $$

<!-- multiplication_on_natural_numbers_definition -->
> [!Definition]
> **自然数乘法 Multiplication on Natural Numbers**：对每个固定的 $m \in \omega$，用递归方式定义函数 $g_m: \omega \to \omega$：
> $$
> g_m(0)=0,
> $$
> $$
> g_m(n^+) = g_m(n)+m.
> $$
> 记
> $$
> m \cdot n := g_m(n).
> $$

<!-- addition_basic_properties -->
> [!Theorem]
> **自然数加法的基本性质 Basic Properties of Addition**：对任意 $m,n,k \in \omega$，有
> 1. $m+0=m$，$m+n^+=(m+n)^+$；
> 2. $m+n=n+m$；
> 3. $(m+n)+k=m+(n+k)$。
> 
> **证明思路**：前一条由递归定义直接给出。交换律和结合律可对一个变量做数学归纳法，递归地化归到后继情形。

<!-- multiplication_basic_properties -->
> [!Theorem]
> **自然数乘法的基本性质 Basic Properties of Multiplication**：对任意 $m,n,k \in \omega$，有
> 1. $m \cdot 0=0$，$m \cdot n^+ = m \cdot n + m$；
> 2. $m \cdot n = n \cdot m$；
> 3. $(m \cdot n) \cdot k = m \cdot (n \cdot k)$；
> 4. $m \cdot (n+k) = m \cdot n + m \cdot k$。
> 
> **证明思路**：同样基于递归定义与数学归纳法。分配律通常先证，再用它配合加法性质推出乘法交换律与结合律。