# Mackey 分解思想 Mackey Decomposition

<!-- double_coset_def -->
> [!Definition]
> **双陪集 Double Coset**：设 $G$ 是有限群，$H, K \leq G$ 是两个子群。对 $s \in G$，集合
> $$HsK = \{hsk \mid h \in H,\, k \in K\}$$
> 称为 $H$ 与 $K$ 关于 $s$ 的**双陪集**。$G$ 关于 $(H, K)$ 的全体双陪集构成 $G$ 的一个划分，记双陪集空间为 $H \backslash G / K$，每个双陪集代表元的选取称为**$(H, K)$-双陪集代表元系**。

> **注**：一般来说，$|HsK| = \dfrac{|H| \cdot |K|}{|H \cap sKs^{-1}|}$。当 $H = K$ 时，$H \backslash G / H$ 的元素数即为 $H$-双陪集的个数。

<!-- conjugate_representation_def -->
> [!Definition]
> **共轭表示 Conjugate Representation**：设 $H \leq G$，$\sigma: H \to GL(W)$ 是 $H$ 的一个表示，$s \in G$。定义 $s^{-1}Hs \leq G$ 上的表示 ${}^s\sigma: s^{-1}Hs \to GL(W)$ 为
> $${}^s\sigma(x) = \sigma(sxs^{-1}), \quad \forall x \in s^{-1}Hs,$$
> 称为 $\sigma$ 的 **$s$-共轭表示**。其特征标满足 $\chi_{{}^s\sigma}(x) = \chi_\sigma(sxs^{-1})$。

<!-- mackey_decomposition_theorem -->
> [!Theorem]
> **Mackey 分解定理 Mackey Decomposition Theorem**：设 $G$ 是有限群，$H, K \leq G$，$\sigma$ 是 $H$ 的一个有限维复表示。设 $\{s_1, s_2, \ldots, s_m\}$ 是 $(K, H)$-双陪集 $K \backslash G / H$ 的一组代表元系，则
> $$\mathrm{Res}^G_K \mathrm{Ind}^G_H \sigma \cong \bigoplus_{i=1}^{m} \mathrm{Ind}^K_{K \cap s_i H s_i^{-1}} \left({}^{s_i}\!\sigma\big|_{K \cap s_i H s_i^{-1}}\right),$$
> 其中 ${}^{s_i}\!\sigma\big|_{K \cap s_i H s_i^{-1}}$ 表示 $s_i$-共轭表示 ${}^{s_i}\!\sigma$ 限制到 $K \cap s_i H s_i^{-1}$ 上。

> **证明思路**：将 $G/H$ 按 $K$-轨道（对应于 $K \backslash G / H$ 双陪集）分组：$G/H = \bigsqcup_{i=1}^m K / (K \cap s_i H s_i^{-1}) \cdot s_i H$。对每个 $K$-轨道 $K s_i H / H$，相应的 $K$-表示恰好是 $\mathrm{Ind}^K_{K \cap s_i H s_i^{-1}} ({}^{s_i}\!\sigma|_{K \cap s_i H s_i^{-1}})$，将各轨道对应的表示直和即得 Mackey 分解。

<!-- mackey_decomposition_special_case -->
> [!Corollary]
> **$H = K$ 的情形 Mackey Decomposition for $H = K$**：设 $H \leq G$，$\sigma$ 是 $H$ 的表示，$\{s_1, \ldots, s_m\}$ 是 $H \backslash G / H$ 的代表元系（$s_1 = e$ 为恒等元）。则
> $$\mathrm{Res}^G_H \mathrm{Ind}^G_H \sigma \cong \bigoplus_{i=1}^{m} \mathrm{Ind}^H_{H \cap s_i H s_i^{-1}} \left({}^{s_i}\!\sigma\big|_{H \cap s_i H s_i^{-1}}\right).$$
> 当 $i = 1$（$s_1 = e$）时，对应的分量恰为 $\sigma$ 本身。

<!-- mackey_decomposition_example -->
> [!Example]+
> **$S_3$ 中的 Mackey 分解**：设 $G = S_3$，$H = \langle (123) \rangle \cong \mathbb{Z}/3\mathbb{Z}$，$K = \langle (12) \rangle \cong \mathbb{Z}/2\mathbb{Z}$，$\sigma$ 是 $H$ 的一维表示（$\sigma((123)) = \omega$，$\omega = e^{2\pi i/3}$）。$[G:H] = 2$，故 $\mathrm{Ind}^G_H \sigma$ 是二维表示。
>
> $K \backslash G / H$：$|G| = 6$，$|H| = 3$，$|K| = 2$，双陪集只有一个（$G$ 本身），代表元取 $s = e$。于是
> $$\mathrm{Res}^G_K \mathrm{Ind}^G_H \sigma \cong \mathrm{Ind}^K_{K \cap H} (\sigma|_{K \cap H}) = \mathrm{Ind}^K_{\{e\}} (\sigma|_{\{e\}}) \cong \mathbb{C} \oplus \mathbb{C},$$
> 即限制到 $K$ 后是两个一维平凡表示的直和（因为 $K \cap H = \{e\}$，在单位元上 $\sigma(\mathrm{Id}) = 1$）。
