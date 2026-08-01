## Hardy-Littlewood 圆法

<!-- analytic_number_theory_weyl_sum_definition -->
> [!Definition]
> **Weyl 和 Weyl Sum**：对整数 $k\geq2$、$N\geq1$ 与 $\alpha\in[0,1)$，定义
>
> $$S_k(\alpha;N)=\sum_{1\leq n\leq N}e(\alpha n^k),\qquad e(\alpha)=e^{2\pi i\alpha}.$$
>
> 它将 $k$ 次幂和的加法表示问题编码为圆周上的指数和。

<!-- analytic_number_theory_circle_method_orthogonality_formula -->
> [!Theorem]
> **圆法的正交积分公式 Circle-Method Orthogonality Formula**：令
>
> $$R_{s,k}(m;N)=\#\{(n_1,\ldots,n_s)\in[1,N]^s:\n_1^k+\cdots+n_s^k=m\}.$$
>
> 则
>
> $$R_{s,k}(m;N)=\int_0^1S_k(\alpha;N)^s e(-m\alpha)\,d\alpha.$$
>
> **证明思路**：展开幂次和并逐项积分。整数正交关系 $\int_0^1e(\alpha h)\,d\alpha=0$（$h\ne0$）恰好筛出和为 $m$ 的元组。

<!-- analytic_number_theory_major_minor_arcs_definition -->
> [!Definition]
> **主弧与余弧 Major and Minor Arcs**：给定参数 $Q$，围绕所有既约分数 $a/q$（$1\leq q\leq Q$）的窄邻域定义主弧；其补集称为余弧。主弧上 $\alpha$ 接近小分母有理数，可用局部同余信息近似 Weyl 和；余弧上则依靠振荡相消给出小的总贡献。

<!-- analytic_number_theory_weyl_inequality_quantitative -->
> [!Theorem]
> **Weyl 不等式 Weyl Inequality**：设 $k\geq2$，且 $(a,q)=1$、$|\alpha-a/q|\leq q^{-2}$。则对任意 $\varepsilon>0$，
>
> $$S_k(\alpha;N)\ll_{k,\varepsilon}N^{1+\varepsilon}
> \left(q^{-1}+N^{-1}+qN^{-k}\right)^{2^{1-k}}.$$
>
> **证明思路**：反复施行 Weyl 差分，将 $k$ 次相位降至线性相位；对所得线性和使用有理逼近及几何级数界，再由 Cauchy-Schwarz 回代。

<!-- analytic_number_theory_vinogradov_method_concept -->
> [!Theorem]
> **Vinogradov 方法 Vinogradov's Method**：在涉及素数的加性问题中，Vinogradov 方法将由素数加权的指数和分解为较短的 I 型、II 型双线性和，并结合大筛、指数和估计及平均值方法控制余弧贡献。它是证明三素数定理的核心工具。
>
> **证明思路**：使用 Vaughan 型恒等式分解 von Mangoldt 函数；对不同长度范围的双线性和分别采用 Cauchy-Schwarz、差分和指数和估计，获得足够的余弧相消。