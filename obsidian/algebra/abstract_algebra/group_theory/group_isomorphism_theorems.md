# 群同构基本定理

## 第一同构定理

<!-- first_isomorphism_theorem_group -->
> [!Theorem]
> **第一同构定理 First Isomorphism Theorem**：设 $\varphi: G \to H$ 为群同态，则 $\ker\varphi \trianglelefteq G$，且存在唯一的群同构
> $$
> \bar{\varphi}: G/\ker\varphi \xrightarrow{\sim} \mathrm{Im}\,\varphi
> $$
> 使得 $\varphi = \bar{\varphi} \circ \pi$，其中 $\pi: G \to G/\ker\varphi$ 为自然同态。即有交换图：
> $$
> \begin{align*}
> G &\xrightarrow{\varphi} H \\
> \downarrow\pi &\nearrow \bar{\varphi} \\
> G/\ker\varphi &
> \end{align*}
> $$
>
> **证明思路**：定义 $\bar{\varphi}(a\ker\varphi) = \varphi(a)$，验证良定义性（若 $a\ker\varphi = b\ker\varphi$，则 $b^{-1}a \in \ker\varphi$，故 $\varphi(a) = \varphi(b)$）；验证 $\bar{\varphi}$ 是同态、单射（$\ker\bar\varphi = \{e\ker\varphi\}$）和满射（$\mathrm{Im}\,\bar\varphi = \mathrm{Im}\,\varphi$）。

<!-- first_isomorphism_theorem_corollary -->
> [!Corollary]
> **商群与像同构 Quotient Group Isomorphic to Image**：设 $\varphi: G \to H$ 为群满同态，则 $G/\ker\varphi \cong H$。

## 第二同构定理

<!-- second_isomorphism_theorem_group -->
> [!Theorem]
> **第二同构定理 Second Isomorphism Theorem**（也称**钻石同构定理**）：设 $G$ 为群，$H \leq G$，$N \trianglelefteq G$，则：
> 1. $HN = \{hn \mid h \in H, n \in N\}$ 是 $G$ 的子群；
> 2. $H \cap N \trianglelefteq H$；
> 3. 存在群同构：
> $$
> H/(H \cap N) \cong HN/N
> $$
>
> **证明思路**：定义 $\varphi: H \to HN/N$，$h \mapsto hN$，验证这是满射群同态，其核为 $\ker\varphi = \{h \in H \mid hN = N\} = H \cap N$，由第一同构定理得结论。

## 第三同构定理

<!-- third_isomorphism_theorem_group -->
> [!Theorem]
> **第三同构定理 Third Isomorphism Theorem**：设 $G$ 为群，$N \trianglelefteq G$，$K \trianglelefteq G$，且 $N \leq K$，则：
> 1. $K/N \trianglelefteq G/N$；
> 2. 存在群同构：
> $$
> (G/N)/(K/N) \cong G/K
> $$
>
> **证明思路**：定义 $\varphi: G/N \to G/K$，$gN \mapsto gK$，验证这是良定义的满射群同态（由 $N \leq K$ 知 $gN = g'N \Rightarrow g^{-1}g' \in N \leq K \Rightarrow gK = g'K$），其核为 $K/N$，由第一同构定理得结论。
