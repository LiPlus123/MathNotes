# Hodge 星算子

## 体积形式

<!-- volume_form_def -->
> [!Definition]
> **体积形式 Volume Form**：设 $V$ 为 $n$ 维定向内积空间（oriented inner product space），$\{e_1, \ldots, e_n\}$ 为正定向的标准正交基，$\{e^1, \ldots, e^n\}$ 为对应的对偶基。定义**体积形式**（volume form）为
> $$\mathrm{vol} \coloneqq e^1 \wedge e^2 \wedge \cdots \wedge e^n \in \bigwedge^n V^*.$$
> $\mathrm{vol}$ 是 $\bigwedge^n V^*$（$\dim = 1$）中满足 $\mathrm{vol}(e_1, \ldots, e_n) = 1$ 的唯一单位 $n$-形式。

> **注**：体积形式由定向和内积（标准正交基）唯一确定。对一般基 $\{f_i\}$，体积形式的分量为 $\mathrm{vol}(f_1, \ldots, f_n) = \det([f_i]_{\mathcal{B}}) \cdot \sqrt{\det(g_{ij})}$，其中 $g_{ij} = \langle f_i, f_j \rangle$。

## Hodge 星算子的定义

<!-- hodge_star_def -->
> [!Definition]
> **Hodge 星算子 Hodge Star Operator**：设 $V$ 为 $n$ 维定向内积空间，$\langle \cdot, \cdot \rangle$ 为内积，$\mathrm{vol}$ 为体积形式。对每个 $k$（$0 \leq k \leq n$），**Hodge 星算子**（Hodge star operator）$\star: \bigwedge^k V^* \to \bigwedge^{n-k} V^*$ 是唯一满足以下条件的线性同构：对任意 $\alpha, \omega \in \bigwedge^k V^*$，
> $$\alpha \wedge \star\omega = \langle \alpha, \omega \rangle\, \mathrm{vol}.$$

<!-- hodge_star_on_basis -->
> [!Proposition]
> **Hodge 星算子在基上的作用 Hodge Star on Basis Elements**：设 $\{e^1, \ldots, e^n\}$ 为标准正交对偶基。对严格递增指标组 $I = (i_1, \ldots, i_k)$，设 $J = (j_1, \ldots, j_{n-k})$ 为 $I$ 在 $\{1, \ldots, n\}$ 中的补集（按升序排列），则
> $$\star(e^{i_1} \wedge \cdots \wedge e^{i_k}) = \varepsilon_{i_1 \cdots i_k j_1 \cdots j_{n-k}}\, e^{j_1} \wedge \cdots \wedge e^{j_{n-k}},$$
> 其中 $\varepsilon_{i_1 \cdots i_n}$ 为 Levi-Civita 符号（完全反对称张量，当 $(i_1, \ldots, i_n)$ 为 $(1, \ldots, n)$ 的偶置换时取 $+1$，奇置换时取 $-1$，有重复时取 $0$）。

## Hodge 星算子的性质

<!-- hodge_star_properties -->
> [!Theorem]
> **Hodge 星算子的性质 Properties of Hodge Star**：设 $\omega \in \bigwedge^k V^*$，$\eta \in \bigwedge^k V^*$，则：
> 1. **双重 Hodge 星**：$\star\star\omega = (-1)^{k(n-k)}\, \omega$；
> 2. **内积关系**：$\langle \omega, \eta \rangle\, \mathrm{vol} = \omega \wedge \star\eta = \eta \wedge \star\omega$；
> 3. **标量化**：$\star(\omega \wedge \star\eta) = \langle \omega, \eta \rangle$；
> 4. **边界值**：$\star\mathrm{vol} = 1_F$（$0$-形式），$\star 1_F = \mathrm{vol}$；
> 5. **线性同构**：$\star: \bigwedge^k V^* \xrightarrow{\sim} \bigwedge^{n-k} V^*$ 为线性同构，且 $\star^{-1} = (-1)^{k(n-k)} \star$。
>
> **证明思路**：(1) 对基元素直接计算，$\star\star(e^{i_1} \wedge \cdots \wedge e^{i_k})$ 等于将指标补集再取补，引入的置换符号恰为 $(-1)^{k(n-k)}$。(2)(3) 由 Hodge 星的定义（$\alpha \wedge \star\omega = \langle \alpha,\omega\rangle \mathrm{vol}$）直接得到。(4) 对 $k=n$ 和 $k=0$ 分别验证。(5) 由 (1) 得逆算子公式。
