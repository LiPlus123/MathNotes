# 复测度

## 复测度与全变差

<!-- complex_measure_definition -->
> [!Definition]
> **复测度 Complex Measure**：设 $(X,\mathcal{A})$ 为可测空间。映射
> $$
> \lambda:\mathcal{A}\to\mathbb{C}
> $$
> 称为复测度，若 $\lambda(\varnothing)=0$，且对任意两两不交的可测集列 $\{E_n\}_{n\geq1}$，有
> $$
> \lambda\left(\bigcup_{n=1}^{\infty}E_n\right)=\sum_{n=1}^{\infty}\lambda(E_n),
> $$
> 其中级数在复数域中收敛。

<!-- total_variation_of_complex_measure_definition -->
> [!Definition]
> **复测度的全变差 Total Variation of a Complex Measure**：复测度 $\lambda$ 的全变差定义为正测度
> $$
> |\lambda|(E)=\sup\left\{\sum_{i=1}^{n}|\lambda(E_i)|:E=\bigsqcup_{i=1}^{n}E_i,\ E_i\in\mathcal{A}\right\}.
> $$
> 对复测度而言，$|\lambda|(X)<+\infty$。若 $|\lambda|(X)<+\infty$ 的复测度 $\lambda$ 在 $X$ 上给定，则称其为有限复测度。

<!-- polar_decomposition_of_complex_measure -->
> [!Theorem]
> **复测度的极分解 Polar Decomposition of a Complex Measure**：设 $\lambda$ 是复测度。则存在 $|\lambda|$-可测函数 $h:X\to\mathbb{C}$，满足
> $$
> |h|=1\quad |\lambda|\text{-a.e.},
> $$
> 以及对每个 $E\in\mathcal{A}$，
> $$
> \lambda(E)=\int_Eh\,d|\lambda|.
> $$
> 函数 $h$ 在 $|\lambda|$-几乎处处意义下唯一，常记为
> $$
> d\lambda=h\,d|\lambda|.
> $$
>
> **证明思路**：分别对实部与虚部应用带号测度的 Jordan 分解，说明 $\lambda$ 对 $|\lambda|$ 绝对连续；再由 Radon-Nikodym 定理得到密度。利用全变差的极大性证明该密度的模为 $1$ 几乎处处。

<!-- integration_with_respect_to_complex_measure -->
> [!Definition]
> **关于复测度的积分 Integration with Respect to a Complex Measure**：若复值可测函数 $f$ 满足
> $$
> \int_X|f|\,d|\lambda|<+\infty,
> $$
> 则定义
> $$
> \int_Xf\,d\lambda=\int_Xfh\,d|\lambda|,
> $$
> 其中 $h$ 来自复测度的极分解。并且
> $$
> \left|\int_Xf\,d\lambda\right|\leq\int_X|f|\,d|\lambda|.
> $$

<!-- complex_measure_from_density_example -->
> [!Example]+
> **由密度给出的复测度 Complex Measure Given by a Density**：若 $g\in L^1(\mu)$ 是复值函数，则
> $$
> \lambda(E)=\int_Eg\,d\mu
> $$
> 定义了复测度，且
> $$
> |\lambda|(E)=\int_E|g|\,d\mu.
> $$
> 它的极分解密度可取 $h=g/|g|$（在 $g=0$ 的集合上任意定义）。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 3.1；Walter Rudin, *Real and Complex Analysis*, 3rd ed., Chapter 6。
