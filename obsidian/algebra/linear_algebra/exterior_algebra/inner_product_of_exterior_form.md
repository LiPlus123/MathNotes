# 外形式的内积

## 外形式内积的定义

<!-- exterior_form_inner_product_def -->
> [!Definition]
> **外形式的内积 Inner Product on Exterior Forms**：设 $(V, \langle \cdot, \cdot \rangle)$ 为 $n$ 维实内积空间，$\{e_1, \ldots, e_n\}$ 为标准正交基，$\{e^1, \ldots, e^n\}$ 为对偶基。对 $\bigwedge^k V^*$ 上的内积，由以下规则定义：对严格递增指标组 $I = (i_1, \ldots, i_k)$ 和 $J = (j_1, \ldots, j_k)$，
> $$\langle e^{i_1} \wedge \cdots \wedge e^{i_k},\; e^{j_1} \wedge \cdots \wedge e^{j_k} \rangle \coloneqq \det\!\left(\langle e^{i_a}, e^{j_b} \rangle\right)_{1 \leq a, b \leq k} = \delta_{i_1 j_1} \cdots \delta_{i_k j_k}\, [\text{若 } I = J\text{，否则依行列式值}],$$
> 对标准正交对偶基，即
> $$\langle e^{i_1} \wedge \cdots \wedge e^{i_k},\; e^{j_1} \wedge \cdots \wedge e^{j_k} \rangle = \begin{cases} 1, & \text{若 } \{i_1, \ldots, i_k\} = \{j_1, \ldots, j_k\}, \\ 0, & \text{否则.} \end{cases}$$
> 再线性延拓至整个 $\bigwedge^k V^*$。

> **注**：一般地，对非标准正交基下的 $k$-形式 $\omega, \eta \in \bigwedge^k V^*$，内积由 Gram 行列式给出：
> $$\langle \alpha^1 \wedge \cdots \wedge \alpha^k,\; \beta^1 \wedge \cdots \wedge \beta^k \rangle = \det\!\left(\langle \alpha^i, \beta^j \rangle\right)_{1 \leq i, j \leq k},$$
> 其中 $\langle \alpha^i, \beta^j \rangle$ 为 $V^*$（由 $V$ 上内积诱导的对偶内积）上的内积。

## 外形式内积的性质

<!-- exterior_form_inner_product_properties -->
> [!Theorem]
> **外形式内积的性质 Properties of Inner Product on Exterior Forms**：$\bigwedge^k V^*$ 上的内积满足：
> 1. **对称正定性**：$\langle \omega, \eta \rangle = \langle \eta, \omega \rangle$，且 $\langle \omega, \omega \rangle \geq 0$，等号当且仅当 $\omega = 0$ 时成立；
> 2. **双线性**：对两个参数均为 $\mathbb{R}$-线性；
> 3. **基正交归一性**：$\{e^{i_1} \wedge \cdots \wedge e^{i_k} : 1 \leq i_1 < \cdots < i_k \leq n\}$ 构成 $\bigwedge^k V^*$ 的标准正交基；
> 4. **与 Hodge 星的关系**：对 $\omega, \eta \in \bigwedge^k V^*$，
>    $$\langle \omega, \eta \rangle = \star(\omega \wedge \star\eta) = \star(\eta \wedge \star\omega);$$
> 5. **不同次数正交**：若 $k \neq l$，则 $\bigwedge^k V^*$ 与 $\bigwedge^l V^*$ 在外代数 $\bigwedge V^*$ 的内积下正交。
>
> **证明思路**：(1)(2) 由内积的定义和行列式的对称性/双线性性得到。(3) 在标准正交对偶基下，Gram 行列式 $\det(\delta_{i_a j_b}) = \delta_{IJ}$，正交归一性成立。(4) 由 Hodge 星定义 $\alpha \wedge \star\omega = \langle \alpha,\omega\rangle\,\mathrm{vol}$ 以及 $\star(\mathrm{vol}) = 1$ 推出。(5) 不同次数的楔积基元素天然正交，由定义延拓即得。
