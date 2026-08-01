# 广义傅里叶级数

<!-- functional_analysis_general_fourier_series_definition -->
> [!Definition]
> **广义傅里叶级数 General Fourier Series**：对 Hilbert 空间中标准正交系 $(e_n)$，$x$ 的 Fourier 系数为 $\langle e_n,x\rangle$，其广义 Fourier 级数为
> $$
> \sum_{n=1}^{\infty}\langle e_n,x\rangle e_n.
> $$

<!-- functional_analysis_general_fourier_series_convergence -->
> [!Theorem]
> **广义 Fourier 级数的收敛 Convergence of General Fourier Series**：对任意标准正交系，上述部分和在 $H$ 中收敛到 $\overline{\operatorname{span}\{e_n\}}$ 中 $x$ 的正交投影；若该系完备，则收敛到 $x$。

<!-- functional_analysis_trigonometric_legendre_examples -->
> [!Example]+
> **三角函数系与 Legendre 多项式系 Trigonometric and Legendre Systems**：$L^2([ -\pi,\pi])$ 中的归一化复指数函数系，以及 $L^2([-1,1])$ 中归一化 Legendre 多项式系，都是完备标准正交系，因而给出相应的 $L^2$ Fourier 展开。