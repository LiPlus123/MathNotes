# Mackey 不可约性判据 Mackey Irreducibility Criterion

<!-- mackey_irreducibility_criterion -->
> [!Theorem]
> **Mackey 不可约性判据 Mackey Irreducibility Criterion**：设 $G$ 是有限群，$H \leq G$，$\sigma$ 是 $H$ 的有限维复表示（$F = \mathbb{C}$）。设 $\{s_1, s_2, \ldots, s_m\}$ 是 $H \backslash G / H$ 的代表元系（可取 $s_1 = e$）。则诱导表示 $\mathrm{Ind}^G_H \sigma$ 不可约，当且仅当同时满足：
> 1. $\sigma$ 是不可约表示；
> 2. 对每个 $i \geq 2$（即 $s_i \notin H$），表示 $\sigma\big|_{H \cap s_i H s_i^{-1}}$ 与 ${}^{s_i}\!\sigma\big|_{H \cap s_i H s_i^{-1}}$ 在 $H \cap s_i H s_i^{-1}$ 上不等价（即它们不共享任何不可约公因子）。

> **证明思路**：由 Frobenius 互反律，$\mathrm{Ind}^G_H \sigma$ 不可约当且仅当
> $$\langle \chi_{\mathrm{Ind}^G_H \sigma}, \chi_{\mathrm{Ind}^G_H \sigma} \rangle_G = 1.$$
> 利用 Mackey 分解，展开内积得
> $$\langle \chi_{\mathrm{Ind}^G_H \sigma}, \chi_{\mathrm{Ind}^G_H \sigma} \rangle_G = \langle \chi_\sigma, \chi_{\mathrm{Res}^G_H \mathrm{Ind}^G_H \sigma} \rangle_H = \sum_{i=1}^m \langle \chi_\sigma,\, \chi_{\mathrm{Ind}^H_{H \cap s_i H s_i^{-1}}({}^{s_i}\!\sigma|_{H \cap s_i H s_i^{-1}})} \rangle_H.$$
> 再次用 Frobenius 互反律，各项化为 $\langle \chi_{\sigma|_{H \cap s_i H s_i^{-1}}}, \chi_{{}^{s_i}\!\sigma|_{H \cap s_i H s_i^{-1}}} \rangle_{H \cap s_i H s_i^{-1}}$。当 $s_1 = e$ 时，对应项为 $\langle \chi_\sigma, \chi_\sigma \rangle_H$；由条件 1，此项等于 $1$ 当且仅当 $\sigma$ 不可约。其余项非负，故总和等于 $1$ 当且仅当条件 1 和条件 2 均满足。

<!-- mackey_criterion_normal_subgroup -->
> [!Corollary]
> **正规子群情形 Mackey Criterion for Normal Subgroups**：设 $H \trianglelefteq G$ 是正规子群，$\sigma$ 是 $H$ 的不可约表示。则 $\mathrm{Ind}^G_H \sigma$ 不可约，当且仅当 $\sigma$ 的 $G$-轨道的稳定子恰好是 $H$，即对所有 $s \in G \setminus H$，有 ${}^s\!\sigma \not\cong \sigma$。

> **证明思路**：当 $H \trianglelefteq G$ 时，$s H s^{-1} = H$，故 $H \cap s H s^{-1} = H$，Mackey 判据的条件 2 化为：对 $s \notin H$，${}^s\!\sigma|_H = {}^s\!\sigma \not\cong \sigma$，即 $\sigma$ 在 $G$ 对不可约 $H$-表示的作用（共轭作用）下的稳定子恰为 $H$。

<!-- mackey_criterion_abelian -->
> [!Corollary]
> **交换子群的诱导表示 Induced from Abelian Subgroup**：设 $H \leq G$，$H$ 是交换群，$\sigma$ 是 $H$ 的一维（不可约）表示。则 $\mathrm{Ind}^G_H \sigma$ 不可约当且仅当：对所有 $s \in G$ 使得 $s \notin H$，有 ${}^s\!\sigma\big|_{H \cap sHs^{-1}} \not\cong \sigma\big|_{H \cap sHs^{-1}}$。

<!-- mackey_criterion_example_dihedral -->
> [!Example]+
> **二面体群的诱导表示 Induction in Dihedral Group**：设 $G = D_n$（$n$ 阶二面体群，$|G| = 2n$），$H = \langle r \rangle \cong \mathbb{Z}/n\mathbb{Z}$ 是旋转子群，$\sigma_k: r \mapsto e^{2\pi i k/n}$（$0 \leq k \leq n-1$）是 $H$ 的一维不可约表示。
>
> $[G:H] = 2$，故 $\mathrm{Ind}^G_H \sigma_k$ 是二维表示。$H \backslash G / H$ 有两个双陪集：$H \cdot e \cdot H = H$ 和 $H \cdot s \cdot H$（$s$ 为翻转元素）。共轭作用：${}^s\!\sigma_k(r) = \sigma_k(srs^{-1}) = \sigma_k(r^{-1}) = e^{-2\pi i k/n} = \sigma_{n-k}(r)$，故 ${}^s\!\sigma_k = \sigma_{n-k}$。
>
> 由 Mackey 判据，$\mathrm{Ind}^G_H \sigma_k$ 不可约当且仅当 $\sigma_k \not\cong \sigma_{n-k}$，即 $k \neq 0$ 且 $2k \not\equiv 0 \pmod{n}$。当 $n$ 为奇数时，$1 \leq k \leq n-1$ 均满足（因 $k \neq n-k$ 在 $\mathbb{Z}/n\mathbb{Z}$ 中等价于 $2k \not\equiv 0$，$n$ 奇数时恒成立）；当 $n$ 为偶数时，$k = n/2$ 时 $\sigma_k = \sigma_{n-k}$，此时诱导表示可约。

<!-- mackey_criterion_counterexample -->
> [!Example]+
> **可约的诱导表示 Reducible Induced Representation**：设 $G = \mathbb{Z}/4\mathbb{Z}$，$H = \{0, 2\} \cong \mathbb{Z}/2\mathbb{Z}$，$\sigma$ 是 $H$ 的符号表示（$\sigma(2) = -1$）。则 $[G:H] = 2$，$H \backslash G / H = \{H, 1+H\}$，对代表元 $s = 1$，$sHs^{-1} = H$（因 $G$ 交换），${}^s\!\sigma = \sigma$。由 Mackey 判据，$\sigma|_{H \cap sHs^{-1}} = \sigma|_H = \sigma$ 与 ${}^s\!\sigma|_H = \sigma$ 等价，故条件 2 不满足，$\mathrm{Ind}^G_H \sigma$ 可约，可分解为 $G$ 的两个一维不可约表示的直和。
