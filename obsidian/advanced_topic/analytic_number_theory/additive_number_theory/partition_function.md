## 分拆函数

<!-- analytic_number_theory_partition_function_definition -->
> [!Definition]
> **分拆函数 Partition Function**：对 $n\geq0$，$p(n)$ 表示将 $n$ 表为若干正整数之和的无序方式数，约定 $p(0)=1$。

<!-- analytic_number_theory_partition_generating_function -->
> [!Theorem]
> **分拆函数的生成函数 Generating Function for the Partition Function**：当 $|q|<1$ 时，
>
> $$\sum_{n=0}^{\infty}p(n)q^n=\prod_{m=1}^{\infty}\frac{1}{1-q^m}.$$
>
> **证明思路**：对于每个部件大小 $m$，因子 $(1-q^m)^{-1}=\sum_{r\geq0}q^{rm}$ 记录 $m$ 出现 $r$ 次。相乘后，$q^n$ 的系数恰为 $n$ 的分拆数。

<!-- analytic_number_theory_euler_pentagonal_number_theorem -->
> [!Theorem]
> **Euler 五边形数定理 Euler's Pentagonal Number Theorem**：有形式幂级数恒等式
>
> $$\prod_{m=1}^{\infty}(1-q^m)=\sum_{j=-\infty}^{\infty}(-1)^j q^{j(3j-1)/2}.$$
>
> 因此 $p(n)$ 满足递推关系
>
> $$p(n)=\sum_{j\ne0}(-1)^{j+1}p\left(n-\frac{j(3j-1)}{2}\right),$$
>
> 其中约定 $p(r)=0$ 当 $r<0$。
>
> **证明思路**：将五边形数定理与分拆生成函数相乘并比较 $q^n$ 的系数。五边形数定理本身可由 Franklin 的符号保持组合对合证明。

<!-- analytic_number_theory_hardy_ramanujan_partition_asymptotic -->
> [!Theorem]
> **Hardy-Ramanujan 分拆渐近公式 Hardy-Ramanujan Asymptotic Formula**：当 $n\to\infty$ 时，
>
> $$p(n)\sim\frac{1}{4n\sqrt3}\exp\left(\pi\sqrt{\frac{2n}{3}}\right).$$
>
> **证明思路**：对分拆生成函数在单位圆上的 Cauchy 系数积分应用圆法。靠近 $q=1$ 的主弧产生主项；其余弧段因生成函数的模变换性质和衰减估计而贡献较小。

> **注**：Rademacher 将 Hardy-Ramanujan 的渐近展开提升为关于 $p(n)$ 的收敛级数公式。