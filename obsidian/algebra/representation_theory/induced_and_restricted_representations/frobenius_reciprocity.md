# Frobenius 互反律 Frobenius Reciprocity

<!-- frobenius_reciprocity -->
> [!Theorem]
> **Frobenius 互反律 Frobenius Reciprocity**：设 $G$ 是有限群，$H \leq G$，$\sigma$ 是 $H$ 的（有限维复）表示，$\tau$ 是 $G$ 的（有限维复）表示。则
> $$\langle \chi_{\mathrm{Ind}^G_H \sigma},\, \chi_\tau \rangle_G = \langle \chi_\sigma,\, \chi_{\mathrm{Res}^G_H \tau} \rangle_H,$$
> 其中 $\langle \cdot, \cdot \rangle_G$ 和 $\langle \cdot, \cdot \rangle_H$ 分别表示 $G$ 和 $H$ 上的类函数内积。

> **证明思路**：将 $\langle \chi_{\mathrm{Ind}^G_H \sigma}, \chi_\tau \rangle_G$ 展开，利用诱导特征标公式：
> $$\langle \chi_{\mathrm{Ind}^G_H \sigma}, \chi_\tau \rangle_G = \frac{1}{|G|} \sum_{g \in G} \chi_{\mathrm{Ind}^G_H \sigma}(g) \overline{\chi_\tau(g)}.$$
> 将诱导特征标公式代入，调换求和顺序，令 $x^{-1}gx = h \in H$，即可化为
> $$\frac{1}{|H|} \sum_{h \in H} \chi_\sigma(h) \overline{\chi_\tau(h)} = \langle \chi_\sigma, \chi_{\mathrm{Res}^G_H \tau} \rangle_H.$$

<!-- frobenius_reciprocity_adjoint -->
> [!Corollary]
> **诱导与限制互为伴随 Induction-Restriction Adjointness**：Frobenius 互反律在范畴论意义下说明，诱导函子 $\mathrm{Ind}^G_H$ 与限制函子 $\mathrm{Res}^G_H$ 构成一对伴随函子：
> $$\mathrm{Hom}_G(\mathrm{Ind}^G_H W, V) \cong \mathrm{Hom}_H(W, \mathrm{Res}^G_H V),$$
> 其中同构为 $\mathbb{C}$-线性空间同构，对 $H$-模 $W$ 和 $G$-模 $V$ 均自然。

> **证明思路**：定义映射 $\Phi: \mathrm{Hom}_G(\mathrm{Ind}^G_H W, V) \to \mathrm{Hom}_H(W, \mathrm{Res}^G_H V)$，将 $G$-模同态 $f: FG \otimes_{FH} W \to V$ 对应到 $H$-模同态 $w \mapsto f(1 \otimes w)$，验证其为双射且与 $H$-线性性相容。

<!-- frobenius_reciprocity_multiplicity -->
> [!Corollary]
> **重数对称性 Multiplicity Symmetry**：设 $F = \mathbb{C}$，$\sigma$ 是 $H$ 的不可约表示，$\tau$ 是 $G$ 的不可约表示，则
> $$[\mathrm{Ind}^G_H \sigma : \tau] = [\mathrm{Res}^G_H \tau : \sigma],$$
> 即 $\tau$ 在 $\mathrm{Ind}^G_H \sigma$ 中出现的重数等于 $\sigma$ 在 $\mathrm{Res}^G_H \tau$ 中出现的重数。

> **证明思路**：由重数公式，$[\mathrm{Ind}^G_H \sigma : \tau] = \langle \chi_{\mathrm{Ind}^G_H \sigma}, \chi_\tau \rangle_G$，由 Frobenius 互反律即等于 $\langle \chi_\sigma, \chi_{\mathrm{Res}^G_H \tau} \rangle_H = [\mathrm{Res}^G_H \tau : \sigma]$。

<!-- frobenius_reciprocity_example -->
> [!Example]+
> **$S_3$ 的诱导表示分解**：设 $G = S_3$，$H = \langle (12) \rangle \cong \mathbb{Z}/2\mathbb{Z}$，$\sigma = \rho_{\mathrm{sgn}}$（$H$ 的符号表示，一维）。$\mathrm{Ind}^{S_3}_H \sigma$ 是 $S_3$ 的三维表示（$[S_3 : H] = 3$）。
>
> 利用 Frobenius 互反律计算不可约分解：对 $S_3$ 的每个不可约表示 $\tau_i$（平凡、符号、标准），计算 $[\mathrm{Res}^{S_3}_H \tau_i : \sigma_{\mathrm{sgn}}]$——即 $\sigma_{\mathrm{sgn}}$ 在 $\tau_i|_H$ 中的重数。可得
> $$\mathrm{Ind}^{S_3}_H \rho_{\mathrm{sgn}} \cong \rho_{\mathrm{sgn}} \oplus \rho_{\mathrm{std}},$$
> 即符号表示（一维）加标准表示（二维）。
