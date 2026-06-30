# 正像与逆像

## 正像

<!-- direct_image_def -->
> [!Definition]
> **正像 Direct Image**：设 $f: X \to Y$ 是拓扑空间之间的连续映射，$\mathcal{F}$ 是 $X$ 上的预层（或层）。$\mathcal{F}$ 沿 $f$ 的**正像**（direct image），记作 $f_* \mathcal{F}$（也记 $f_!$ 或 $R^0 f_*$ 的部分），是 $Y$ 上的预层（或层），定义为：
> $$
> (f_* \mathcal{F})(V) = \mathcal{F}(f^{-1}(V)), \qquad \forall V \subseteq Y \text{ 开}.
> $$
> 限制态射：若 $W \subseteq V$，则 $(f_* \mathcal{F})(V) \to (f_* \mathcal{F})(W)$ 为 $\mathcal{F}(f^{-1}(V)) \to \mathcal{F}(f^{-1}(W))$（由 $f^{-1}(W) \subseteq f^{-1}(V)$ 给出）。

> **注**：若 $\mathcal{F}$ 是层，则 $f_* \mathcal{F}$ 也是层（层条件对 $f_*$ 的构造保持）；若 $\mathcal{F}$ 是预层，则 $f_* \mathcal{F}$ 是预层。

<!-- direct_image_functor -->
> [!Definition]
> **正像函子 Direct Image Functor**：正像定义函子：
> $$
> f_*: \mathrm{Sh}(X, \mathbf{Ab}) \to \mathrm{Sh}(Y, \mathbf{Ab}),
> $$
> 对层态射 $\varphi: \mathcal{F} \to \mathcal{G}$，$(f_* \varphi)_V = \varphi_{f^{-1}(V)}: \mathcal{F}(f^{-1}(V)) \to \mathcal{G}(f^{-1}(V))$。

## 逆像

<!-- inverse_image_def -->
> [!Definition]
> **逆像 Inverse Image**：设 $f: X \to Y$ 是连续映射，$\mathcal{G}$ 是 $Y$ 上的预层（或层）。$\mathcal{G}$ 沿 $f$ 的**逆像**（inverse image），记作 $f^{-1} \mathcal{G}$，是 $X$ 上的层，构造如下：
>
> 先定义预层：
> $$
> (f^{-1}_{\mathrm{pre}} \mathcal{G})(U) = \varinjlim_{V \supseteq f(U),\, V \text{ 开}} \mathcal{G}(V), \qquad \forall U \subseteq X \text{ 开},
> $$
> 其中余极限对包含 $f(U)$ 的所有 $Y$ 中开集 $V$ 取（以反包含为偏序，构成有向系）；再对此预层层化：
> $$
> f^{-1} \mathcal{G} = (f^{-1}_{\mathrm{pre}} \mathcal{G})^+.
> $$

> **注**：逆像函子在茎处有简洁描述：$(f^{-1}\mathcal{G})_x \cong \mathcal{G}_{f(x)}$，即逆像层在 $x$ 处的茎等于原层在像点 $f(x)$ 处的茎。这使得逆像在直觉上清晰：将 $Y$ 上的局部数据沿 $f$ 拉回到 $X$。

<!-- inverse_image_functor -->
> [!Definition]
> **逆像函子 Inverse Image Functor**：逆像定义函子：
> $$
> f^{-1}: \mathrm{Sh}(Y, \mathbf{Ab}) \to \mathrm{Sh}(X, \mathbf{Ab}).
> $$

## 正逆像伴随

<!-- direct_inverse_adjunction -->
> [!Theorem]
> **正逆像伴随 Adjunction between Inverse and Direct Image**：设 $f: X \to Y$ 连续。则：
> $$
> f^{-1} \dashv f_*,
> $$
> 即存在自然同构：
> $$
> \mathrm{Hom}_{\mathrm{Sh}(X)}(f^{-1}\mathcal{G},\, \mathcal{F}) \cong \mathrm{Hom}_{\mathrm{Sh}(Y)}(\mathcal{G},\, f_*\mathcal{F}),
> $$
> 对 $\mathcal{F} \in \mathrm{Sh}(X)$，$\mathcal{G} \in \mathrm{Sh}(Y)$ 自然。
>
> **证明思路**：伴随同构由以下给出：给定 $\varphi: f^{-1}\mathcal{G} \to \mathcal{F}$（$X$ 上的层态射），对每个 $Y$ 的开集 $V$，有 $\mathcal{G}(V) \to (f^{-1}\mathcal{G})(f^{-1}(V))$（来自逆像的构造）再复合 $\varphi_{f^{-1}(V)}$ 给出 $\mathcal{G}(V) \to \mathcal{F}(f^{-1}(V)) = (f_*\mathcal{F})(V)$，这定义了 $\mathcal{G} \to f_*\mathcal{F}$。此对应的逆方向类似构造，双方均自然。

## 函子性与复合

<!-- pushforward_pullback_composition -->
> [!Theorem]
> **正逆像的函子性与复合**：设 $f: X \to Y$，$g: Y \to Z$ 为连续映射。则：
> $$
> (g \circ f)_* = g_* \circ f_*, \qquad (g \circ f)^{-1} = f^{-1} \circ g^{-1}.
> $$
>
> **证明思路**：对正像：$((g \circ f)_* \mathcal{F})(W) = \mathcal{F}((g \circ f)^{-1}(W)) = \mathcal{F}(f^{-1}(g^{-1}(W))) = (f_* \mathcal{F})(g^{-1}(W)) = (g_*(f_*\mathcal{F}))(W)$。对逆像：茎计算 $((g \circ f)^{-1}\mathcal{H})_x \cong \mathcal{H}_{(g \circ f)(x)} \cong (g^{-1}\mathcal{H})_{f(x)} \cong (f^{-1}(g^{-1}\mathcal{H}))_x$，再由茎检测同构定理得等价。

## 几何态射的雏形

<!-- geometric_morphism_sketch -->
> [!Definition]
> **几何态射（初步）Geometric Morphism (Preliminary)**：连续映射 $f: X \to Y$ 诱导的伴随对 $(f^{-1}, f_*)$ 是**几何态射**（geometric morphism）的原型：
> $$
> f^{-1}: \mathrm{Sh}(Y) \rightleftharpoons \mathrm{Sh}(X) : f_*,
> $$
> 其中左伴随 $f^{-1}$ 保持有限极限（因为 $f^{-1}$ 保持茎，茎化正合，且有限极限在茎处计算正确）。

> **注**：几何态射的完整定义要求左伴随（逆像函子）保持有限极限（是左正合的），这是拓扑斯理论（见 [[geometric_morphism|几何态射]]）中的核心概念。连续映射诱导的 $(f^{-1}, f_*)$ 满足此条件，故每个连续映射给出一个几何态射（层范畴之间）。

<!-- pushforward_stalk -->
> [!Example]+
> **正像与逆像的茎计算**：
> 1. **正像的茎**：$(f_*\mathcal{F})_y \cong \varinjlim_{V \ni y} \mathcal{F}(f^{-1}(V))$，一般**不等于** $\mathcal{F}_{f^{-1}(y)}$（除非 $f$ 是开映射且纤维连通等特殊情形）；
> 2. **逆像的茎**：$(f^{-1}\mathcal{G})_x \cong \mathcal{G}_{f(x)}$（精确等于像点处的茎，是逆像的关键性质）；
> 3. **包含映射**：若 $i: Z \hookrightarrow X$ 是子空间包含，则 $i^{-1}\mathcal{F}$ 为 $\mathcal{F}$ 在 $Z$ 上的**限制层** $\mathcal{F}|_Z$，茎 $(i^{-1}\mathcal{F})_z = \mathcal{F}_z$。
