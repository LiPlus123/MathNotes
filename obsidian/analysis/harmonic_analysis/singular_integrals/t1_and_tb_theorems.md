# $T(1)$ 与 $T(b)$ 定理

## 测试条件与几乎正交

<!-- singular_weak_boundedness_property -->
> [!Definition]
> **弱有界性性质 Weak Boundedness Property**：设 $T$ 由标准核表示。称 $T$ 具有弱有界性性质，若存在 $C$，使对任意边长相同的立方体 $Q,Q'$，且二者距离不超过其边长的常数倍，以及任意适配于 $Q,Q'$ 的归一化光滑截断函数 $\varphi_Q,\psi_{Q'}$，均有
> $$
> |\langle T\varphi_Q,\psi_{Q'}\rangle|\leq C|Q|.
> $$
> 这是一种只检验同尺度、相邻局部测试函数的有界性条件。

<!-- singular_cotlar_stein_lemma -->
> [!Lemma]
> **Cotlar-Stein 几乎正交引理 Cotlar-Stein Almost-Orthogonality Lemma**：设 $(A_j)_{j\in\mathbb{Z}}$ 为 Hilbert 空间上的有界算子。若存在非负数列 $(a_k)$ 满足
> $$
> \|A_j^*A_k\|^{1/2}+\|A_jA_k^*\|^{1/2}\leq a_{j-k},
> \qquad \sum_{m\in\mathbb{Z}}a_m<+\infty,
> $$
> 则级数 $\sum_jA_j$ 在强算子拓扑下收敛，且
> $$
> \left\|\sum_jA_j\right\|\leq\sum_{m\in\mathbb{Z}}a_m.
> $$
>
> **证明思路**：先对有限和展开范数平方。非对角项由假设中的可和衰减控制，再以 Cauchy-Schwarz 不等式汇总；最后对有限和取极限。

## $T(1)$ 与 $T(b)$ 判别

<!-- singular_t1_theorem -->
> [!Theorem]
> **David-Journé $T(1)$ 定理 David-Journé $T(1)$ Theorem**：设 $T$ 形式上由标准 Calderón-Zygmund 核定义，并具有弱有界性性质。则 $T$ 延拓为 $L^2(\mathbb{R}^n)$ 上有界算子，当且仅当
> $$
> T1\in\operatorname{BMO}(\mathbb{R}^n),
> \qquad
> T^*1\in\operatorname{BMO}(\mathbb{R}^n),
> $$
> 其中 $T1,T^*1$ 按分布意义定义。
>
> **证明思路**：以平滑近似恒等式展开恒等算子，在尺度间分解 $T$。常数输入产生的两个抛物型部分由 BMO 条件控制，余项具有尺度分离带来的几乎正交性，并由 Cotlar-Stein 引理求和。

<!-- singular_accretive_function_definition -->
> [!Definition]
> **适应函数 Accretive Function**：定义在立方体 $Q$ 上的有界函数 $b_Q$ 称为适应的，若存在与 $Q$ 无关的常数 $c,C>0$，使
> $$
> \|b_Q\|_\infty\leq C,
> \qquad
> \left|\frac{1}{|Q|}\int_Qb_Q(x)\,dx\right|\geq c.
> $$
> 其非退化平均使 $b_Q$ 在局部充当常数函数 $1$ 的替代测试对象。

<!-- singular_local_tb_theorem -->
> [!Theorem]
> **局部 $T(b)$ 定理 Local $T(b)$ Theorem**：设 $T$ 具有标准核。若存在适应函数族 $(b_Q^1),(b_Q^2)$，使对所有立方体 $Q$，
> $$
> \int_Q|Tb_Q^1|^2\,dx\leq C|Q|,
> \qquad
> \int_Q|T^*b_Q^2|^2\,dx\leq C|Q|,
> $$
> 并满足相应的局部测试与兼容条件，则 $T$ 在 $L^2(\mathbb{R}^n)$ 上有界。
>
> **证明思路**：以适应函数构造局部消去的二进差分算子。停止时间将非退化性失效的尺度隔离；保留部分由局部测试估计，尺度交叉项由几乎正交估计控制。

> **注**：$T(b)$ 定理存在多种全局、局部及不同测试范数的版本。这里陈述的是局部 $L^2$ 测试型的代表性结论；精确附加假设随版本而变。

> **来源**：Guy David and Jean-Lin Journé, "A Boundedness Criterion for Generalized Calderón-Zygmund Operators", *Annals of Mathematics* 120 (1984)；Michael Christ, "A $T(b)$ Theorem with Remarks on Analytic Capacity and the Cauchy Integral", *Colloquium Mathematicum* 60/61 (1990)；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 7。
