---
title: 类存在定理
tags:
  - set_theory
  - foundation
  - nbg
---

# 类存在定理

NBG 的核心优势在于它可以在元语言中系统地构造类。对任意直谓公式，都存在由满足该公式的集合所组成的类，这一事实通常被称为类存在元定理。许多基本类运算都由它统一产生。

<!-- membership_class_axiom -->
> [!Definition]
> **属于类公理 Membership Class Axiom**：存在二元类关系
> $$
> E := \{(x,y) \mid x \in y\}.
> $$
> 也就是说，“属于”本身可以作为一个类关系来讨论。更一般地，若公式 $\varphi(x)$ 是直谓的，则存在类
> $$
> \{x \mid \varphi(x)\}.
> $$
> 这说明“满足某性质的全部集合”在直谓条件下形成类。

<!-- intersection_class_axiom -->
> [!Definition]
> **交类公理 Intersection Class Axiom**：对任意类 $A,B$，存在类
> $$
> A \cap B := \{x \mid x \in A \land x \in B\}.
> $$

<!-- complement_class_axiom -->
> [!Definition]
> **补类公理 Complement Class Axiom**：对任意类 $A$，存在类
> $$
> A^c := \{x \mid x \notin A\} = V \setminus A.
> $$

<!-- domain_class_axiom -->
> [!Definition]
> **定义域公理 Domain Class Axiom**：设 $R$ 是类关系。定义其**定义域**为
> $$
> \mathrm{dom}(R) := \{x \mid \exists y((x,y) \in R)\}.
> $$
> 类存在原理保证它仍为一个类。

<!-- inverse_class_axiom -->
> [!Definition]
> **逆类公理 Inverse Class Axiom**：设 $R$ 是类关系。定义其**逆类**为
> $$
> R^{-1} := \{(y,x) \mid (x,y) \in R\}.
> $$

<!-- cycle_permutation_class_axiom -->
> [!Definition]
> **循环置换类公理 Cycle Permutation Class Axiom**：设 $R$ 是 $n$ 元类关系，循环置换其坐标得到的新类关系仍然存在。特别地，对三元类关系 $T$，类
> $$
> T' := \{(y,z,x) \mid (x,y,z) \in T\}
> $$
> 存在。

<!-- transposition_class_axiom -->
> [!Definition]
> **转置类公理 Transposition Class Axiom**：设 $R$ 是 $n$ 元类关系，交换任意两个坐标后得到的新类关系仍然存在。特别地，对二元类关系 $R$，这正给出逆类 $R^{-1}$ 的存在。

<!-- predicative_formula_definition -->
> [!Definition]
> **直谓公式 Predicative Formula**：若一个公式中类变量只作为参数出现，而量词只对集合变量进行约束，则称该公式为**直谓公式**。

<!-- class_existence_metatheorem -->
> [!Theorem]
> **类存在元定理 Class Existence Metatheorem**：对每个直谓公式 $\varphi(x,p_1,\ldots,p_n,A_1,\ldots,A_m)$，都存在类 $B$，使得对每个集合 $x$ 都有
> $$
> x \in B \iff \varphi(x,p_1,\ldots,p_n,A_1,\ldots,A_m).
> $$
> 
> **证明思路**：由 NBG 的有限组类构造公理出发，对公式复杂度做归纳。原子公式给出基本类，逻辑联结词对应交类、补类等运算，存在量词对应定义域类等构造。

<!-- nbg_conservative_extension_of_zfc -->
> [!Theorem]
> **NBG 是 ZFC 的保守扩张 NBG Is a Conservative Extension of ZFC**：若一个仅含集合量词的语句能在 NBG 中证明，则它也能在 ZFC 中证明。
> 
> **证明思路**：NBG 中关于类的语言只是为表达集合论内容提供外部编码；对纯集合语句，类变量可通过相应的 definable class 消去，因此不会得到新的纯集合定理。

> **注**：Morse-Kelley 集合论（MK）比 NBG 更强，它允许更一般的类理解原则，不再限于直谓公式。因而 MK 不再显然是 ZFC 的保守扩张。