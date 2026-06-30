# 反对称化运算

## 反对称化算子

<!-- antisymmetrization_operator -->
> [!Definition]
> **反对称化算子 Antisymmetrization Operator**：设 $V$ 为域 $F$（$\mathrm{char}(F) = 0$ 或 $\mathrm{char}(F) > k$）上的线性空间，$T: V^k \to F$ 为任意 $k$-线性映射。定义 $T$ 的**反对称化**（antisymmetrization）为映射 $\mathrm{Alt}(T): V^k \to F$：
> $$\mathrm{Alt}(T)(v_1, \ldots, v_k) \coloneqq \frac{1}{k!} \sum_{\sigma \in S_k} \mathrm{sgn}(\sigma)\, T(v_{\sigma(1)}, \ldots, v_{\sigma(k)}),$$
> 其中 $S_k$ 为 $k$ 元对称群，$\mathrm{sgn}(\sigma) \in \{+1, -1\}$ 为置换 $\sigma$ 的符号。

## 反对称化的性质

<!-- antisymmetrization_properties -->
> [!Theorem]
> **反对称化算子的性质 Properties of Antisymmetrization**：设 $T, T_1, T_2: V^k \to F$ 为 $k$-线性映射，$\alpha, \beta \in F$，则 $\mathrm{Alt}$ 满足：
> 1. **线性性**：$\mathrm{Alt}(\alpha T_1 + \beta T_2) = \alpha\, \mathrm{Alt}(T_1) + \beta\, \mathrm{Alt}(T_2)$；
> 2. **像为交替映射**：$\mathrm{Alt}(T)$ 是交替 $k$-线性映射，即 $\mathrm{Alt}(T) \in \bigwedge^k V^*$；
> 3. **幂等性**：若 $\omega \in \bigwedge^k V^*$ 已是交替映射，则 $\mathrm{Alt}(\omega) = \omega$；
> 4. **投影性**：$\mathrm{Alt} \circ \mathrm{Alt} = \mathrm{Alt}$（$\mathrm{Alt}$ 是从 $k$-线性映射空间到 $\bigwedge^k V^*$ 的投影）。
>
> **证明思路**：(1) 由求和的线性性直接得到。(2) 对 $\mathrm{Alt}(T)$ 交换任意两个参数，利用置换群的结构可得符号反向，从而 $\mathrm{Alt}(T)$ 满足交替性。(3) 若 $\omega$ 为交替映射，则 $\sum_\sigma \mathrm{sgn}(\sigma)\,\omega(v_{\sigma(1)},\ldots,v_{\sigma(k)}) = k!\,\omega(v_1,\ldots,v_k)$，两边除以 $k!$ 即得。(4) 由 (2)(3) 立即得到。

<!-- antisymmetrization_and_tensor_product -->
> [!Proposition]
> **反对称化与张量积 Antisymmetrization and Tensor Product**：设 $\omega \in \bigwedge^k V^*$，$\eta \in \bigwedge^l V^*$，则 $\omega \otimes \eta$ 的反对称化给出楔积（见楔积一节）：
> $$\omega \wedge \eta = \frac{(k+l)!}{k!\, l!}\, \mathrm{Alt}(\omega \otimes \eta).$$
>
> **证明思路**：展开 $\mathrm{Alt}(\omega \otimes \eta)$ 的求和，注意到 $\omega, \eta$ 自身的交替性可将对 $S_{k+l}$ 的求和化为对 $(k,l)$-洗牌置换（shuffle permutations）的求和，再乘以系数 $\frac{(k+l)!}{k!\,l!}$ 即得楔积的定义。
