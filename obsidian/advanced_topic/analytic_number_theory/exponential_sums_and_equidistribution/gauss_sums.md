## Gauss 和

<!-- analytic_number_theory_quadratic_gauss_sum_definition -->
> [!Definition]
> **二次 Gauss 和 Quadratic Gauss Sum**：对奇素数 $p$ 及整数 $a$，定义
>
> $$G(a;p)=\sum_{x\bmod p}e\left(\frac{ax^2}{p}\right).$$
>
> 当 $p\nmid a$ 时，它与 Legendre 符号紧密相关。

<!-- analytic_number_theory_quadratic_gauss_sum_evaluation -->
> [!Theorem]
> **二次 Gauss 和的计算 Evaluation of Quadratic Gauss Sums**：若 $p$ 为奇素数且 $p\nmid a$，则
>
> $$G(a;p)=\left(\frac{a}{p}\right)\varepsilon_p\sqrt p,$$
>
> 其中
>
> $$\varepsilon_p=\begin{cases}1,&p\equiv1\pmod4,\\i,&p\equiv3\pmod4.\end{cases}$$
>
> **证明思路**：变量替换首先给出 $G(a;p)=(a/p)G(1;p)$。再由平方展开和加法角色正交性证明 $G(1;p)^2=(\!-1/p)p$，并用乘积恒等式或解析方法确定符号。

<!-- analytic_number_theory_quadratic_gauss_sum_magnitude -->
> [!Corollary]
> **二次 Gauss 和的模 Quadratic Gauss-Sum Magnitude**：若 $p\nmid a$，则
>
> $$|G(a;p)|=\sqrt p.$$
>
> 这体现了相较平凡界 $p$ 的平方根消去。

<!-- analytic_number_theory_gauss_sum_quadratic_reciprocity_connection -->
> [!Theorem]
> **Gauss 和与二次互反律 Gauss Sums and Quadratic Reciprocity**：二次 Gauss 和的乘法性质与变换公式可导出：对不同的奇素数 $p,q$，
>
> $$\left(\frac pq\right)\left(\frac qp\right)=(-1)^{(p-1)(q-1)/4}.$$
>
> **证明思路**：比较不同方式计算的二次 Gauss 和或 theta 型和，并追踪 $p,q$ 模 $4$ 的相位因子，即得互反律中的符号。