# 双变函子的平衡性

## 平衡双变函子

<!-- balanced_bifunctor_def -->
> [!Definition]
> **平衡双变函子 Balanced Bifunctor**：设
> $$
> T: \mathcal{A}^{\mathrm{op}} \times \mathcal{A} \to \mathbf{Ab}
> $$
> 是双变函子。若对任意对象对 $(A,B)$，分别对第一变量或第二变量作导出得到的同调对象自然同构（在可定义的范围内），则称 $T$ 是**平衡的**（balanced）。

> **注**：在模范畴中，最重要的平衡双变函子是 $\mathrm{Hom}_R(-,-)$（右导出给出 Ext）与 $-\otimes_R-$（左导出给出 Tor）。

## Hom 的平衡性与 Ext 的良定义

<!-- ext_balanced_theorem -->
> [!Theorem]
> **Ext 的平衡性 Balancedness of Ext**：在有充足投射与充足入射的模范畴中，对任意左 $R$-模 $A,B$ 与 $n\ge0$，有自然同构
> $$
> \mathrm{Ext}_R^n(A,B) \cong H^n(\mathrm{Hom}_R(P_\bullet,B)) \cong H^n(\mathrm{Hom}_R(A,I^\bullet)),
> $$
> 其中 $P_\bullet\to A$ 为投射分解，$0\to B\to I^\bullet$ 为入射分解。
>
> **证明思路**：先用比较定理证明两种构造各自与分解选择无关，再构造连接两种复形的拟同构（可通过双复形与谱序列，或通过 Cartan–Eilenberg 分解），得到同调同构。

## 张量积的平衡性与 Tor 的良定义

<!-- tor_balanced_theorem -->
> [!Theorem]
> **Tor 的平衡性 Balancedness of Tor**：设 $M$ 为右 $R$-模，$N$ 为左 $R$-模。对任意 $n\ge0$，有自然同构
> $$
> \mathrm{Tor}_n^R(M,N) \cong H_n(P_\bullet\otimes_R N) \cong H_n(M\otimes_R Q_\bullet),
> $$
> 其中 $P_\bullet\to M$ 为右 $R$-模投射分解，$Q_\bullet\to N$ 为左 $R$-模投射（或平坦）分解。
>
> **证明思路**：利用张量函子对直和与分裂短正合列的良好行为，以及比较定理构造不同分解之间的链同伦等价，证明两种计算方式给出自然同构。

## 对 Ext 与 Tor 的意义

<!-- balanced_bifunctor_significance -->
> [!Proposition]
> **平衡性对 Ext 与 Tor 的意义 Significance of Balancedness for Ext and Tor**：平衡性保证：
> 1. Ext 与 Tor 的定义不依赖于"在哪个变量做分解"；
> 2. 在计算中可选择更方便的一侧（例如选投射维数较小的一侧）；
> 3. 双变量上的长正合列与自然性可以统一地建立。

> **注**：这正是将 Ext 与 Tor 视为真正双变量导出函子的基础。