# 局部紧空间上的测度

## 局部紧 Hausdorff 空间

<!-- locally_compact_hausdorff_space_definition -->
> [!Definition]
> **局部紧 Hausdorff 空间 Locally Compact Hausdorff Space**：拓扑空间 $X$ 称为局部紧 Hausdorff 空间，若它是 Hausdorff 空间，且每个点 $x\in X$ 都有一个紧致邻域；即存在开集 $U$ 和紧集 $K$，使得
> $$
> x\in U\subseteq K.
> $$

<!-- compact_neighborhood_refinement_theorem -->
> [!Theorem]
> **紧邻域细化 Compact Neighborhood Refinement**：设 $X$ 是局部紧 Hausdorff 空间。若 $x\in X$ 且 $U$ 是包含 $x$ 的开集，则存在开集 $V$ 与紧集 $K$，使得
> $$
> x\in V\subseteq K\subseteq U.
> $$
>
> **证明思路**：局部紧性先给出 $x$ 的紧致邻域；Hausdorff 性使紧集闭，并允许将该邻域与 $U$ 相交后，再在其中选取闭包仍含于 $U$ 的较小开邻域。

<!-- locally_compact_hausdorff_examples -->
> [!Example]+
> **局部紧 Hausdorff 空间的例子 Examples of Locally Compact Hausdorff Spaces**：
> 1. 欧氏空间 $\mathbb{R}^n$；
> 2. 每个紧 Hausdorff 空间；
> 3. 每个离散空间；
> 4. 局部紧 Hausdorff 空间的开子空间与闭子空间。
>
> 对 $\mathbb{R}^n$，给定开集 $U\ni x$，可取足够小的 $r>0$，使得 $\overline{B(x,r)}\subseteq U$。

## 紧支撑连续函数

<!-- support_of_function_definition -->
> [!Definition]
> **函数的支集 Support of a Function**：设 $f:X\to\mathbb{C}$。$f$ 的支集定义为非零点集的闭包：
> $$
> \operatorname{supp}f=\overline{\{x\in X:f(x)\ne0\}}.
> $$
> 若 $\operatorname{supp}f$ 为紧集，则称 $f$ 有紧支撑。

<!-- compactly_supported_continuous_function_space_definition -->
> [!Definition]
> **紧支撑连续函数空间 Space of Compactly Supported Continuous Functions**：定义
> $$
> C_c(X)=\{f:X\to\mathbb{C}:f\text{ 连续且 }\operatorname{supp}f\text{ 紧}\}.
> $$
> 它是复向量空间，并且在逐点乘法下为代数。若 $X$ 紧，则 $C_c(X)=C(X)$。

<!-- compactly_supported_cutoff_function_theorem -->
> [!Theorem]
> **紧支撑截断函数 Compactly Supported Cutoff Function**：设 $X$ 是局部紧 Hausdorff 空间，$K\subseteq U$，其中 $K$ 为紧集、$U$ 为开集。则存在 $\varphi\in C_c(X)$，使得
> $$
> 0\leq\varphi\leq1,
> \qquad
> \varphi|_K=1,
> \qquad
> \operatorname{supp}\varphi\subseteq U.
> $$
>
> **证明思路**：局部紧 Hausdorff 空间是完全正则的。先以紧邻域细化在 $K$ 与 $X\setminus U$ 之间找到具有紧支撑的分离函数，再进行适当归一化。

<!-- locally_finite_partition_of_unity_theorem -->
> [!Theorem]
> **局部有限单位分解 Locally Finite Partition of Unity**：设 $X$ 是局部紧第二可数 Hausdorff 空间，$\{U_i\}_{i\in I}$ 是一个开覆盖。则存在局部有限的开细化 $\{V_j\}_{j\in J}$ 和函数族 $\{\varphi_j\}_{j\in J}\subseteq C_c(X)$，使得
> $$
> 0\leq\varphi_j\leq1,
> \qquad
> \operatorname{supp}\varphi_j\subseteq V_j,
> \qquad
> \sum_{j\in J}\varphi_j(x)=1
> $$
> 对每个 $x\in X$ 成立。
>
> **证明思路**：第二可数局部紧 Hausdorff 空间是抛紧的，故开覆盖有局部有限的相对紧开细化。对每个细化集合使用紧支撑截断函数，再以局部有限和归一化得到单位分解。

## 局部紧空间上的 Radon 测度

<!-- radon_measure_integrability_of_compact_support -->
> [!Proposition]
> **紧支撑连续函数的可积性 Integrability of Compactly Supported Continuous Functions**：设 $X$ 是局部紧 Hausdorff 空间，$\mu$ 是 Radon 测度。则每个 $f\in C_c(X)$ 都属于 $L^1(\mu)$，并且
> $$
> \left|\int_Xf\,d\mu\right|
> \leq\|f\|_\infty\mu(\operatorname{supp}f)<+\infty.
> $$
>
> **证明思路**：$f$ 在紧支集外为零，且连续函数在紧集上有界；Radon 测度对紧集有限。将 $|f|$ 以 $\|f\|_\infty\mathbf{1}_{\operatorname{supp}f}$ 控制即可。

<!-- radon_measure_local_finiteness_example -->
> [!Example]+
> **局部有限性与全局有限性的区别 Local Finiteness versus Global Finiteness**：Lebesgue 测度 $m$ 是 $\mathbb{R}^n$ 上的 Radon 测度，因为每个紧集均有有限测度；但当 $n\geq1$ 时，
> $$
> m(\mathbb{R}^n)=+\infty.
> $$
> 因而 Radon 测度要求局部有限，而不要求整个空间具有有限测度。

> **注**：本小节参见 Walter Rudin, *Real and Complex Analysis*, 3rd ed., Chapter 2；Gerald B. Folland, *Real Analysis*, 2nd ed., Section 7.2。
