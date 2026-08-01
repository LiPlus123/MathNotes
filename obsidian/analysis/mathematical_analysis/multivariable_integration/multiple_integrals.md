# 重积分

<!-- real_analysis_multivariable_rectangle_definition -->
> [!Definition]
> **$n$ 维矩形 Rectangle in $\mathbb{R}^n$**：形如
> $$
> Q=\prod_{i=1}^n[a_i,b_i]
> $$
> 的集合称为 $\mathbb{R}^n$ 中的闭矩形，其体积定义为
> $$
> \operatorname{vol}(Q)=\prod_{i=1}^n(b_i-a_i).
> $$

<!-- real_analysis_multivariable_riemann_integral_on_rectangle_definition -->
> [!Definition]
> **矩形上的 Riemann 积分 Riemann Integral on a Rectangle**：设 $f:Q\to\mathbb{R}$ 有界。将每个区间 $[a_i,b_i]$ 分割，并由其直积得到 $Q$ 的矩形分割 $P$。对每个小矩形 $Q_j$ 选取 $\xi_j\in Q_j$，Riemann 和为
> $$
> S(f;P,\xi)=\sum_jf(\xi_j)\operatorname{vol}(Q_j).
> $$
> 若当分割网长趋于零时，所有 Riemann 和都趋于同一实数 $I$，则称 $f$ 在 $Q$ 上 Riemann 可积，并记
> $$
> I=\int_Qf(x)\,\mathrm{d}x.
> $$

<!-- real_analysis_multivariable_darboux_criterion -->
> [!Theorem]
> **多元 Darboux 判据 Multivariable Darboux Criterion**：有界函数 $f:Q\to\mathbb{R}$ 在矩形 $Q$ 上 Riemann 可积，当且仅当对任意 $\varepsilon>0$，存在矩形分割 $P$，使其 Darboux 上和与下和满足
> $$
> U(f,P)-L(f,P)<\varepsilon.
> $$
>
> **证明思路**：与一元情形相同：任一带标分割的 Riemann 和夹在相应的上下和之间；再通过共同加细分割比较任意两个足够细的 Riemann 和。

<!-- real_analysis_multivariable_jordan_measurable_set_definition -->
> [!Definition]
> **Jordan 可测集 Jordan Measurable Set**：有界集合 $E\subseteq\mathbb{R}^n$ 称为 Jordan 可测的，若包含 $E$ 的某个闭矩形 $Q$ 上的示性函数 $\mathbf{1}_E$ Riemann 可积。此时定义其 Jordan 测度为
> $$
> \operatorname{vol}(E)=\int_Q\mathbf{1}_E(x)\,\mathrm{d}x,
> $$
> 该值与包含 $E$ 的矩形 $Q$ 的选择无关。

<!-- real_analysis_multivariable_jordan_criterion -->
> [!Theorem]
> **Jordan 可测判据 Jordan Criterion**：有界集合 $E\subseteq\mathbb{R}^n$ Jordan 可测，当且仅当其边界 $\partial E$ 的 Jordan 测度为零。特别地，具有分段光滑边界的有界区域是 Jordan 可测的。
>
> **证明思路**：$\mathbf{1}_E$ 的不连续点恰为边界点；应用有界函数的 Lebesgue 判据（不连续点集为零测集时 Riemann 可积）的 Jordan 版本。

<!-- real_analysis_multivariable_integral_over_jordan_set_definition -->
> [!Definition]
> **一般区域上的重积分 Multiple Integral over a Jordan Measurable Set**：设 $E\subseteq\mathbb{R}^n$ Jordan 可测，且 $f:E\to\mathbb{R}$ 有界。若零延拓
> $$
> \widetilde f(x)=\begin{cases}
> f(x),&x\in E,\\
> 0,&x\notin E
> \end{cases}
> $$
> 在某个包含 $E$ 的闭矩形 $Q$ 上 Riemann 可积，则称 $f$ 在 $E$ 上可积，并定义
> $$
> \int_Ef(x)\,\mathrm{d}x=\int_Q\widetilde f(x)\,\mathrm{d}x.
> $$

<!-- real_analysis_multivariable_riemann_integrability_conditions -->
> [!Theorem]
> **多元 Riemann 可积的充分条件 Sufficient Conditions for Multivariable Riemann Integrability**：连续函数在闭矩形上 Riemann 可积。更一般地，若 $E$ Jordan 可测且 $f$ 在 $E$ 上连续，并可连续延拓到包含 $E$ 的某个闭矩形的邻域，则 $f$ 在 $E$ 上可积。
>
> **证明思路**：闭矩形紧致，连续函数一致连续；将小矩形取得足够小，使各矩形上的振幅之和任意小。一般区域由零延拓及边界的零测性处理。

<!-- real_analysis_multivariable_integral_properties -->
> [!Theorem]
> **重积分的性质 Properties of Multiple Integrals**：在同一 Jordan 可测集 $E$ 上可积的函数 $f,g$ 及常数 $\alpha,\beta$ 满足线性性
> $$
> \int_E(\alpha f+\beta g)\,\mathrm{d}x
> =\alpha\int_Ef\,\mathrm{d}x+\beta\int_Eg\,\mathrm{d}x.
> $$
> 若 $f\leq g$，则 $\int_Ef\leq\int_Eg$；并且
> $$
> \left|\int_Ef\,\mathrm{d}x\right|
> \leq\int_E|f|\,\mathrm{d}x.
> $$
>
> **证明思路**：对零延拓函数应用矩形上 Riemann 积分的线性性、单调性和绝对值不等式。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 10；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 10。