# 限制表示 Restriction of Representations

<!-- restriction_of_representations -->
> [!Definition]
> **限制表示 Restriction of a Representation**：设 $G$ 是有限群，$H \leq G$ 是子群，$\rho: G \to GL(V)$ 是 $G$ 的一个表示。将 $\rho$ 限制到 $H$ 得到 $H$ 的一个表示
> $$\mathrm{Res}^G_H \rho: H \to GL(V), \quad h \mapsto \rho(h),$$
> 称为 $\rho$ 对 $H$ 的**限制表示**，也记作 $\rho|_H$。$\mathrm{Res}^G_H \rho$ 与 $\rho$ 的表示空间相同，均为 $V$，维数不变：$\deg(\mathrm{Res}^G_H \rho) = \deg \rho$。

> **注**：$\mathrm{Res}^G_H \rho$ 就是 $\rho$ 与包含同态 $\iota: H \hookrightarrow G$ 的复合，即 $\mathrm{Res}^G_H \rho = \rho \circ \iota$。限制表示通常不再是不可约的，即使 $\rho$ 不可约。

<!-- restriction_character -->
> [!Proposition]
> **限制表示的特征标 Character of Restricted Representation**：设 $\rho: G \to GL(V)$ 是 $G$ 的表示，$H \leq G$，则限制表示 $\mathrm{Res}^G_H \rho$ 的特征标满足
> $$\chi_{\mathrm{Res}^G_H \rho}(h) = \chi_\rho(h), \quad \forall h \in H.$$
> 即 $\mathrm{Res}^G_H \rho$ 的特征标是 $\chi_\rho$ 限制到子群 $H$ 上的函数。

> **证明思路**：直接由限制表示定义，$\chi_{\mathrm{Res}^G_H \rho}(h) = \mathrm{tr}(\rho(h)) = \chi_\rho(h)$。

<!-- restriction_of_direct_sum -->
> [!Proposition]
> **限制表示与直和 Restriction and Direct Sum**：设 $\rho_1: G \to GL(V_1)$ 和 $\rho_2: G \to GL(V_2)$ 是 $G$ 的两个表示，$H \leq G$，则
> $$\mathrm{Res}^G_H (\rho_1 \oplus \rho_2) \cong (\mathrm{Res}^G_H \rho_1) \oplus (\mathrm{Res}^G_H \rho_2).$$
> 更一般地，限制运算与有限直和可交换。

> **证明思路**：$G$-等变的直和分解在限制到 $H$ 后仍然是 $H$-等变的，直和结构保持不变。

<!-- restriction_intertwiner -->
> [!Proposition]
> **限制表示的交结算子 Intertwining Operators and Restriction**：设 $T: V \to W$ 是从 $\rho: G \to GL(V)$ 到 $\sigma: G \to GL(W)$ 的交结算子（即 $T \in \mathrm{Hom}_G(V, W)$），则 $T$ 也是从 $\mathrm{Res}^G_H \rho$ 到 $\mathrm{Res}^G_H \sigma$ 的交结算子，即
> $$\mathrm{Hom}_G(V, W) \subseteq \mathrm{Hom}_H(V, W).$$

> **证明思路**：对所有 $h \in H$，交结条件 $T \circ \rho(h) = \sigma(h) \circ T$ 由 $T$ 是 $G$-交结算子直接得到（因 $H \leq G$）。

<!-- restriction_example_s3_to_s2 -->
> [!Example]+
> **$S_3$ 到 $S_2$ 的限制**：设 $G = S_3$，$H = \langle (12) \rangle \cong S_2 \cong \mathbb{Z}/2\mathbb{Z}$，$\rho = \rho_{\mathrm{std}}$ 是 $S_3$ 的二维标准表示（特征标值：$\chi(e) = 2$，$\chi((12)) = 0$）。限制到 $H$ 后，$\mathrm{Res}^{S_3}_H \rho_{\mathrm{std}}$ 是 $H \cong \mathbb{Z}/2\mathbb{Z}$ 的二维表示，其特征标在 $e$ 处取值 $2$、在 $(12)$ 处取值 $0$。$\mathbb{Z}/2\mathbb{Z}$ 有两个不可约表示：平凡表示（特征标 $1,1$）和符号表示（特征标 $1,-1$），由重数公式知 $\mathrm{Res}^{S_3}_H \rho_{\mathrm{std}} \cong \rho_{\mathrm{triv}} \oplus \rho_{\mathrm{sgn}}$（均一维），故标准表示在 $H$ 上的限制是可约的。
