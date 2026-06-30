# 诱导表示 Induced Representations

<!-- induced_representation_def -->
> [!Definition]
> **诱导表示 Induced Representation**：设 $G$ 是有限群，$H \leq G$ 是子群，$(\sigma, W)$ 是 $H$ 的一个表示。固定 $H$ 在 $G$ 中的一组左陪集代表元 $s_1, s_2, \ldots, s_r$（其中 $r = [G : H]$），定义线性空间
> $$\mathrm{Ind}^G_H W = \bigoplus_{i=1}^{r} s_i W \cong W^{\oplus r},$$
> 并对 $g \in G$、$w \in W$，令 $G$ 作用在 $s_i w \in s_i W$ 上为：若 $g s_i = s_j h$（其中 $h \in H$，$s_j$ 是陪集 $g s_i H$ 的代表元），则
> $$g \cdot (s_i w) = s_j \sigma(h) w.$$
> 如此定义的 $G$-表示 $\mathrm{Ind}^G_H \sigma: G \to GL(\mathrm{Ind}^G_H W)$ 称为由 $\sigma$ **诱导的表示**。

> **注**：上述定义与陪集代表元的选取无关（不同选取给出等价的表示），常用群代数语言将其等价地表述为 $\mathrm{Ind}^G_H W = FG \otimes_{FH} W$（其中 $FH$ 通过 $\sigma$ 作用在 $W$ 上）。

<!-- induced_dimension -->
> [!Proposition]
> **诱导表示的维数 Dimension of Induced Representation**：设 $H \leq G$，$\sigma$ 是 $H$ 的 $d$ 维表示，则
> $$\deg(\mathrm{Ind}^G_H \sigma) = [G : H] \cdot \deg \sigma.$$

> **证明思路**：由定义，$\mathrm{Ind}^G_H W = \bigoplus_{i=1}^{[G:H]} s_i W$，各 $s_i W \cong W$，故总维数为 $[G:H] \cdot \dim W$。

<!-- induced_character_formula -->
> [!Theorem]
> **诱导特征标公式 Induced Character Formula**：设 $H \leq G$，$\sigma$ 是 $H$ 的表示，则诱导表示 $\mathrm{Ind}^G_H \sigma$ 的特征标为
> $$\chi_{\mathrm{Ind}^G_H \sigma}(g) = \frac{1}{|H|} \sum_{\substack{x \in G \\ x^{-1}gx \in H}} \chi_\sigma(x^{-1}gx), \quad \forall g \in G.$$
> 等价地，若 $s_1, \ldots, s_r$ 是 $H$ 的左陪集代表元，则
> $$\chi_{\mathrm{Ind}^G_H \sigma}(g) = \sum_{\substack{i=1 \\ s_i^{-1} g s_i \in H}}^{r} \chi_\sigma(s_i^{-1} g s_i).$$

> **证明思路**：写出 $\mathrm{Ind}^G_H \sigma$ 在 $\bigoplus_i s_i W$ 上的矩阵，$g$ 作用将 $s_i W$ 映至 $s_j W$（$j$ 由陪集代表确定）。对角块只在 $g s_i H = s_i H$（即 $s_i^{-1} g s_i \in H$）时非零，此时对角块为 $\sigma(s_i^{-1} g s_i)$，取迹求和即得。

<!-- induced_from_trivial -->
> [!Example]+
> **从平凡表示诱导 Induction from Trivial Representation**：设 $H \leq G$，$\sigma = \rho_{\mathrm{triv}}$ 是 $H$ 的一维平凡表示。则 $\mathrm{Ind}^G_H \rho_{\mathrm{triv}}$ 是 $G$ 的 $[G:H]$-维置换表示（$G$ 作用在陪集空间 $G/H$ 上），其特征标为
> $$\chi_{\mathrm{Ind}^G_H \rho_{\mathrm{triv}}}(g) = |\{gH'\in G/H \mid gH' = H'\}| = |\{s_i H \mid g s_i H = s_i H\}|,$$
> 即 $g$ 在 $G/H$ 上的不动点个数。

<!-- induced_regular_representation -->
> [!Example]+
> **从单位子群诱导正则表示 Induction to Regular Representation**：若 $H = \{e\}$ 是平凡子群，$\sigma$ 是其唯一（一维平凡）表示，则
> $$\mathrm{Ind}^G_{\{e\}} \sigma \cong \rho_{\mathrm{reg}},$$
> 即由平凡子群的平凡表示诱导得到 $G$ 的正则表示，维数为 $|G|$。

> **证明思路**：$[G:\{e\}] = |G|$，$\bigoplus_{g \in G} g \cdot \mathbb{C}$ 正好是群代数 $\mathbb{C}G$ 上的左正则表示。
