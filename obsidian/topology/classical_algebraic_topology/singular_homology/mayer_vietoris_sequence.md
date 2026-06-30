# Mayer-Vietoris 序列

## 定理条件

<!-- mayer_vietoris_setup -->
设 $X = A \cup B$，其中 $A, B \subseteq X$ 是开子集（或更一般地，满足奇异链"被 $A$、$B$ 覆盖"的正合性条件，即每个奇异单形均同调等价于落在 $A$ 或 $B$ 中的链之和）。记各含入映射为 $i_A: A \cap B \hookrightarrow A$，$i_B: A \cap B \hookrightarrow B$，$j_A: A \hookrightarrow X$，$j_B: B \hookrightarrow X$。

## Mayer-Vietoris 长正合列

<!-- mayer_vietoris_theorem -->
> [!Theorem]
> **Mayer-Vietoris 长正合列 Mayer-Vietoris Long Exact Sequence**：在上述条件下，存在自然的**长正合列 Long Exact Sequence**：
> $$\cdots \to H_n(A \cap B) \xrightarrow{\Phi_n} H_n(A) \oplus H_n(B) \xrightarrow{\Psi_n} H_n(X) \xrightarrow{\partial_*} H_{n-1}(A \cap B) \to \cdots \to H_0(X) \to 0,$$
> 其中：
> - $\Phi_n([c]) = (i_{A*}([c]),\, -i_{B*}([c]))$；
> - $\Psi_n([a], [b]) = j_{A*}([a]) + j_{B*}([b])$；
> - $\partial_*: H_n(X) \to H_{n-1}(A \cap B)$ 是**连接同态 Connecting Homomorphism**：对 $[z] \in H_n(X)$，写 $z = a + b$（$a \in S_n(A)$，$b \in S_n(B)$，由正合性条件总可实现），则 $\partial_* [z] = [\partial a] = [-\partial b] \in H_{n-1}(A \cap B)$。
>
> **证明思路**：考虑短正合链复形序列：
> $$0 \to S_*(A \cap B) \xrightarrow{\Phi_\#} S_*(A) \oplus S_*(B) \xrightarrow{\Psi_\#} S_*(A) + S_*(B) \to 0.$$
> 当 $A, B$ 为开集时，由"小单形引理"（每个奇异链均同调等价于落在 $A$ 或 $B$ 中的链之和）知 $S_*(A) + S_*(B) \hookrightarrow S_*(X)$ 是拟同构（诱导同调同构）。对上述短正合列应用蛇形引理（Snake Lemma），得长正合列。

## 连接同态的自然性

<!-- mayer_vietoris_naturality -->
> **注**：连接同态 $\partial_*$ 的良定义性：若 $z = a + b = a' + b'$（$a, a' \in S_n(A)$，$b, b' \in S_n(B)$），则 $a - a' = b' - b \in S_n(A \cap B)$，从而 $\partial a - \partial a' = \partial(a-a') \in B_{n-1}(A \cap B)$，故 $[\partial a] = [\partial a']$ 在 $H_{n-1}(A \cap B)$ 中。

## 应用：球面的同调

<!-- mayer_vietoris_application_sphere -->
> [!Example]+
> **用 Mayer-Vietoris 计算 $H_n(S^n)$ Computing $H_n(S^n)$ via Mayer-Vietoris**：取 $S^n = A \cup B$，其中 $A = S^n \setminus \{\text{南极}\}$，$B = S^n \setminus \{\text{北极}\}$，均同胚于 $\mathbb{R}^n$（可缩），$A \cap B \simeq S^{n-1}$。Mayer-Vietoris 序列（$n \geq 2$）：
> $$\cdots \to H_k(A) \oplus H_k(B) \to H_k(S^n) \xrightarrow{\partial_*} H_{k-1}(S^{n-1}) \to H_{k-1}(A) \oplus H_{k-1}(B) \to \cdots$$
> 由 $H_k(A) = H_k(B) = 0$（$k \geq 1$，可缩），得 $H_k(S^n) \cong H_{k-1}(S^{n-1})$（$k \geq 2$）。由归纳，$H_n(S^n) \cong H_0(S^0) \cong \mathbb{Z}$；$H_k(S^n) = 0$（$0 < k < n$）；$H_0(S^n) = \mathbb{Z}$（$n \geq 1$，连通）。

<!-- mayer_vietoris_application_torus -->
> [!Example]+
> **用 Mayer-Vietoris 计算环面 $T^2$ Computing $H_*(T^2)$ via Mayer-Vietoris**：将 $T^2$ 分解为两个开集 $A \simeq T^2 \setminus \{p\}$（$\simeq S^1 \vee S^1$）和 $B \simeq D^2$（可缩），$A \cap B \simeq S^1$。Mayer-Vietoris 序列给出：$H_2(T^2) \cong \mathbb{Z}$（由连接同态的像），$H_1(T^2) \cong \mathbb{Z}^2$，与之前计算一致。
