# 乘积空间的基本群

## 乘积空间基本群的同构

<!-- product_space_fundamental_group -->
> [!Theorem]
> **乘积空间的基本群 Fundamental Group of Product Space**：设 $X, Y$ 是拓扑空间，$(x_0, y_0) \in X \times Y$。则有群同构：
> $$\pi_1(X \times Y,\, (x_0, y_0)) \cong \pi_1(X, x_0) \times \pi_1(Y, y_0).$$
> 同构由映射 $\Phi: \pi_1(X \times Y, (x_0, y_0)) \to \pi_1(X, x_0) \times \pi_1(Y, y_0)$ 给出：
> $$\Phi([\gamma]) = \bigl([p_1 \circ \gamma],\, [p_2 \circ \gamma]\bigr),$$
> 其中 $p_1: X \times Y \to X$ 和 $p_2: X \times Y \to Y$ 是两个投影映射。
>
> **证明思路**：
>
> **同态**：由诱导同态的定义，$(p_1)_*$ 和 $(p_2)_*$ 均是群同态，故 $\Phi = ((p_1)_*, (p_2)_*)$ 是同态。
>
> **单射**：若 $[p_1 \circ \gamma] = [c_{x_0}]$ 且 $[p_2 \circ \gamma] = [c_{y_0}]$，设 $H_1: I \times I \to X$ 是 $p_1 \circ \gamma$ 到 $c_{x_0}$ 的道路同伦，$H_2: I \times I \to Y$ 是 $p_2 \circ \gamma$ 到 $c_{y_0}$ 的道路同伦，则 $H(s, t) = (H_1(s, t), H_2(s, t))$ 是 $\gamma$ 到 $c_{(x_0, y_0)}$ 的道路同伦，故 $[\gamma] = [c_{(x_0,y_0)}]$。
>
> **满射**：对 $[\alpha] \in \pi_1(X, x_0)$，$[\beta] \in \pi_1(Y, y_0)$，定义 $\gamma: I \to X \times Y$，$\gamma(s) = (\alpha(s), \beta(s))$，则 $\gamma$ 是以 $(x_0, y_0)$ 为基点的回路，且 $\Phi([\gamma]) = ([\alpha], [\beta])$。

## 推广与例子

<!-- product_space_fundamental_group_corollary -->
> [!Corollary]
> **有限乘积空间的基本群 Fundamental Group of Finite Product**：对任意有限个拓扑空间 $X_1, X_2, \ldots, X_n$，有群同构：
> $$\pi_1\!\left(\prod_{i=1}^n X_i,\, (x_1^0, \ldots, x_n^0)\right) \cong \prod_{i=1}^n \pi_1(X_i, x_i^0).$$
>
> **证明思路**：对两个空间的情形反复归纳应用即得。

<!-- torus_fundamental_group -->
> [!Example]+
> **环面的基本群 Fundamental Group of the Torus**：环面 $T^2 = S^1 \times S^1$，故：
> $$\pi_1(T^2, (1,1)) \cong \pi_1(S^1, 1) \times \pi_1(S^1, 1) \cong \mathbb{Z} \times \mathbb{Z}.$$
> 两个生成元分别对应绕环面"经线"和"纬线"各一圈的回路，且由于 $\mathbb{Z} \times \mathbb{Z}$ 是阿贝尔群，这两条回路的同伦类可交换。

<!-- higher_torus_fundamental_group -->
> [!Example]+
> **$n$ 维环面的基本群 Fundamental Group of $n$-Torus**：$n$ 维环面 $T^n = \underbrace{S^1 \times \cdots \times S^1}_{n}$，故：
> $$\pi_1(T^n) \cong \underbrace{\mathbb{Z} \times \cdots \times \mathbb{Z}}_{n} = \mathbb{Z}^n.$$
