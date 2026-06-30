# 楔积

## 楔积的定义

<!-- wedge_product_def -->
> [!Definition]
> **楔积 Wedge Product**：设 $V$ 为域 $F$（$\mathrm{char}(F) = 0$ 或 $\mathrm{char}(F) > k + l$）上的 $n$ 维线性空间。对 $\omega \in \bigwedge^k V^*$，$\eta \in \bigwedge^l V^*$，定义**楔积**（wedge product，外积）$\omega \wedge \eta \in \bigwedge^{k+l} V^*$ 为
> $$(\omega \wedge \eta)(v_1, \ldots, v_{k+l}) \coloneqq \sum_{\sigma \in \mathrm{Sh}(k,l)} \mathrm{sgn}(\sigma)\, \omega(v_{\sigma(1)}, \ldots, v_{\sigma(k)})\, \eta(v_{\sigma(k+1)}, \ldots, v_{\sigma(k+l)}),$$
> 其中 $\mathrm{Sh}(k, l) \subseteq S_{k+l}$ 为所有**$(k, l)$-洗牌置换**（shuffle permutations）的集合，即满足 $\sigma(1) < \cdots < \sigma(k)$ 且 $\sigma(k+1) < \cdots < \sigma(k+l)$ 的置换。

> **注**：等价定义：
> $$\omega \wedge \eta = \frac{(k+l)!}{k!\, l!}\, \mathrm{Alt}(\omega \otimes \eta).$$
> 两种定义通过反对称化算子 $\mathrm{Alt}$ 相互联系。

## 楔积的性质

<!-- wedge_product_properties -->
> [!Theorem]
> **楔积的性质 Properties of Wedge Product**：设 $\omega, \omega_1, \omega_2 \in \bigwedge^k V^*$，$\eta, \eta_1, \eta_2 \in \bigwedge^l V^*$，$\zeta \in \bigwedge^m V^*$，$\alpha \in F$，则：
> 1. **结合律**：$(\omega \wedge \eta) \wedge \zeta = \omega \wedge (\eta \wedge \zeta)$；
> 2. **双线性**：$(\omega_1 + \alpha \omega_2) \wedge \eta = \omega_1 \wedge \eta + \alpha\, \omega_2 \wedge \eta$，$\omega \wedge (\eta_1 + \alpha \eta_2) = \omega \wedge \eta_1 + \alpha\, \omega \wedge \eta_2$；
> 3. **反交换律**：$\omega \wedge \eta = (-1)^{kl}\, \eta \wedge \omega$；
> 4. **幂零性**：若 $k$ 为奇数，则 $\omega \wedge \omega = 0$；特别地，$1$-形式 $\alpha \in V^*$ 满足 $\alpha \wedge \alpha = 0$。
>
> **证明思路**：(1) 结合律：对定义中的洗牌置换集合作分拆，验证两侧对 $(k+l+m)$ 元置换群求和的结果相同。(2) 双线性由求和的线性性直接得到。(3) 反交换律：对 $\omega \wedge \eta$ 中的 $k+l$ 个参数按"先 $l$ 个、再 $k$ 个"重新标号，等价于施加 $kl$ 次对换，引入符号 $(-1)^{kl}$，得 $\eta \wedge \omega$。(4) 由 (3)，当 $k$ 为奇数时 $\omega \wedge \omega = (-1)^{k^2} \omega \wedge \omega = -\omega \wedge \omega$，故 $\omega \wedge \omega = 0$。

<!-- wedge_product_and_linear_functional -->
> [!Proposition]
> **$1$-形式的楔积 Wedge Product of $1$-Forms**：设 $\alpha^1, \ldots, \alpha^k \in V^*$ 为线性泛函，则
> $$(\alpha^1 \wedge \cdots \wedge \alpha^k)(v_1, \ldots, v_k) = \sum_{\sigma \in S_k} \mathrm{sgn}(\sigma)\, \alpha^1(v_{\sigma(1)}) \cdots \alpha^k(v_{\sigma(k)}) = \det\!\left(\alpha^i(v_j)\right)_{1 \leq i,j \leq k}.$$
>
> **证明思路**：由楔积的定义递归展开，或直接利用行列式的多线性交替展开式验证。
