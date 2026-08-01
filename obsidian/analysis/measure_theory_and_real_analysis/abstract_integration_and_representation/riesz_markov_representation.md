# Riesz-Markov 表示定理

## 正线性泛函与 Radon 测度

<!-- positive_linear_functional_definition -->
> [!Definition]
> **正线性泛函 Positive Linear Functional**：设 $X$ 为局部紧 Hausdorff 空间，$C_c(X)$ 为 $X$ 上所有复值紧支撑连续函数构成的向量空间。线性泛函
> $$
> \Lambda:C_c(X)\to\mathbb{C}
> $$
> 称为正的，若对每个满足 $f\geq0$ 的实值函数 $f\in C_c(X)$，都有
> $$
> \Lambda(f)\geq0.
> $$

<!-- radon_measure_definition -->
> [!Definition]
> **Radon 测度 Radon Measure**：设 $X$ 为局部紧 Hausdorff 空间。定义在 $\mathcal{B}(X)$ 上的正 Borel 测度 $\mu$ 称为 Radon 测度，若它局部有限且正则：
> $$
> \mu(K)<+\infty\quad\text{对每个紧集 }K\subseteq X,
> $$
> 且它对 Borel 集内正则、外正则。具体正则条件将在“正则测度”小节给出。

<!-- riesz_markov_representation_theorem -->
> [!Theorem]
> **Riesz-Markov 表示定理 Riesz-Markov Representation Theorem**：设 $X$ 为局部紧 Hausdorff 空间。对每个正线性泛函
> $$
> \Lambda:C_c(X)\to\mathbb{C},
> $$
> 存在唯一的 Radon 测度 $\mu$，使得对所有 $f\in C_c(X)$，
> $$
> \Lambda(f)=\int_Xf\,d\mu.
> $$
> 反之，每个 Radon 测度通过上述公式定义 $C_c(X)$ 上的正线性泛函。
>
> **证明思路**：先对开集 $U$ 以满足 $0\leq f\leq1$、$\operatorname{supp}f\subseteq U$ 的函数的 $\Lambda(f)$ 上确界构造集合函数，再证明其为正则 Borel 测度。用局部紧 Hausdorff 空间中的紧支撑连续函数对紧集和开集作夹逼，得到积分表示；唯一性由 $C_c(X)$ 对正则 Borel 测度的测定性得到。

<!-- riesz_markov_uniqueness_proposition -->
> [!Proposition]
> **表示测度的唯一性 Uniqueness of the Representing Measure**：若 $\mu$ 与 $\nu$ 都是 $X$ 上的 Radon 测度，且
> $$
> \int_Xf\,d\mu=\int_Xf\,d\nu
> $$
> 对所有 $f\in C_c(X)$ 成立，则 $\mu=\nu$。
>
> **证明思路**：对紧集 $K$ 与包含它的开集 $U$，用 $C_c(X)$ 中介于 $\mathbf{1}_K$ 与 $\mathbf{1}_U$ 之间的函数逼近。由内正则和外正则先确定所有开集、再确定所有 Borel 集上的测度。

<!-- riesz_representation_for_c0_theorem -->
> [!Theorem]
> **$C_0(X)$ 的 Riesz 表示定理 Riesz Representation for $C_0(X)$**：设 $X$ 为局部紧 Hausdorff 空间，$C_0(X)$ 是在无穷远处消失的连续函数构成的赋范空间。每个连续线性泛函
> $$
> T:C_0(X)\to\mathbb{C}
> $$
> 存在唯一的有限复 Radon 测度 $\lambda$，使得
> $$
> T(f)=\int_Xf\,d\lambda
> $$
> 对所有 $f\in C_0(X)$ 成立，且
> $$
> \|T\|=|\lambda|(X).
> $$
>
> **证明思路**：先对正泛函应用 Riesz-Markov 表示定理；再利用实部、虚部的 Jordan 分解将一般泛函化为正泛函之线性组合。范数等式由全变差测度及紧支撑函数的逼近得到。

<!-- riesz_markov_example -->
> [!Example]+
> **点值泛函的表示 Point-Evaluation Functional**：对 $x_0\in X$，定义
> $$
> \Lambda_{x_0}(f)=f(x_0)
> \qquad(f\in C_c(X)).
> $$
> 该泛函为正线性泛函，其表示测度为 Dirac 测度 $\delta_{x_0}$：
> $$
> \Lambda_{x_0}(f)=\int_Xf\,d\delta_{x_0}.
> $$

> **注**：本小节参见 Walter Rudin, *Real and Complex Analysis*, 3rd ed., Chapter 2；Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 7.2。
