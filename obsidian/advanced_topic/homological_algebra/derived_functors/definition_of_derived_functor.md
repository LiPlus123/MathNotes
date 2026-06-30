# 导出函子的定义

## 左导出函子

<!-- left_derived_functor_def -->
> [!Definition]
> **左导出函子 Left Derived Functor**：设 $F: R\text{-}\mathbf{Mod} \to S\text{-}\mathbf{Mod}$ 是右正合加性函子。对任意左 $R$-模 $M$，取其投射分解
> $$
> \cdots \to P_2 \to P_1 \to P_0 \xrightarrow{\varepsilon} M \to 0.
> $$
> 作用 $F$ 得链复形 $F(P_\bullet)$，定义
> $$
> L_nF(M) := H_n(F(P_\bullet)), \quad n \ge 0.
> $$
> 其中 $L_0F$ 称为 $F$ 的零次左导出，$L_nF$（$n\ge1$）称为高次左导出。

## 右导出函子

<!-- right_derived_functor_def -->
> [!Definition]
> **右导出函子 Right Derived Functor**：设 $G: R\text{-}\mathbf{Mod} \to S\text{-}\mathbf{Mod}$ 是左正合加性函子。对任意左 $R$-模 $M$，取其入射分解
> $$
> 0 \to M \xrightarrow{\eta} I^0 \xrightarrow{d^0} I^1 \xrightarrow{d^1} I^2 \to \cdots.
> $$
> 作用 $G$ 得上链复形 $G(I^\bullet)$，定义
> $$
> R^nG(M) := H^n(G(I^\bullet)), \quad n \ge 0.
> $$
> 其中 $R^0G$ 称为 $G$ 的零次右导出，$R^nG$（$n\ge1$）称为高次右导出。

## 与分解选择无关

<!-- derived_functor_independence -->
> [!Theorem]
> **与分解选择无关 Independence of Resolution Choice**：上述 $L_nF(M)$ 与 $R^nG(M)$ 在自然同构意义下与投射/入射分解的选择无关。
>
> **证明思路**：由比较定理，任意两组分解之间可构造链映射提升，且该提升在链同伦意义下唯一；同伦链映射诱导相同同调映射，故得到自然同构。

## 函子性

<!-- derived_functor_functoriality -->
> [!Proposition]
> **导出函子的函子性 Functoriality of Derived Functors**：模同态 $u: M \to N$ 诱导
> $$
> L_nF(u): L_nF(M) \to L_nF(N), \qquad R^nG(u): R^nG(M) \to R^nG(N),
> $$
> 且满足函子公理（保持恒等与复合）。
>
> **证明思路**：对 $u$ 在分解层面提升（比较定理），再取同调；同伦唯一性确保定义与提升选取无关。

> **注**：在更一般的阿贝尔范畴中，只要有充足投射（定义左导出）或充足入射（定义右导出），以上构造与结论仍成立。