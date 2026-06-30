# 胞腔链复形

## 胞腔链群

<!-- cellular_chain_group_definition -->
> [!Definition]
> **胞腔链群 Cellular Chain Group**：设 $X$ 是 CW 复形，$X^n$ 是其 $n$-骨架。**第 $n$ 个胞腔链群 $n$-th Cellular Chain Group** 定义为对的奇异相对同调群：
> $$C_n^{CW}(X) = H_n(X^n, X^{n-1}).$$
> 由于 $X^n$ 由 $X^{n-1}$ 粘合 $n$-胞腔 $\{e_\alpha^n\}$ 得到，且 $(X^n, X^{n-1})$ 是好对，$X^n/X^{n-1} \cong \bigvee_\alpha S^n$（各 $n$-胞腔坍缩后的楔积），故：
> $$C_n^{CW}(X) = H_n(X^n, X^{n-1}) \cong \tilde{H}_n\!\left(\bigvee_\alpha S^n\right) \cong \bigoplus_\alpha \mathbb{Z},$$
> 即 $C_n^{CW}(X)$ 是以 $n$-胞腔集合为指标的自由阿贝尔群，每个 $n$-胞腔 $e_\alpha^n$ 贡献一个 $\mathbb{Z}$（选定一个定向后）。

## 胞腔边界算子

<!-- cellular_boundary_operator_definition -->
> [!Definition]
> **胞腔边界算子 Cellular Boundary Operator**：胞腔边界算子 $d_n: C_n^{CW}(X) \to C_{n-1}^{CW}(X)$ 定义为如下复合：
> $$H_n(X^n, X^{n-1}) \xrightarrow{\partial_*} H_{n-1}(X^{n-1}) \xrightarrow{(q_n)_*} H_{n-1}(X^{n-1}, X^{n-2}) = C_{n-1}^{CW}(X),$$
> 其中 $\partial_*$ 是对 $(X^n, X^{n-1})$ 的长正合列中的连接同态，$(q_n)_*$ 是商映射 $q_n: X^{n-1} \to X^{n-1}/X^{n-2}$ 诱导的同态（由切除定理为同构的部分）。

## 次数公式

<!-- cellular_boundary_degree_formula -->
> [!Theorem]
> **胞腔边界的次数公式 Degree Formula for Cellular Boundary**：设 $e_\alpha^n$ 是 $X$ 的 $n$-胞腔（粘合映射 $\varphi_\alpha: S^{n-1} \to X^{n-1}$），$e_\beta^{n-1}$ 是 $X$ 的 $(n-1)$-胞腔（特征映射 $\Phi_\beta: D^{n-1} \to X^{n-1}$）。则 $d_n(e_\alpha^n)$ 中 $e_\beta^{n-1}$ 的系数为映射
> $$S^{n-1} \xrightarrow{\varphi_\alpha} X^{n-1} \xrightarrow{q_\beta} X^{n-1}\big/(X^{n-1} \setminus e_\beta^{n-1}) \cong S^{n-1}$$
> 的**次数 Degree** $d_{\alpha\beta}$，其中 $q_\beta$ 将 $e_\beta^{n-1}$ 以外的所有部分坍缩到一点。故：
> $$d_n(e_\alpha^n) = \sum_\beta d_{\alpha\beta} \cdot e_\beta^{n-1}.$$

> **注**：次数 $d_{\alpha\beta}$ 是整数，可通过"计数"粘合映射 $\varphi_\alpha$ 中 $e_\beta^{n-1}$ 的原像（带符号）来计算。当 $\varphi_\alpha$ 在 $e_\beta^{n-1}$ 上的限制处处非退化时，$d_{\alpha\beta} = \sum_{x \in \varphi_\alpha^{-1}(y)} \mathrm{sgn}(D\varphi_\alpha|_x)$（对 $e_\beta^{n-1}$ 中的正则值 $y$）。

## 胞腔链复形

<!-- cellular_chain_complex_definition -->
> [!Theorem]
> **胞腔链复形 Cellular Chain Complex**：$d_n \circ d_{n+1} = 0$（由长正合列的正合性保证），从而得到**胞腔链复形 Cellular Chain Complex** $(C_*^{CW}(X), d)$：
> $$\cdots \to C_n^{CW}(X) \xrightarrow{d_n} C_{n-1}^{CW}(X) \xrightarrow{d_{n-1}} \cdots \xrightarrow{d_1} C_0^{CW}(X) \to 0.$$

<!-- cellular_boundary_examples -->
> [!Example]+
> **胞腔边界算子的例子 Examples of Cellular Boundary Maps**：
> 1. **$S^n$（极小胞腔分解）**：$C_n^{CW} = \mathbb{Z}$（$n$-胞腔），$C_0^{CW} = \mathbb{Z}$（$0$-胞腔），其余为 $0$，所有边界算子均为零（粘合映射 $S^{n-1} \to$ 点是常值映射，次数为 $0$）；
> 2. **$\mathbb{R}P^n$**：$C_k^{CW} = \mathbb{Z}$（$0 \leq k \leq n$），$d_k = 1 + (-1)^k$（即 $d_k = 0$ 当 $k$ 奇，$d_k = 2$ 当 $k$ 偶且 $k \geq 2$，$d_1 = 0$ 或 $2$ 视 $n$ 的奇偶）；
> 3. **$\mathbb{C}P^n$**：$C_{2k}^{CW} = \mathbb{Z}$（$0 \leq k \leq n$），奇数维链群为 $0$，所有边界算子为 $0$（无相邻维数的胞腔）。
