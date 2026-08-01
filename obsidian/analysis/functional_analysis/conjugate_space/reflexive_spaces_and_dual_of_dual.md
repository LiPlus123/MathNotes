# 自反空间与二次共轭

<!-- functional_analysis_bidual_space_definition -->
> [!Definition]
> **二次共轭空间 Bidual Space**：设 $X$ 是 Banach 空间，其连续共轭空间为 $X^*$。$X^*$ 的连续共轭空间
> $$
> X^{**}=(X^*)^*
> $$
> 称为 $X$ 的**二次共轭空间 Bidual Space**。

<!-- functional_analysis_canonical_embedding_isometry -->
> [!Theorem]
> **典范嵌入是等距嵌入 The Canonical Embedding is an Isometry**：典范嵌入 $J:X\to X^{**}$ 满足
> $$
> \|Jx\|_{X^{**}}=\|x\|_X
> \qquad(x\in X).
> $$
> 因而 $J$ 是等距线性嵌入，且 $J(X)$ 是 $X^{**}$ 的闭子空间。
>
> **证明思路**：由 $|(Jx)(f)|=|f(x)|\leq\|f\|\|x\|$ 得到 $\|Jx\|\leq\|x\|$；对 $x\ne0$，Hahn-Banach 定理给出范数为 $1$ 且在 $x$ 处取值 $\|x\|$ 的泛函，从而得到反向不等式。

<!-- functional_analysis_reflexivity_equivalent_characterizations -->
> [!Theorem]
> **自反性的等价刻画 Equivalent Characterizations of Reflexivity**：对 Banach 空间 $X$，下列条件等价：
> 1. $X$ 自反；
> 2. $B_X$ 在弱拓扑下紧；
> 3. $X$ 的每个有界序列都有弱收敛子列；
> 4. $X^*$ 自反。
>
> **证明思路**：$1\Longleftrightarrow2$ 由 Banach-Alaoglu 定理和典范嵌入给出；$2\Longleftrightarrow3$ 是 Eberlein-Smulian 定理；$1\Longleftrightarrow4$ 由典范嵌入及其对偶映射的性质得到。

<!-- functional_analysis_bidual_operator_compatibility -->
> [!Proposition]
> **二次共轭算子与典范嵌入的相容性 Compatibility of the Bidual Operator and Canonical Embeddings**：设 $T\in\mathcal{L}(X,Y)$，则
> $$
> T^{**}\circ J_X=J_Y\circ T.
> $$
> 若 $X,Y$ 自反，则借助典范同构可将 $T^{**}$ 视为 $T$ 本身。
>
> **证明思路**：对任意 $f\in Y^*$，有
> $$
> \bigl(T^{**}(J_Xx)\bigr)(f)=(J_Xx)(T^*f)=f(Tx)=(J_Y(Tx))(f).
> $$
> 因此两个二次对偶空间中的泛函相等。

<!-- functional_analysis_reflexivity_weak_solution_role -->
> [!Example]+
> **自反性在弱解存在性中的作用 Role of Reflexivity in Weak-Solution Existence**：设 $X$ 是自反 Banach 空间，$(u_n)$ 是 $X$ 中范数有界的近似解列。则存在 $u\in X$ 及子列 $(u_{n_k})$，使得
> $$
> u_{n_k}\rightharpoonup u.
> $$
> 若相关能量泛函弱下半连续且方程的弱形式在该收敛下封闭，则可将近似解列的极限识别为弱解。
>
> **证明思路**：有界列落在闭单位球的某个倍数中；自反性和 Eberlein-Smulian 定理给出弱收敛子列。其余步骤依赖具体问题的弱下半连续性和极限传递性质。