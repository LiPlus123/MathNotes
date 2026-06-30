# Yoneda 引理的叙述与证明

## Yoneda 引理

<!-- yoneda_lemma -->
> [!Theorem]
> **Yoneda 引理 Yoneda Lemma**：设 $\mathcal{C}$ 为局部小范畴，$F: \mathcal{C} \to \mathbf{Set}$ 为函子，$A \in \mathrm{Ob}(\mathcal{C})$。则存在双射
> $$
> \Phi_{A, F}: \mathrm{Nat}(\mathrm{Hom}_{\mathcal{C}}(A, -),\, F) \xrightarrow{\sim} F(A),
> $$
> 由
> $$
> \Phi_{A, F}(\alpha) = \alpha_A(\mathrm{id}_A)
> $$
> 给出。且此双射关于 $A$ 与 $F$ 均**自然**：
> - 关于 $A$ 的自然性：$\Phi$ 是函子 $\mathrm{Nat}(\mathrm{Hom}(-, -),\, F(-)) : \mathcal{C}^{\mathrm{op}} \times [\mathcal{C}, \mathbf{Set}] \to \mathbf{Set}$ 的分量处的自然同构（以 $A$ 为参数时，即关于反变函子 $A \mapsto \mathrm{Nat}(\mathrm{Hom}(A,-), F)$ 与 $A \mapsto F(A)$ 之间的自然同构）；
> - 关于 $F$ 的自然性：对自然变换 $\tau: F \Rightarrow G$，$\Phi_{A, G}(\tau \circ \alpha) = \tau_A(\Phi_{A,F}(\alpha))$。
>
> **证明思路**：
> - **双射的逆**：定义 $\Psi_{A, F}: F(A) \to \mathrm{Nat}(\mathrm{Hom}(A,-), F)$，对 $x \in F(A)$，令 $(\Psi_{A,F}(x))_C: \mathrm{Hom}(A, C) \to F(C)$ 为 $f \mapsto F(f)(x)$。需验证 $\Psi_{A,F}(x)$ 是自然变换：对 $g: C \to D$，
> $$
> F(g)((\Psi x)_C(f)) = F(g)(F(f)(x)) = F(g \circ f)(x) = (\Psi x)_D(g \circ f) = (\Psi x)_D(\mathrm{Hom}(A,g)(f)).
> $$
> - **$\Phi \circ \Psi = \mathrm{id}$**：$\Phi(\Psi(x)) = (\Psi(x))_A(\mathrm{id}_A) = F(\mathrm{id}_A)(x) = x$。
> - **$\Psi \circ \Phi = \mathrm{id}$**：设 $\alpha: \mathrm{Hom}(A,-) \Rightarrow F$，$\Psi(\Phi(\alpha)) = \Psi(\alpha_A(\mathrm{id}_A))$。其在 $C$ 处为 $f \mapsto F(f)(\alpha_A(\mathrm{id}_A))$；由 $\alpha$ 的自然性（对 $f: A \to C$，$F(f) \circ \alpha_A = \alpha_C \circ \mathrm{Hom}(A,f)$，取 $\mathrm{id}_A$ 得 $F(f)(\alpha_A(\mathrm{id}_A)) = \alpha_C(f)$）知 $\Psi(\Phi(\alpha)) = \alpha$。

> **注**：Yoneda 引理是范畴论中最基本也最深刻的结果之一，其证明完全由函子性与自然性驱动，无需任何额外假设。它表明：**一个函子 $F$ 在对象 $A$ 处的值 $F(A)$，由从 $\mathrm{Hom}(A,-)$ 到 $F$ 的全体自然变换完全刻画**。

## 反变版 Yoneda 引理

<!-- yoneda_lemma_contravariant -->
> [!Theorem]
> **反变 Yoneda 引理 Contravariant Yoneda Lemma**：设 $\mathcal{C}$ 为局部小范畴，$F: \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ 为反变函子，$A \in \mathrm{Ob}(\mathcal{C})$。则存在自然双射
> $$
> \mathrm{Nat}(\mathrm{Hom}_{\mathcal{C}}(-,\, A),\, F) \xrightarrow{\sim} F(A), \quad \alpha \mapsto \alpha_A(\mathrm{id}_A).
> $$
>
> **证明思路**：对偶地，即对 $\mathcal{C}^{\mathrm{op}}$ 应用协变 Yoneda 引理（注意 $\mathrm{Hom}_{\mathcal{C}}(-, A) = \mathrm{Hom}_{\mathcal{C}^{\mathrm{op}}}(A, -)$）。

## 推论

<!-- yoneda_corollary_representability -->
> [!Corollary]
> **可表性的 Yoneda 刻画 Yoneda Characterization of Representability**：函子 $F: \mathcal{C} \to \mathbf{Set}$ 可表（表示对象为 $A$）当且仅当 $\mathrm{Nat}(\mathrm{Hom}(A,-), F)$ 中存在唯一对应于 $\mathrm{id}_A$ 的元素，即 Yoneda 双射在 $x = $ 泛元素 $e \in F(A)$ 处给出表示 $\alpha^e: \mathrm{Hom}(A,-) \xRightarrow{\sim} F$。
>
> **证明思路**：由 Yoneda 引理，$\mathrm{Nat}(\mathrm{Hom}(A,-), F) \cong F(A)$，其中 $x \in F(A)$ 对应的自然变换 $\alpha^x$ 为同构当且仅当每个 $\alpha^x_C$ 为双射，当且仅当 $(A, x)$ 是 $F$ 的泛元素（见 [[representable_functor|可表函子]]）。

<!-- yoneda_corollary_uniqueness_of_representable -->
> [!Corollary]
> **可表函子的唯一性 Uniqueness of Representing Object via Yoneda**：若 $\mathrm{Hom}(A,-) \cong \mathrm{Hom}(B,-)$（自然同构），则 $A \cong B$。
>
> **证明思路**：由协变 Yoneda 引理取 $F = \mathrm{Hom}(B,-)$，$\mathrm{Nat}(\mathrm{Hom}(A,-), \mathrm{Hom}(B,-)) \cong \mathrm{Hom}(B, A)$；对称地取 $F = \mathrm{Hom}(A,-)$，$\mathrm{Nat}(\mathrm{Hom}(B,-), \mathrm{Hom}(A,-)) \cong \mathrm{Hom}(A, B)$。自然同构给出互逆的态射，从而 $A \cong B$。
