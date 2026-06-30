# 边界算子

## 边界算子的定义

<!-- boundary_operator_definition -->
> [!Definition]
> **边界算子 Boundary Operator**：设 $K$ 是有限单纯复形。对每个 $n \geq 1$，定义群同态 $\partial_n: C_n(K) \to C_{n-1}(K)$，在定向 $n$-单形 $[v_0, v_1, \ldots, v_n]$ 上的作用为：
> $$\partial_n([v_0, v_1, \ldots, v_n]) = \sum_{i=0}^n (-1)^i [v_0, \ldots, \hat{v}_i, \ldots, v_n],$$
> 其中 $[v_0, \ldots, \hat{v}_i, \ldots, v_n]$ 表示删去第 $i$ 个顶点 $v_i$ 所得的定向 $(n-1)$-单形。$\partial_0: C_0(K) \to 0$ 为零同态。由线性延拓，$\partial_n$ 对所有 $n$-链均有定义。

<!-- boundary_operator_examples -->
> [!Example]+
> **边界算子的例子 Examples of Boundary Operator**：
> 1. **边界算子作用在棱上**：$\partial_1([v_0, v_1]) = [v_1] - [v_0]$（终点减起点）；
> 2. **边界算子作用在三角形上**：
>    $$\partial_2([v_0, v_1, v_2]) = [v_1, v_2] - [v_0, v_2] + [v_0, v_1],$$
>    即三条定向边之代数和，方向按逆时针排列时恰好相加为正向边界；
> 3. **三角形边界的边界**：$\partial_1(\partial_2([v_0,v_1,v_2])) = \partial_1([v_1,v_2]) - \partial_1([v_0,v_2]) + \partial_1([v_0,v_1]) = (v_2-v_1) - (v_2-v_0) + (v_1-v_0) = 0$。

## $\partial^2 = 0$

<!-- boundary_squared_zero -->
> [!Theorem]
> **$\partial^2 = 0$**：对所有 $n \geq 0$，$\partial_n \circ \partial_{n+1} = 0$，即 $\mathrm{Im}\,\partial_{n+1} \subseteq \ker \partial_n$。
>
> **证明思路**：对定向 $(n+1)$-单形 $\sigma = [v_0, v_1, \ldots, v_{n+1}]$，计算：
> $$\partial_n(\partial_{n+1}(\sigma)) = \partial_n\!\left(\sum_{i=0}^{n+1} (-1)^i [v_0, \ldots, \hat{v}_i, \ldots, v_{n+1}]\right) = \sum_{i=0}^{n+1} (-1)^i \sum_{j \neq i} (-1)^{e(i,j)} [v_0, \ldots, \hat{v}_j, \ldots, \hat{v}_i, \ldots, v_{n+1}],$$
> 其中 $e(i,j) = j$（若 $j < i$）或 $e(i,j) = j-1$（若 $j > i$）。将求和中的每对 $(i,j)$（$i < j$）出现两次：
> - 作为 $i$ 先删、$j$ 次删：符号为 $(-1)^i \cdot (-1)^{j-1} = (-1)^{i+j-1}$；
> - 作为 $j$ 先删、$i$ 次删：符号为 $(-1)^j \cdot (-1)^{i} = (-1)^{i+j}$。
>
> 两项同一单形，符号相反，互相抵消，故总和为 $0$。

## 链复形

<!-- chain_complex_definition -->
> [!Definition]
> **链复形 Chain Complex**：有限单纯复形 $K$ 的**（单纯）链复形 Simplicial Chain Complex** 是如下的阿贝尔群与同态序列：
> $$\cdots \to C_n(K) \xrightarrow{\partial_n} C_{n-1}(K) \xrightarrow{\partial_{n-1}} \cdots \xrightarrow{\partial_2} C_1(K) \xrightarrow{\partial_1} C_0(K) \to 0,$$
> 记为 $(C_*(K), \partial)$。由 $\partial^2 = 0$，这是一个链复形（正合列在每一处均满足 $\mathrm{Im}\,\partial_{n+1} \subseteq \ker\partial_n$）。

> **注**：链复形中的"链"（chain）概念来自于代数拓扑对几何"链"（闭合的一维曲线、二维曲面等）的代数化。$\partial^2 = 0$ 反映了"边界的边界为空"这一几何直觉：边界本身没有进一步的边界。
