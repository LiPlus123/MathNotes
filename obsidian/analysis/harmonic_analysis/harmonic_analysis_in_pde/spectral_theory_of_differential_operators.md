# 微分算子的谱理论

## 自伴算子、谱投影与频率簇

<!-- pde_self_adjoint_elliptic_operator_definition -->
> [!Definition]
> **自伴椭圆算子 Self-Adjoint Elliptic Operator**：设 $M$ 是紧致无边界 Riemann 流形，$P$ 是正的自伴二阶椭圆算子，例如 $P=-\Delta_g$。谱定理给出离散特征值列与正交特征函数列
> $$
> P\phi_j=\lambda_j^2\phi_j,
> \qquad 0\leq\lambda_0\leq\lambda_1\leq\cdots\to\infty,
> $$
> 且 $L^2(M)$ 由 $\{\phi_j\}$ 的闭线性张成给出。

<!-- pde_weyl_law_theorem -->
> [!Theorem]
> **Weyl 渐近公式 Weyl Law**：对 $n$ 维紧致流形上的正自伴二阶椭圆算子，计数函数
> $$
> N(\lambda)=\#\{j:\lambda_j\leq\lambda\}
> $$
> 满足
> $$
> N(\lambda)\sim C_{M,P}\lambda^n
> \qquad(\lambda\to\infty).
> $$
> 对 Laplace-Beltrami 算子，常数由流形体积和 Euclidean 单位球体积确定。
>
> **证明思路**：热迹的短时间渐近与 Tauber 型定理给出计数函数主项；也可借助椭圆伪微分算子的半经典相空间体积计算。

<!-- pde_spectral_projector_definition -->
> [!Definition]
> **谱投影 Spectral Projector**：对频率窗口 $[\lambda,\lambda+1]$，定义
> $$
> \Pi_\lambda f=
> \sum_{\lambda\leq\lambda_j<\lambda+1}
> \langle f,\phi_j\rangle\phi_j.
> $$
> 谱簇投影的 $L^p$ 估计衡量高频特征函数可能发生的空间集中。

<!-- pde_sogge_spectral_cluster_theorem -->
> [!Theorem]
> **谱簇 $L^p$ 估计 Spectral-Cluster Estimate**：对紧致无边界流形，存在指数 $\sigma_n(p)$，使
> $$
> \|\Pi_\lambda f\|_{L^p(M)}
> \leq C\lambda^{\sigma_n(p)}\|f\|_{L^2(M)},
> \qquad \lambda\geq1.
> $$
> 指数的分段形式由 $p$ 和维数决定；其证明与波群的 Fourier 积分算子表示及振荡积分估计有关。
>
> **证明思路**：用谱投影的 Fourier 表示把问题局部化为波方程参数子；对相应 Fourier 积分算子应用稳定相位和限制型估计。

<!-- pde_bochner_riesz_mean_definition -->
> [!Definition]
> **Bochner--Riesz 平均 Bochner--Riesz Means**：在 Euclidean 空间，对 $\delta\geq0$ 定义
> $$
> \widehat{S_R^\delta f}(\xi)=
> \left(1-\frac{|\xi|^2}{R^2}\right)_+^\delta\widehat f(\xi).
> $$
> 其 $L^p$ 有界性与 Fourier 限制、局部光滑化及特征函数估计紧密关联。

> **来源**：Christopher Sogge, *Fourier Integrals in Classical Analysis*；Lars Hormander, *The Analysis of Linear Partial Differential Operators*。
