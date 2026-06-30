# Grothendieck 谱序列

## Grothendieck 谱序列

<!-- grothendieck_spectral_sequence_thm -->
> [!Theorem]
> **Grothendieck 谱序列 Grothendieck Spectral Sequence**：设 $\mathcal{A},\mathcal{B},\mathcal{C}$ 是阿贝尔范畴，$F:\mathcal{A}\to\mathcal{B}$、$G:\mathcal{B}\to\mathcal{C}$ 是左正合函子。假设：
> 1. $\mathcal{A},\mathcal{B}$ 有充足入射对象；
> 2. $F$ 将 $\mathcal{A}$ 中的入射对象送到 $G$-acyclic 对象（即对每个入射 $I$，$R^qG(F(I))=0$ 对 $q>0$）。
>
> 则对任意 $A\in\mathcal{A}$，存在第一象限谱序列
> $$
> E_2^{p,q} \cong (R^p G)(R^q F)(A) \Longrightarrow R^{p+q}(G\circ F)(A).
> $$

> **证明思路**：取 $A$ 的入射分解 $I^\bullet$，对其作用 $F$ 并再取 $G$ 的 Cartan-Eilenberg 型分解，形成双复形。由双复形的列谱序列与行谱序列分别计算，可得 $E_2$ 页和总导出函子，进而得到该谱序列。

## 可接受条件

<!-- grothendieck_spectral_sequence_conditions -->
> [!Definition]
> **可接受条件 Admissibility Conditions**：上述“$F$ 把入射对象送到 $G$-acyclic 对象”的条件是 Grothendieck 谱序列成立的关键。常见充分情形包括：
> - $F$ 把入射对象送到 $G$-入射对象；
> - $G$ 对 $F(I)$ 的高次右导出恒为零；
> - 在具体模范畴中，$F(I)$ 对 $G$ 是可消的。

## 五项正合列

<!-- grothendieck_five_term_exact_sequence -->
> [!Corollary]
> **Grothendieck 谱序列的五项正合列 Five-term Exact Sequence**：由谱序列低次项可抽取出正合列
> $$
> 0\to E_2^{1,0}\to R^1(G\circ F)\to E_2^{0,1}\to E_2^{2,0}\to R^2(G\circ F).
> $$
> 即
> $$
> 0\to R^1G(F(A))\to R^1(G\circ F)(A)\to G(R^1F(A))\to R^2G(F(A))\to R^2(G\circ F)(A).
> $$
>
> **注**：在应用中，完整谱序列常过强，而五项正合列已经足够提取大量低次信息。