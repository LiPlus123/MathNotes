# 伴随的例子

## 自由-遗忘伴随

<!-- free_forgetful_adjunction -->
> [!Example]+
> **自由-遗忘伴随 Free–Forgetful Adjunction**：设 $U: \mathbf{Grp} \to \mathbf{Set}$ 为忘却函子，$F: \mathbf{Set} \to \mathbf{Grp}$ 为自由群函子（$X \mapsto F(X)$，以 $X$ 为生成集的自由群）。则 $F \dashv U$：
> $$
> \mathrm{Hom}_{\mathbf{Grp}}(F(X), G) \cong \mathrm{Hom}_{\mathbf{Set}}(X, U(G)),
> $$
> 因为群同态 $F(X) \to G$ 由生成集 $X$ 上的映射 $X \to U(G)$ 唯一确定。
>
> 单位 $\eta_X: X \to U(F(X))$ 为将生成元包含进自由群的映射；余单位 $\varepsilon_G: F(U(G)) \to G$ 为将 $G$ 的元素视为生成元、自由生成后折叠回 $G$ 的同态。
>
> 类似地有：$\mathbf{Set} \rightleftharpoons \mathbf{Ab}$（自由阿贝尔群 $\dashv$ 忘却）、$\mathbf{Set} \rightleftharpoons R\text{-}\mathbf{Mod}$（自由模 $\dashv$ 忘却）、$\mathbf{Set} \rightleftharpoons \mathbf{Ring}$（自由环 $\dashv$ 忘却）。

## 积与对角函子

<!-- product_diagonal_adjunction -->
> [!Example]+
> **积与对角函子 Product–Diagonal Adjunction**：设 $\mathcal{C}$ 有二元积。定义**对角函子** $\Delta: \mathcal{C} \to \mathcal{C} \times \mathcal{C}$，$A \mapsto (A, A)$。则：
> $$
> \sqcup \dashv \Delta \dashv \times,
> $$
> 即余积函子 $\sqcup: \mathcal{C} \times \mathcal{C} \to \mathcal{C}$ 是 $\Delta$ 的**左伴随**，积函子 $\times: \mathcal{C} \times \mathcal{C} \to \mathcal{C}$ 是 $\Delta$ 的**右伴随**：
> $$
> \mathrm{Hom}(A \sqcup B, C) \cong \mathrm{Hom}(A, C) \times \mathrm{Hom}(B, C),
> $$
> $$
> \mathrm{Hom}(C, A \times B) \cong \mathrm{Hom}(C, A) \times \mathrm{Hom}(C, B).
> $$

## 张量-Hom 伴随

<!-- tensor_hom_adjunction -->
> [!Example]+
> **张量-Hom 伴随 Tensor–Hom Adjunction**：设 $R$ 为交换环，$M$ 为 $R$-模。则张量函子 $M \otimes_R -: R\text{-}\mathbf{Mod} \to R\text{-}\mathbf{Mod}$ 是 $\mathrm{Hom}_R(M, -)$ 的左伴随：
> $$
> \mathrm{Hom}_R(M \otimes_R N, P) \cong \mathrm{Hom}_R(N, \mathrm{Hom}_R(M, P)),
> $$
> 自然地关于 $N$ 与 $P$。
>
> 单位 $\eta_N: N \to \mathrm{Hom}_R(M, M \otimes_R N)$，$n \mapsto (m \mapsto m \otimes n)$；余单位 $\varepsilon_P: M \otimes_R \mathrm{Hom}_R(M, P) \to P$，$m \otimes f \mapsto f(m)$（求值映射）。
>
> 这是代数中最重要的伴随之一，是 Hom 函子保持极限（左精确）而 $- \otimes M$ 右精确（左伴随保持余极限）的伴随解释。

## 离散-忘却伴随

<!-- discrete_forgetful_adjunction -->
> [!Example]+
> **离散-忘却伴随 Discrete–Forgetful Adjunction**：设 $U: \mathbf{Top} \to \mathbf{Set}$ 为忘却函子，$\mathrm{Disc}: \mathbf{Set} \to \mathbf{Top}$ 为**离散拓扑函子**（给集合赋最细拓扑），$\mathrm{Indisc}: \mathbf{Set} \to \mathbf{Top}$ 为**密着拓扑函子**（赋最粗拓扑）。则：
> $$
> \mathrm{Disc} \dashv U \dashv \mathrm{Indisc},
> $$
> 即：
> - $\mathrm{Hom}_{\mathbf{Top}}(\mathrm{Disc}(X), Y) \cong \mathrm{Hom}_{\mathbf{Set}}(X, U(Y))$（离散空间到任意空间的连续映射即集合映射）；
> - $\mathrm{Hom}_{\mathbf{Set}}(U(Y), X) \cong \mathrm{Hom}_{\mathbf{Top}}(Y, \mathrm{Indisc}(X))$（任意空间到密着空间的连续映射即集合映射）。

## 指数-积伴随（笛卡尔闭范畴）

<!-- exp_product_adjunction -->
> [!Example]+
> **指数-积伴随 Exponential–Product Adjunction**：在笛卡尔闭范畴（如 $\mathbf{Set}$）中，固定对象 $B$，积函子 $- \times B$ 是指数函子 $(-)^B = [B, -]$ 的左伴随：
> $$
> \mathrm{Hom}(A \times B, C) \cong \mathrm{Hom}(A, C^B).
> $$
> 单位 $\eta_A: A \to (A \times B)^B$，$a \mapsto (b \mapsto (a, b))$；余单位 $\varepsilon_C: C^B \times B \to C$ 为求值映射 $(f, b) \mapsto f(b)$。这是 curry–uncurry 对应的范畴论表述。

## 完备化与包含伴随

<!-- completion_inclusion_adjunction -->
> [!Example]+
> **完备化-包含伴随**：在序理论中，完备格 $L$ 到偏序集 $P$ 的单调映射与 $P$ 到 $L$ 的单调映射（通过 Dedekind–MacNeille 完备化 $\hat{P}$ 的泛性质）构成伴随；层化函子 $\mathbf{a}: \mathrm{PSh}(\mathcal{C}) \to \mathrm{Sh}(\mathcal{C})$ 是包含函子 $\iota: \mathrm{Sh}(\mathcal{C}) \hookrightarrow \mathrm{PSh}(\mathcal{C})$ 的左伴随（$\mathbf{a} \dashv \iota$），见 [[sheafification|层化]]。
