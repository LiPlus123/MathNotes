# 核与余核

## 核

<!-- kernel_def -->
> [!Definition]
> **核 Kernel**：设 $\mathcal{C}$ 是预加法范畴，$f: A \to B$ 是态射。$f$ 的**核**（kernel）是 $f$ 与零态射 $0_{A,B}$ 的**等化子**（equalizer）：
> $$
> \ker f = \mathrm{Eq}(f,\, 0_{A,B}),
> $$
> 即对象 $K$ 与态射 $k: K \to A$，满足 $f \circ k = 0$，且对任意 $k': K' \to A$ 满足 $f \circ k' = 0$，存在唯一态射 $u: K' \to K$ 使得 $k \circ u = k'$。

> **注**：核 $k: \ker f \to A$ 的泛性质可简述为：**"通过 $k$ 的态射恰好是那些经 $f$ 后为零的态射"**：
> $$
> \mathrm{Hom}(X, \ker f) \cong \{ g \in \mathrm{Hom}(X, A) \mid f \circ g = 0 \}.
> $$
> 在 $R\text{-}\mathbf{Mod}$ 中，$\ker f$ 即通常的核子模 $\{a \in A \mid f(a) = 0\}$。

## 余核

<!-- cokernel_def -->
> [!Definition]
> **余核 Cokernel**：设 $\mathcal{C}$ 是预加法范畴，$f: A \to B$ 是态射。$f$ 的**余核**（cokernel）是 $f$ 与零态射 $0_{A,B}$ 的**余等化子**（coequalizer）：
> $$
> \mathrm{coker}\, f = \mathrm{Coeq}(f,\, 0_{A,B}),
> $$
> 即对象 $Q$ 与态射 $q: B \to Q$，满足 $q \circ f = 0$，且对任意 $q': B \to Q'$ 满足 $q' \circ f = 0$，存在唯一 $v: Q \to Q'$ 使得 $v \circ q = q'$。

> **注**：余核的泛性质：**"从 $q$ 出发的态射恰好是那些在 $f$ 的像上为零的态射"**：
> $$
> \mathrm{Hom}(\mathrm{coker}\, f, X) \cong \{ h \in \mathrm{Hom}(B, X) \mid h \circ f = 0 \}.
> $$
> 在 $R\text{-}\mathbf{Mod}$ 中，$\mathrm{coker}\, f = B / \mathrm{im}(f)$（商模）。

## 像与余像

<!-- image_def -->
> [!Definition]
> **像与余像 Image and Coimage**：设 $\mathcal{C}$ 是同时具有核与余核的预加法范畴，$f: A \to B$ 是态射。
> - $f$ 的**像**（image）定义为余核的核：
> $$
> \mathrm{im}\, f = \ker(\mathrm{coker}\, f) = \ker(q: B \to \mathrm{coker}\, f),
> $$
> 配以典范单态射 $\iota: \mathrm{im}\, f \hookrightarrow B$；
> - $f$ 的**余像**（coimage）定义为核的余核：
> $$
> \mathrm{coim}\, f = \mathrm{coker}(\ker f) = \mathrm{coker}(k: \ker f \to A),
> $$
> 配以典范满态射 $p: A \twoheadrightarrow \mathrm{coim}\, f$。

<!-- canonical_morphism_coim_im -->
> [!Theorem]
> **典范态射 Canonical Morphism from Coimage to Image**：设 $f: A \to B$ 在预加法范畴 $\mathcal{C}$ 中具有核与余核（从而具有余像与像）。则存在唯一态射
> $$
> \bar{f}: \mathrm{coim}\, f \to \mathrm{im}\, f,
> $$
> 使得下图交换：
> $$
> A \xrightarrow{p} \mathrm{coim}\, f \xrightarrow{\bar{f}} \mathrm{im}\, f \xrightarrow{\iota} B,
> $$
> 即 $f = \iota \circ \bar{f} \circ p$。
>
> **证明思路**：由 $q \circ f = 0$（余核的性质），$f$ 穿过 $\ker q = \mathrm{im}\, f$，得到 $f': A \to \mathrm{im}\, f$；又因 $f' \circ k = 0$（$k$ 为核），$f'$ 穿过 $\mathrm{coker}(k) = \mathrm{coim}\, f$，得唯一 $\bar{f}$。

> **注**：在一般预加法范畴中，$\bar{f}$ 不必是同构。阿贝尔范畴的核心额外公理正是要求 $\bar{f}$ 为同构（典范分解为同构）。
