# 诱导同态

## 诱导同态的定义

<!-- induced_homomorphism_definition -->
> [!Definition]
> **诱导同态 Induced Homomorphism**：设 $f: X \to Y$ 是连续映射，$x_0 \in X$，令 $y_0 = f(x_0) \in Y$。定义 $f$ 诱导的**同态 Induced Homomorphism** $f_*: \pi_1(X, x_0) \to \pi_1(Y, y_0)$ 为：
> $$f_*([\gamma]) = [f \circ \gamma],$$
> 即将 $X$ 中以 $x_0$ 为基点的回路 $\gamma$ 通过 $f$ 映射为 $Y$ 中以 $y_0$ 为基点的回路 $f \circ \gamma$。

<!-- induced_homomorphism_well_defined -->
> [!Theorem]
> **诱导同态是群同态 Induced Map is a Group Homomorphism**：上述 $f_*$ 是良定义的群同态，即：
> 1. **良定义**：若 $\gamma \simeq \delta\ \mathrm{rel}\ \partial I$，则 $f \circ \gamma \simeq f \circ \delta\ \mathrm{rel}\ \partial I$；
> 2. **保持乘法**：$f_*([\gamma] \cdot [\delta]) = f_*([\gamma]) \cdot f_*([\delta])$。
>
> **证明思路**：(1) 若 $H$ 是 $\gamma$ 到 $\delta$ 的道路同伦，则 $f \circ H$ 是 $f \circ \gamma$ 到 $f \circ \delta$ 的道路同伦。(2) 对回路 $\gamma, \delta$：$f_*([\gamma * \delta]) = [f \circ (\gamma * \delta)] = [(f \circ \gamma) * (f \circ \delta)] = [f \circ \gamma] \cdot [f \circ \delta] = f_*([\gamma]) \cdot f_*([\delta])$（利用 $(f \circ (\gamma * \delta))(s) = f((\gamma * \delta)(s))$ 按定义与 $((f \circ \gamma) * (f \circ \delta))(s)$ 逐点相等）。

## 函子性

<!-- induced_homomorphism_functoriality -->
> [!Theorem]
> **诱导同态的函子性 Functoriality of Induced Homomorphisms**：设 $f: (X, x_0) \to (Y, y_0)$，$g: (Y, y_0) \to (Z, z_0)$ 是连续映射（即 $f(x_0) = y_0$，$g(y_0) = z_0$），则：
> 1. $(g \circ f)_* = g_* \circ f_*: \pi_1(X, x_0) \to \pi_1(Z, z_0)$；
> 2. $(\mathrm{id}_X)_* = \mathrm{id}_{\pi_1(X, x_0)}$。
>
> **证明思路**：(1) 对任意 $[\gamma] \in \pi_1(X, x_0)$，$(g \circ f)_*([\gamma]) = [(g \circ f) \circ \gamma] = [g \circ (f \circ \gamma)] = g_*([f \circ \gamma]) = g_*(f_*([\gamma]))$。(2) $(\mathrm{id}_X)_*([\gamma]) = [\mathrm{id}_X \circ \gamma] = [\gamma]$。

## 同伦的映射诱导相同的同态

<!-- homotopic_maps_same_homomorphism -->
> [!Theorem]
> **保基点同伦诱导相同同态 Basepoint-Preserving Homotopic Maps Induce the Same Homomorphism**：设 $f, g: X \to Y$ 是连续映射，$f(x_0) = g(x_0) = y_0$。若 $f \simeq g\ \mathrm{rel}\ \{x_0\}$（即存在保基点的同伦 $H: X \times I \to Y$ 满足 $H(x, 0) = f(x)$，$H(x, 1) = g(x)$，且 $H(x_0, t) = y_0$ 对所有 $t$ 成立），则 $f_* = g_*: \pi_1(X, x_0) \to \pi_1(Y, y_0)$。
>
> **证明思路**：对任意以 $x_0$ 为基点的回路 $\gamma$，令 $G(s, t) = H(\gamma(s), t)$，则 $G$ 是以 $y_0$ 为基点的回路族，$G(\cdot, 0) = f \circ \gamma$，$G(\cdot, 1) = g \circ \gamma$，且 $G(0, t) = G(1, t) = H(x_0, t) = y_0$，故 $G$ 是从 $f \circ \gamma$ 到 $g \circ \gamma$ 的道路同伦，即 $f_*([\gamma]) = g_*([\gamma])$。

## 同伦等价空间有同构的基本群

<!-- homotopy_equivalence_induces_isomorphism -->
> [!Theorem]
> **同伦等价诱导基本群同构 Homotopy Equivalence Induces Isomorphism on Fundamental Group**：若 $f: X \to Y$ 是同伦等价（$f(x_0) = y_0$），则诱导同态 $f_*: \pi_1(X, x_0) \to \pi_1(Y, y_0)$ 是群同构。特别地，同伦等价的拓扑空间有同构的基本群。
>
> **证明思路**：设 $g: Y \to X$ 是 $f$ 的同伦逆，即 $g \circ f \simeq \mathrm{id}_X$ 且 $f \circ g \simeq \mathrm{id}_Y$。令 $x_1 = g(y_0)$；由 $g \circ f \simeq \mathrm{id}_X$ 知 $(g \circ f)_* = g_* \circ f_*$ 与 $(\mathrm{id}_X)_* = \mathrm{id}_{\pi_1(X, x_0)}$ 相差一个由同伦路径诱导的共轭，利用基点变换同构可得 $g_* \circ f_*$ 是同构；同理 $f_* \circ g_*$ 是同构；故 $f_*$ 既单又满，为同构。

> **注**：此定理表明基本群是同伦不变量（准确说是同伦等价意义下的不变量）。可缩空间的基本群平凡，因为它同伦等价于单点空间（$\pi_1(\{*\}) = 0$）。
