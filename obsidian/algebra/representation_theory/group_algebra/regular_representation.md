# 正则表示 Regular Representation

<!-- regular_representation_as_fg_module -->
> [!Definition]
> **正则表示（作为 $FG$-模）Regular Representation as $FG$-Module**：群代数 $FG$ 本身可视为左 $FG$-模，$FG$ 在自身上通过左乘作用：
> $$e_g \cdot e_h = e_{gh}, \quad g, h \in G,$$
> 线性延拓后得到群同态
> $$\rho_{\mathrm{reg}}: G \to GL(FG), \quad \rho_{\mathrm{reg}}(g)(e_h) = e_{gh}.$$
> 称此为 $G$ 的**（左）正则表示**，表示空间 $FG$ 作为 $F$-线性空间维数为 $|G|$。

<!-- regular_character -->
> [!Proposition]
> **正则表示的特征标 Character of the Regular Representation**：正则表示 $\rho_{\mathrm{reg}}$ 的特征标 $\chi_{\mathrm{reg}}: G \to F$ 为
> $$\chi_{\mathrm{reg}}(g) = \begin{cases} |G| & \text{若 } g = e, \\ 0 & \text{若 } g \neq e. \end{cases}$$

> **证明思路**：在基 $\{e_h \mid h \in G\}$ 下，矩阵 $\rho_{\mathrm{reg}}(g)$ 的 $(h, h')$ 位置元素为 $[gh = h'] = \delta_{gh, h'}$。对角元 $[\rho_{\mathrm{reg}}(g)]_{h,h} = \delta_{gh, h} = [g = e]$。因此
> $$\chi_{\mathrm{reg}}(g) = \mathrm{tr}(\rho_{\mathrm{reg}}(g)) = \sum_{h \in G} \delta_{gh, h} = \sum_{h \in G} [g = e] = |G| \cdot [g = e].$$

<!-- regular_representation_contains_all_irreducibles -->
> [!Proposition]
> **正则表示包含所有不可约表示 Regular Representation Contains All Irreducibles**：设 $\mathrm{char}(F) \nmid |G|$，$\tau$ 是 $G$ 的任一不可约 $F$-表示。则 $\tau$ 是正则表示 $\rho_{\mathrm{reg}}$ 的子表示。更精确地，$\tau$ 在 $\rho_{\mathrm{reg}}$ 中出现至少一次（重数 $\geq 1$）。

> **证明思路**：利用特征标内积，$\tau$ 在 $\rho_{\mathrm{reg}}$ 中的重数为
> $$m_\tau = \langle \chi_{\mathrm{reg}}, \chi_\tau \rangle = \frac{1}{|G|} \sum_{g \in G} \chi_{\mathrm{reg}}(g)\, \overline{\chi_\tau(g)} = \frac{1}{|G|} \cdot |G| \cdot \overline{\chi_\tau(e)} = \overline{\deg \tau} = \deg \tau \geq 1.$$
> 因此每个不可约表示 $\tau$ 在 $\rho_{\mathrm{reg}}$ 中的重数等于 $\deg \tau$（其维数）。

> **注**：正则表示是表示论中最基本的研究对象，其分解结构反映了群的所有不可约表示的完整信息。
