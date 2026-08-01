# Hardy--Littlewood 圆法

## 加法问题的 Fourier 分解

<!-- number_theory_circle_method_weyl_sum_definition -->
> [!Definition]
> **Weyl 和 Weyl Sum**：对多项式 $P\in\mathbb{Z}[x]$、参数 $N\geq1$，定义
> $$
> S_P(\alpha;N)=\sum_{1\leq n\leq N}e^{2\pi i\alpha P(n)},
> \qquad \alpha\in\mathbb{T}.
> $$
> 它将整数多项式值的加法关系编码为圆周上的 Fourier 级数。

<!-- number_theory_circle_method_orthogonality -->
> [!Proposition]
> **圆法的积分表示 Circle-Method Integral Formula**：令
> $$
> R_s(m;N)=\#\{(n_1,\ldots,n_s)\in[1,N]^s\cap\mathbb{Z}^s:
> P(n_1)+\cdots+P(n_s)=m\}.
> $$
> 则
> $$
> R_s(m;N)=\int_0^1S_P(\alpha;N)^s e^{-2\pi i\alpha m}\,d\alpha.
> $$
>
> **证明思路**：展开 $S_P(\alpha;N)^s$ 后逐项积分，并用整数正交关系 $\int_0^1e^{2\pi i\alpha k}\,d\alpha=\mathbf{1}_{\{0\}}(k)$ 选出满足方程的元组。

<!-- number_theory_circle_method_major_minor_arcs_definition -->
> [!Definition]
> **主弧与余弧 Major and Minor Arcs**：圆法将 $[0,1)$ 按照接近有理数 $a/q$ 的程度分为主弧和余弧。主弧上可用局部算术信息近似 Weyl 和，余弧上则依赖振荡相消估计证明其积分贡献较小。

<!-- number_theory_circle_method_weyl_inequality -->
> [!Theorem]
> **Weyl 不等式 Weyl Inequality**：设 $P$ 的次数为 $k\geq2$、首项系数为整数，且 $\alpha$ 被既约分数 $a/q$ 良好逼近。则 $S_P(\alpha;N)$ 可由 $N$、$q$ 与 $|q\alpha-a|$ 的负幂控制；特别地，在余弧上存在非平凡幂次相消界。
>
> **证明思路**：反复 Weyl 差分降低相位多项式次数，再以有理逼近和几何级数估计处理线性相位和。

<!-- number_theory_circle_method_vinogradov_mean_value_theorem -->
> [!Theorem]
> **Vinogradov 中值定理 Vinogradov Mean Value Theorem**：对 $k,s\in\mathbb{N}$，令
> $$
> J_{s,k}(N)=\int_0^1\cdots\int_0^1
> \left|\sum_{1\leq n\leq N}e^{2\pi i(\alpha_1n+\cdots+\alpha_kn^k)}\right|^{2s}
> d\alpha_1\cdots d\alpha_k.
> $$
> 则对任意 $\varepsilon>0$，
> $$
> J_{s,k}(N)\ll_{s,k,\varepsilon}
> N^{\varepsilon}\bigl(N^s+N^{2s-k(k+1)/2}\bigr).
> $$
> 
> **证明思路**：正交性将积分化为 Vinogradov 方程组的解数；有效合同式法或解耦理论给出最优量级。

> **来源**：R. C. Vaughan, *The Hardy-Littlewood Method*；Trevor Wooley, "Vinogradov's Mean Value Theorem via Efficient Congruencing"。
