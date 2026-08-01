# 多线性 Calderón-Zygmund 理论

## 核条件、端点与稀疏控制

<!-- multilinear_cz_kernel_definition -->
> [!Definition]
> **多线性 Calderón-Zygmund 核 Multilinear Calderon-Zygmund Kernel**：定义在 $(\mathbb{R}^n)^{m+1}$ 去除对角线 $x=y_1=\cdots=y_m$ 后的函数 $K(x,y_1,\ldots,y_m)$ 称为 $m$-线性标准核，若
> $$
> |K(x,\vec y)|\leq\frac{C}{\left(\sum_{i=1}^m|x-y_i|\right)^{mn}},
> $$
> 并且在每个变量中满足相应的 Hölder 型差分估计。例如当 $|x-x'|\leq\frac12\max_i|x-y_i|$ 时，
> $$
> |K(x,\vec y)-K(x',\vec y)|
> \leq C\frac{|x-x'|^\delta}{\left(\sum_{i=1}^m|x-y_i|\right)^{mn+\delta}}.
> $$

<!-- multilinear_cz_operator_definition -->
> [!Definition]
> **多线性 Calderón-Zygmund 算子 Multilinear Calderon-Zygmund Operator**：若 $T$ 在 Schwartz 函数的 $m$ 元组上定义，且当 $x$ 不属于各 $f_i$ 支集的公共交时
> $$
> T(f_1,\ldots,f_m)(x)
> =\int_{(\mathbb{R}^n)^m}K(x,\vec y)\prod_{i=1}^mf_i(y_i)\,d\vec y,
> $$
> 并且 $T$ 在某一组 Hölder 指数上有界，则称 $T$ 为多线性 Calderón-Zygmund 算子。

<!-- grafakos_torres_theorem -->
> [!Theorem]
> **Grafakos-Torres 有界性定理 Grafakos-Torres Theorem**：设 $T$ 是多线性 Calderón-Zygmund 算子。若 $1<p_i<+\infty$ 且
> $$
> \frac1p=\sum_{i=1}^m\frac1{p_i},
> $$
> 则 $T$ 延拓为
> $$
> T:L^{p_1}\times\cdots\times L^{p_m}\longrightarrow L^p.
> $$
> 在标准核假设下，结论可延至 $p>1/m$ 的准 Banach 范围；当所有 $p_i=1$ 时，通常有到 $L^{1/m,\infty}$ 的端点弱型估计。
>
> **证明思路**：以多线性 Calderón-Zygmund 分解处理坏部分，利用核的正则性获得取消；好部分由已知有界性控制，并以插值推广到全部指数范围。

<!-- multilinear_hardy_endpoint -->
> [!Theorem]
> **Hardy 空间端点估计 Hardy-Space Endpoint Estimate**：在附加取消条件下，多线性 Calderón-Zygmund 算子可延拓为
> $$
> T:H^{p_1}(\mathbb{R}^n)\times\cdots\times H^{p_m}(\mathbb{R}^n)
> \longrightarrow L^p(\mathbb{R}^n),
> \qquad \frac1p=\sum_i\frac1{p_i}.
> $$
> 允许的 $p_i\leq1$ 范围取决于核的光滑阶和算子的消失矩条件。
>
> **证明思路**：对每个 Hardy 输入使用原子分解。原子的消失矩与核的 Taylor 余项相消，给出支集外的可积衰减；在原子支集附近使用已知强型估计。

<!-- multilinear_t1_theorem_note -->
> [!Theorem]
> **多线性 $T(1)$ 定理 Multilinear $T(1)$ Theorem**：多线性 $T(1)$ 定理以弱有界性、核条件以及 $T$ 和各偏伴随算子作用于常数函数所得的 BMO 型检验条件，刻画多线性奇异积分的有界性。检验函数、偏伴随的定义及 BMO 条件会随定理版本而变化。
>
> **证明思路**：用多参数停止时间分解将算子拆成可控的半积模型和余项；检验条件控制非取消部分，几乎正交性控制尺度求和。

<!-- multilinear_sparse_domination -->
> [!Theorem]
> **多线性稀疏控制 Multilinear Sparse Domination**：对适当多线性 Calderón-Zygmund 算子及紧支撑函数，存在稀疏族 $\mathcal{S}$，使其配对形式受有限个稀疏形式控制：
> $$
> |\langle T(\vec f),g\rangle|
> \lesssim\sum_{Q\in\mathcal{S}}|Q|
> \prod_{i=1}^m\langle|f_i|\rangle_Q\,\langle|g|\rangle_Q.
> $$
> 此估计将加权范数界归结为正的离散平均算子，从而产生定量的多线性加权估计。
>
> **证明思路**：以局部极大截断算子选择停止立方体，并递归分解；每一步的局部坏集占比固定地小，故所得立方体族稀疏。

> **来源**：Loukas Grafakos and Rodolfo H. Torres, "Multilinear Calderón-Zygmund Theory", *Advances in Mathematics* 165 (2002)；Camil Muscalu and Wilhelm Schlag, *Classical and Multilinear Harmonic Analysis*, Vol. II。
