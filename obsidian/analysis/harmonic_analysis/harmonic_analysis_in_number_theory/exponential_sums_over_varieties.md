# 代数簇上的指数和

## 上同调、权与几何相消

<!-- number_theory_variety_exponential_sum_definition -->
> [!Definition]
> **代数簇上的指数和 Exponential Sum over a Variety**：设 $X$ 为有限域 $\mathbb{F}_q$ 上有限型代数簇，$f:X\to\mathbb{A}^1$ 为正则函数，$\psi$ 为非平凡加法角色。定义
> $$
> S(X,f;\psi)=\sum_{x\in X(\mathbb{F}_q)}\psi(f(x)).
> $$
> 乘法角色扭曲可由秩一 Kummer 层实现。

<!-- number_theory_cohomological_trace_formula -->
> [!Theorem]
> **带层系数的迹公式 Trace Formula with Sheaf Coefficients**：若 $\mathcal{F}$ 是 $X$ 上带 Weil 结构的构造性 $\ell$-进复形，则
> $$
> \sum_{x\in X(\mathbb{F}_q)}t_{\mathcal{F}}(x)
> =\sum_i(-1)^i\operatorname{Tr}\left(
> \operatorname{Frob}_q\mid H_c^i(X_{\overline{\mathbb{F}}_q},\mathcal{F})
> \right).
> $$
> 对 $\mathcal{F}=f^*\mathcal{L}_\psi$，左侧即为 $S(X,f;\psi)$。
>
> **证明思路**：将 Grothendieck--Lefschetz 迹公式应用于带层系数的紧支撑上同调；Artin--Schreier 层的局部迹恢复加法角色。

<!-- number_theory_weights_square_root_cancellation -->
> [!Theorem]
> **权与平方根相消 Weights and Square-Root Cancellation**：若相关紧支撑上同调仅在权至多 $w$ 的部分出现，则 Frobenius 迹的每一项大小至多为 $q^{w/2}$ 乘以对应维数。对维数一的非退化情形，这通常导出 $O(q^{1/2})$ 型相消界。
>
> **证明思路**：Deligne 的权理论控制 Frobenius 特征值的所有复嵌入绝对值；对交替迹应用三角不等式并以 Betti 数控制项数。

<!-- number_theory_fourier_deligne_application -->
> [!Concept]
> **Fourier--Deligne 变换的作用 Role of the Fourier--Deligne Transform**：把参数化指数和看作参数空间上的迹函数后，Fourier--Deligne 变换描述加法 Fourier 变换如何作用于层。它可跟踪奇点、导数和权，因而将许多有限域和估计转化为几何单值性问题。

<!-- number_theory_katz_laumon_concept -->
> [!Concept]
> **Katz--Laumon 方法 Katz--Laumon Method**：Katz 通过单值群研究指数和族的分布和独立性，Laumon 的局部 Fourier 理论则精确描述分歧在 Fourier 变换下的变化。这些工具共同深化了经典 Weil 界的适用范围。

> **来源**：Pierre Deligne, "La Conjecture de Weil II"；Nicholas M. Katz, *Exponential Sums and Differential Equations*；Gerard Laumon, "Transformation de Fourier"。
