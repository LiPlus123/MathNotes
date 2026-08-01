# 巴拿赫空间基本定理

<!-- functional_analysis_open_mapping_theorem -->
> [!Theorem]
> **开映射定理 Open Mapping Theorem**：设 $X,Y$ 是 Banach 空间，$T\in\mathcal{L}(X,Y)$ 为满射。则 $T$ 是开映射，即 $X$ 中每个开集的像在 $Y$ 中开。
>
> **证明思路**：由 $Y=\bigcup_{n\geq1}\overline{T(B_X(0,n))}$ 和 Baire 纲定理，某个闭包含有内点。借助线性性缩放，可证明 $T(B_X(0,1))$ 含有 $Y$ 中以 $0$ 为中心的某个开球，进而推出 $T$ 映开集为开集。

<!-- functional_analysis_bounded_inverse_theorem -->
> [!Theorem]
> **逆算子定理 Bounded Inverse Theorem**：设 $X,Y$ 是 Banach 空间，$T\in\mathcal{L}(X,Y)$ 为双射。则逆映射
> $$
> T^{-1}:Y\to X
> $$
> 是有界线性算子。
>
> **证明思路**：线性双射的逆线性。由开映射定理，$T^{-1}$ 连续，继而由线性映射的连续有界等价性得到 $T^{-1}$ 有界。

<!-- functional_analysis_closed_operator_definition -->
> [!Definition]
> **闭算子 Closed Operator**：设 $X,Y$ 是赋范线性空间，$T:\mathcal{D}(T)\subseteq X\to Y$ 是线性算子。其图像定义为
> $$
> \Gamma(T)=\{(x,Tx):x\in\mathcal{D}(T)\}\subseteq X\times Y.
> $$
> 若 $\Gamma(T)$ 在积空间 $X\times Y$ 中闭，则称 $T$ 为**闭算子 Closed Operator**。

<!-- functional_analysis_closed_graph_theorem -->
> [!Theorem]
> **闭图定理 Closed Graph Theorem**：设 $X,Y$ 是 Banach 空间，$T:X\to Y$ 是定义在全空间 $X$ 上的线性算子。若 $T$ 的图像 $\Gamma(T)$ 闭，则 $T$ 有界。
>
> **证明思路**：闭图像 $\Gamma(T)$ 是 Banach 空间。投影 $\pi_X:\Gamma(T)\to X$ 是连续线性双射，由逆算子定理其逆有界；复合 $T=\pi_Y\circ\pi_X^{-1}$ 因而有界。

<!-- functional_analysis_uniform_boundedness_principle -->
> [!Theorem]
> **一致有界性定理 Uniform Boundedness Principle**：设 $X$ 是 Banach 空间，$Y$ 是赋范线性空间，$\mathcal{F}\subseteq\mathcal{L}(X,Y)$。若对每个 $x\in X$，集合
> $$
> \{\|Tx\|_Y:T\in\mathcal{F}\}
> $$
> 有界，则
> $$
> \sup_{T\in\mathcal{F}}\|T\|<+\infty.
> $$
>
> **证明思路**：令 $E_n=\{x\in X:\sup_{T\in\mathcal{F}}\|Tx\|\leq n\}$。它们是闭集且并为 $X$；Baire 纲定理给出某个 $E_n$ 含有球。将该球中的估计平移和缩放，即得所有算子在单位球上的统一估计。