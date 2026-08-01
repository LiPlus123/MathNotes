# 插值、交换子与端点估计

## 尖锐极大函数与插值

<!-- harmonic_sharp_maximal_definition -->
> [!Definition]
> **Fefferman-Stein 尖锐极大函数 Fefferman-Stein Sharp Maximal Function**：对 $f\in L^1_{\mathrm{loc}}(\mathbb{R}^n)$，定义
> $$
> M^\#f(x)=\sup_{Q\ni x}\frac1{|Q|}\int_Q|f(y)-\langle f\rangle_Q|\,dy.
> $$
> 它逐点记录包含 $x$ 的立方体上的平均振荡；$\|f\|_{\operatorname{BMO}}=\|M^\#f\|_\infty$。

<!-- harmonic_fefferman_stein_sharp_function_theorem -->
> [!Theorem]
> **Fefferman-Stein 尖锐函数不等式 Fefferman-Stein Sharp-Function Inequality**：若 $1<p<+\infty$ 且 $f$ 具有适当衰减或先作局部截断，则
> $$
> \|f\|_p\leq C_{n,p}\|M^\#f\|_p.
> $$
> 它把全局 $L^p$ 范数控制归约为局部平均振荡控制。
>
> **证明思路**：建立 $Mf$ 与 $M^\#f$ 之间的良 $\lambda$ 不等式，比较两者超水平集；对 $\lambda$ 积分并用 $\|f\|_p\leq\|Mf\|_p$ 得出结论。

<!-- harmonic_bmo_complex_interpolation -->
> [!Theorem]
> **BMO 的复插值角色 Complex Interpolation Role of BMO**：对 $1<p<+\infty$ 及 $0<\theta<1$，令 $q=p/(1-\theta)$，则在等价范数意义下
> $$
> [L^p(\mathbb{R}^n),\operatorname{BMO}(\mathbb{R}^n)]_\theta=L^q(\mathbb{R}^n).
> $$
> 因而 BMO 在复插值中扮演 $L^\infty$ 的精细端点替代。
>
> **证明思路**：借助尖锐函数不等式与解析族构造，将 BMO 的局部振荡控制转化为插值估计；反向包含由 $L^q$ 的局部平均振荡控制及复插值对偶论证给出。

## 交换子与端点控制

<!-- harmonic_commutator_definition -->
> [!Definition]
> **Calderón-Zygmund 交换子 Calderón-Zygmund Commutator**：对 $b\in L^1_{\mathrm{loc}}$ 和 Calderón-Zygmund 算子 $T$，定义
> $$
> [b,T]f=bTf-T(bf).
> $$
> 形式上，其核表达式为
> $$
> [b,T]f(x)=\int_{\mathbb{R}^n}(b(x)-b(y))K(x,y)f(y)\,dy,
> $$
> 其中差值 $b(x)-b(y)$ 反映符号的平均振荡。

<!-- harmonic_coifman_rochberg_weiss_theorem -->
> [!Theorem]
> **Coifman-Rochberg-Weiss 定理 Coifman-Rochberg-Weiss Theorem**：设 $T$ 是非退化 Calderón-Zygmund 算子，$1<p<+\infty$。则
> $$
> b\in\operatorname{BMO}(\mathbb{R}^n)
> \quad\Longleftrightarrow\quad
> [b,T]:L^p(\mathbb{R}^n)\to L^p(\mathbb{R}^n)
> $$
> 有界；并且其算子范数与 $\|b\|_{\operatorname{BMO}}$ 可比。
>
> **证明思路**：充分性可由尖锐函数估计、抛物展开或稀疏支配证明。必要性通过在立方体及其相邻立方体上选择测试函数，以交换子检测 $b$ 的平均振荡。

<!-- harmonic_bmo_pde_endpoint_control -->
> [!Proposition]
> **PDE 中的端点控制 Endpoint Control in PDE**：当解或系数无法保持有界时，BMO 估计仍能量化其局部振荡。尖锐函数估计与交换子有界性常用于椭圆和抛物方程的 $L^p$ 正则性、系数冻结误差及临界尺度的控制。

> **来源**：Charles Fefferman and Elias M. Stein, "$H^p$ Spaces of Several Variables", *Acta Mathematica* 129 (1972)；R. Coifman, R. Rochberg, and G. Weiss, "Factorization Theorems for Hardy Spaces in Several Variables", *Annals of Mathematics* 103 (1976)。
