# 不变子空间

## 不变子空间的定义

<!-- invariant_subspace_def -->
> [!Definition]
> **不变子空间 Invariant Subspace**：设 $T \in \mathrm{End}_F(V)$ 是线性空间 $V$ 上的线性变换，子空间 $W \leq V$ 称为 $T$ 的**不变子空间**（或 $T$-不变子空间），若
> $$T(W) \subseteq W$$
> 即对任意 $w \in W$，均有 $T(w) \in W$。

> **注**：对矩阵 $A \in M_n(F)$，子空间 $W \leq F^n$ 是 $A$-不变子空间，若对任意 $w \in W$，均有 $Aw \in W$。

<!-- trivial_invariant_subspaces -->
> [!Example]+
> **平凡不变子空间 Trivial Invariant Subspaces**：设 $T \in \mathrm{End}_F(V)$，则 $\{\mathbf{0}\}$ 和 $V$ 本身都是 $T$ 的不变子空间，称为**平凡不变子空间**。此外，$\ker T$ 和 $\mathrm{Im}\, T$ 也是 $T$ 的不变子空间。
>
> **证明思路**：对 $\ker T$：若 $T(v) = \mathbf{0}$，则 $T(T(v)) = T(\mathbf{0}) = \mathbf{0} \in \ker T$。对 $\mathrm{Im}\, T$：若 $w = T(v) \in \mathrm{Im}\, T$，则 $T(w) = T^2(v) \in \mathrm{Im}\, T$。

## 特征子空间是不变子空间

<!-- eigenspace_is_invariant_subspace -->
> [!Theorem]
> **特征子空间是不变子空间 Eigenspaces are Invariant Subspaces**：设 $A \in M_n(F)$，$\lambda_0$ 是 $A$ 的特征值，则特征子空间 $V_{\lambda_0} = \ker(\lambda_0 I_n - A)$ 是 $A$ 的不变子空间。
>
> **证明思路**：设 $v \in V_{\lambda_0}$，则 $Av = \lambda_0 v \in V_{\lambda_0}$（因为 $\lambda_0 v$ 仍属于 $V_{\lambda_0}$），故 $A(V_{\lambda_0}) \subseteq V_{\lambda_0}$。

<!-- invariant_subspace_restricted_operator -->
> [!Definition]
> **限制算子 Restriction of an Operator**：设 $T \in \mathrm{End}_F(V)$，$W$ 是 $T$ 的不变子空间，则 $T$ 在 $W$ 上的限制
> $$T|_W : W \to W, \quad w \mapsto T(w)$$
> 是 $W$ 上的线性变换，称为 $T$ 在 $W$ 上的**限制算子**。

<!-- invariant_subspace_block_matrix -->
> [!Proposition]
> **不变子空间与矩阵的分块形式 Invariant Subspace and Block Matrix Form**：设 $T \in \mathrm{End}_F(V)$，$W$ 是 $T$ 的不变子空间，取 $W$ 的基 $\{w_1, \ldots, w_k\}$ 并扩充为 $V$ 的基 $\{w_1, \ldots, w_k, u_1, \ldots, u_{n-k}\}$，则 $T$ 在此基下的矩阵具有上分块三角形式
> $$[T] = \begin{pmatrix} B & C \\ O & D \end{pmatrix}$$
> 其中 $B = [T|_W]$ 是 $T$ 限制在 $W$ 上的矩阵。
>
> **证明思路**：由于 $W$ 是 $T$-不变的，$T(w_i) \in W$，故 $T(w_i)$ 在上述基下的坐标向量后 $n-k$ 个分量为零，这正给出左下角的零块 $O$。
