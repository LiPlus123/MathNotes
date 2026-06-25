# 代数闭包

## 代数闭包与代数闭域

<!-- algebraically_closed_field_def -->
> [!Definition]
> **代数闭域 Algebraically Closed Field**：域 $K$ 称为**代数闭域**，如果每个非常数多项式 $f(x) \in K[x]$ 在 $K$ 中都有根（等价地，在 $K[x]$ 中分解为一次因式之积）。

<!-- algebraic_closure_def -->
> [!Definition]
> **代数闭包 Algebraic Closure**：设 $F$ 为域。若扩张 $\Omega/F$ 满足：
> 1. $\Omega$ 是代数闭域；
> 2. $\Omega/F$ 是代数扩张；
>
> 则称 $\Omega$ 为 $F$ 的一个**代数闭包**，常记为 $\overline{F}$（在选定模型后）。

## 代数闭包的存在与唯一性

<!-- algebraic_closure_existence -->
> [!Theorem]
> **代数闭包存在性**：任意域 $F$ 都存在代数闭包。
>
> **证明思路**：可先构造所有首一不可约多项式的分裂域并做递增并，或借助 Zorn 引理构造极大代数扩张，再证明其代数闭性。

<!-- algebraic_closure_uniqueness -->
> [!Theorem]
> **代数闭包唯一性（同构意义下）**：任意两个 $F$ 的代数闭包在保持 $F$ 不动的意义下同构。
>
> **证明思路**：利用同态延拓定理，把 $F$-嵌入在代数扩张塔上逐步延拓，最终得到双向嵌入并同构。

## 广义代数基本定理

<!-- generalized_fta_theorem -->
> [!Theorem]
> **广义代数基本定理**：域 $K$ 代数闭当且仅当每个非常数多项式 $f(x) \in K[x]$ 在 $K$ 上可分解为一次因式之积。
>
> **证明思路**：定义方向即“每个非常数多项式有根”；反向可通过对次数归纳，反复提取线性因子。

<!-- fta_complex_corollary -->
> [!Corollary]
> **经典代数基本定理**：$\mathbb{C}$ 是代数闭域；因此任意非常数复系数多项式在 $\mathbb{C}$ 中有根并完全分裂。

## 例子

<!-- algebraic_closure_example_Qbar -->
> [!Example]+
> **$\mathbb{Q}$ 的代数闭包**：
> $$
> \overline{\mathbb{Q}}=\{\alpha\in\mathbb{C}\mid \alpha\text{ 在 }\mathbb{Q}\text{ 上代数}\}
> $$
> 是 $\mathbb{Q}$ 的代数闭包。

<!-- algebraic_closure_example_Fpbar -->
> [!Example]+
> **$\mathbb{F}_p$ 的代数闭包**：$\overline{\mathbb{F}_p}$ 可看作所有有限扩张 $\mathbb{F}_{p^n}$ 的并（在固定嵌入下）。
