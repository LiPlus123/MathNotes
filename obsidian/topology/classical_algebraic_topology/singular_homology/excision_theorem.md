# 切除定理

## 定理叙述

<!-- excision_theorem_statement -->
> [!Theorem]
> **切除定理 Excision Theorem**：设 $Z \subseteq A \subseteq X$，且 $\bar{Z} \subseteq \mathrm{int}(A)$（$Z$ 的闭包包含在 $A$ 的内部中）。则含入映射 $(X \setminus Z, A \setminus Z) \hookrightarrow (X, A)$ 诱导同构：
> $$H_n(X \setminus Z, A \setminus Z) \xrightarrow{\sim} H_n(X, A) \quad \text{对所有 } n.$$
> 等价地：若 $\mathcal{U} = \{U, V\}$ 是 $X$ 的开覆盖（$X = \mathrm{int}(U) \cup \mathrm{int}(V)$），则含入 $(V, U \cap V) \hookrightarrow (X, U)$ 诱导同构 $H_n(V, U \cap V) \cong H_n(X, U)$。

> **注**：切除定理的直观含义：在计算相对同调 $H_n(X, A)$ 时，可以"切除"（excise）掉深藏在 $A$ 内部的子集 $Z$，而不改变同调群——因为 $Z$ 远离 $X$ 和 $A$ 的"交界处"，对相对同调不产生贡献。

## 证明的关键技术：重心细分

<!-- excision_proof_barycentric -->
> **证明思路（核心思想）**：
>
> **小单形引理**：首先证明辅助引理：设 $\mathcal{U} = \{U_\alpha\}$ 是 $X$ 的开覆盖，令 $S_n^\mathcal{U}(X) \subseteq S_n(X)$ 是所有像落在某个 $U_\alpha$ 中的奇异单形生成的子链群，则含入 $S_*^\mathcal{U}(X) \hookrightarrow S_*(X)$ 是链同伦等价（即诱导同调同构）。
>
> **重心细分技术**：对任意奇异单形 $\sigma: \Delta^n \to X$，利用 $\Delta^n$ 的重心细分将 $\sigma$ 细分为若干"更小"的奇异单形（每个小单形的像落在覆盖的某个 $U_\alpha$ 中），细分后的链与原链同调（链同伦意义下）。具体地，对 $\Delta^n$ 做 $r$ 次重心细分（$\mathrm{Sd}^r$），当 $r$ 充分大时，$\mathrm{mesh}(\mathrm{Sd}^r \Delta^n) < \delta$（Lebesgue 数），使每个子单形的像落在某个 $U_\alpha$ 中。重心细分算子 $\mathrm{Sd}: S_n(X) \to S_n(X)$ 构造为链映射，且与恒等映射链同伦。
>
> **切除的推导**：利用小单形引理，对覆盖 $\mathcal{U} = \{\mathrm{int}(A), X \setminus Z\}$，得 $S_*^{\mathcal{U}}(X)$ 的链复形与 $S_*(X)$ 同调等价；而 $S_*^{\mathcal{U}}(X)/(S_*^{\mathcal{U}}(X) \cap S_*(A)) \cong S_*(X \setminus Z)/S_*(A \setminus Z)$，从而 $H_n(X,A) \cong H_n(X \setminus Z, A \setminus Z)$。

## 推论：球面的同调

<!-- excision_application_sphere_homology -->
> [!Corollary]
> **$D^n$ 的相对同调 Relative Homology of $D^n$**：设 $S^{n-1} = \partial D^n \subseteq D^n$，则：
> $$H_k(D^n, S^{n-1}) \cong \tilde{H}_{k-1}(S^{n-1}) \cong \begin{cases} \mathbb{Z}, & k = n, \\ 0, & k \neq n. \end{cases}$$
>
> **证明思路**：$(D^n, S^{n-1})$ 是好对，$D^n / S^{n-1} \cong S^n$，故 $H_k(D^n, S^{n-1}) \cong \tilde{H}_k(S^n)$；由球面的同调，$\tilde{H}_k(S^n) = \mathbb{Z}$（$k=n$），$= 0$（$k \neq n$）。

<!-- excision_application_connecting -->
> [!Corollary]
> **切除与对的长正合列的联合应用**：设 $X = A \cup B$，$A \cap B$ 良好，则由切除定理 $H_n(B, A \cap B) \cong H_n(A \cup B, A) = H_n(X, A)$，将此代入对 $(X, A)$ 的长正合列，可推出 Mayer-Vietoris 序列（二者等价）。
