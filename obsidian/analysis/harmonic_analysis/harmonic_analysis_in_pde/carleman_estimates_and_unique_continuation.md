# Carleman 估计与唯一延拓性

## 加权估计控制消失阶

<!-- pde_carleman_estimate_definition -->
> [!Definition]
> **Carleman 估计 Carleman Estimate**：设 $P$ 为微分算子，$\varphi$ 为实值权函数。Carleman 估计是带大参数 $\tau$ 的加权不等式，典型形式为
> $$
> \|e^{\tau\varphi}v\|_{L^2}
> \leq C\tau^{-1}\|e^{\tau\varphi}Pv\|_{L^2},
> \qquad \tau\geq\tau_0,
> $$
> 其中 $v$ 支撑在权函数满足伪凸性条件的区域内。不同算子的导数阶和 $\tau$ 幂次会不同。

<!-- pde_strong_unique_continuation_definition -->
> [!Definition]
> **强唯一延拓性 Strong Unique Continuation**：若 $u$ 是 $Pu=0$ 的解，且在一点 $x_0$ 无穷阶消失，即对每个 $N$ 有 $|u(x)|=O(|x-x_0|^N)$，则 $u$ 在连通分支中恒为零，称 $P$ 具有强唯一延拓性质。

<!-- pde_carleman_implies_unique_continuation -->
> [!Theorem]
> **Carleman 估计蕴含唯一延拓 Carleman Estimates Imply Unique Continuation**：对满足适当椭圆性、系数正则性及权函数伪凸性假设的二阶算子，Carleman 估计排除非零解在一点无穷阶消失，因而导出强唯一延拓性。
>
> **证明思路**：在消失点附近以截断函数乘解，并代入 Carleman 估计。令参数 $\tau\to\infty$，无穷阶消失使截断误差消失，迫使解在一个邻域中为零；再沿连通路径延拓。

<!-- pde_uncertainty_unique_continuation_concept -->
> [!Concept]
> **不确定原理与唯一延拓 Uncertainty Principle and Unique Continuation**：函数及其 Fourier 变换不可能同时过快衰减，这一现象可经加权 Fourier 估计转化为某些 Schrödinger 方程的唯一延拓结论。Carleman 方法则以物理空间权函数提供更局部的实现。

<!-- pde_quantitative_unique_continuation_concept -->
> [!Concept]
> **定量唯一延拓 Quantitative Unique Continuation**：三球不等式、doubling 不等式和频率函数控制解的消失阶。它们进一步用于特征函数质量分布、逆问题和谱不等式。

> **来源**：Lars Hormander, *The Analysis of Linear Partial Differential Operators III*；Carlos Kenig, *Carleman Estimates, Uniform Sobolev Inequalities for Second Order Differential Operators and Unique Continuation Theorems*。
