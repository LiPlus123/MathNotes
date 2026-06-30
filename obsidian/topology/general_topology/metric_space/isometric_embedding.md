# 等距嵌入

## 等距映射与等距嵌入

<!-- isometry_definition -->
> [!Definition]
> **等距映射 Isometry**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间，映射 $f: X \to Y$。若对所有 $x, x' \in X$ 均有
> $$d_Y(f(x), f(x')) = d_X(x, x')$$
> 则称 $f$ 为**等距映射 Isometry**（或**等距 Isometric Map**）。

> **注**：等距映射自动是单射：若 $f(x) = f(x')$，则 $d_X(x, x') = d_Y(f(x), f(x')) = 0$，故 $x = x'$。

<!-- isometric_embedding_definition -->
> [!Definition]
> **等距嵌入 Isometric Embedding**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间。若存在等距映射 $f: X \to Y$，则称 $X$ **等距嵌入 Isometrically Embeds** 到 $Y$ 中，$f$ 称为从 $X$ 到 $Y$ 的**等距嵌入 Isometric Embedding**。

<!-- isometric_isomorphism_definition -->
> [!Definition]
> **等距同构 Isometric Isomorphism**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间。若存在双射等距映射 $f: X \to Y$（即 $f$ 是等距映射且是满射），则称 $f$ 是**等距同构 Isometric Isomorphism**，称 $(X, d_X)$ 与 $(Y, d_Y)$ **等距同构 Isometrically Isomorphic**，记为 $X \cong_{\mathrm{iso}} Y$。

> **注**：若 $f: X \to Y$ 是等距同构，则 $f^{-1}: Y \to X$ 也是等距同构。

## 等距嵌入与连续函数的关系

<!-- isometry_is_lipschitz -->
> [!Proposition]
> **等距映射是 Lipschitz 连续的 Isometries are Lipschitz Continuous**：设 $f: (X, d_X) \to (Y, d_Y)$ 是等距映射，则 $f$ 是 Lipschitz 常数为 $1$ 的 Lipschitz 连续函数，从而也是一致连续和连续的。
>
> **证明思路**：直接由等距条件 $d_Y(f(x), f(x')) = d_X(x, x')$ 得到，取 $L = 1$ 即满足 Lipschitz 条件。

<!-- isometry_homeomorphism -->
> [!Proposition]
> **等距同构是同胚 Isometric Isomorphisms are Homeomorphisms**：设 $f: (X, d_X) \to (Y, d_Y)$ 是等距同构，则 $f$ 和 $f^{-1}$ 都是连续的，即 $f$ 是从 $X$ 到 $Y$ 的**同胚 Homeomorphism**。特别地，等距同构保持所有度量拓扑性质。
>
> **证明思路**：$f$ 连续由上述命题得到。$f^{-1}$ 也是等距映射，故也连续。

<!-- isometric_embedding_onto_subspace -->
> [!Proposition]
> **等距嵌入到子空间 Isometric Embedding onto Subspace**：设 $f: (X, d_X) \to (Y, d_Y)$ 是等距嵌入，则 $f$ 是从 $X$ 到子空间 $(f(X), d_Y|_{f(X) \times f(X)})$ 的等距同构。
>
> **证明思路**：$f$ 作为到 $f(X)$ 的映射是双射的等距映射，故是等距同构。
