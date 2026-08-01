# Riesz 变换

## 定义与基本恒等式

<!-- singular_riesz_transform_definition -->
> [!Definition]
> **Riesz 变换 Riesz Transform**：设 $1\leq j\leq n$。对 $f\in\mathcal{S}(\mathbb{R}^n)$，第 $j$ 个 Riesz 变换定义为主值卷积
> $$
> R_jf(x)=c_n\operatorname{p.v.}\int_{\mathbb{R}^n}
> \frac{x_j-y_j}{|x-y|^{n+1}}f(y)\,dy,
> $$
> 其中常数 $c_n$ 唯一选定，使其 Fourier 乘子满足下述规范化。

<!-- singular_riesz_multiplier -->
> [!Theorem]
> **Riesz 变换的乘子刻画 Riesz Transform Multiplier Characterization**：对 $f\in\mathcal{S}(\mathbb{R}^n)$，
> $$
> \widehat{R_jf}(\xi)=-i\frac{\xi_j}{|\xi|}\widehat f(\xi)
> \quad(\xi\ne0).
> $$
> 因而 $R_j$ 是零阶、旋转协变的 Fourier 乘子算子。
>
> **证明思路**：核 $x_j/|x|^{n+1}$ 是齐次次数 $-n$ 的奇分布。通过其与 Newton 位势的导数关系计算分布 Fourier 变换，再以选定的 $c_n$ 固定符号与系数。

<!-- singular_riesz_lp_boundedness -->
> [!Theorem]
> **Riesz 变换的 $L^p$ 有界性 $L^p$ Boundedness of Riesz Transforms**：对每个 $1<p<+\infty$，存在 $C_{p,n}$ 使
> $$
> \|R_jf\|_p\leq C_{p,n}\|f\|_p.
> $$
> 同时 $R_j$ 为弱 $(1,1)$ 型算子。
>
> **证明思路**：Riesz 核满足标准 Calderón-Zygmund 大小与光滑性估计，且乘子模长不超过 $1$，故先得 $L^2$ 有界性，再应用 Calderón-Zygmund 定理。

<!-- singular_riesz_laplacian_relation -->
> [!Proposition]
> **与 Laplace 算子的关系 Relation with the Laplacian**：对 $f\in\mathcal{S}(\mathbb{R}^n)$ 及 $1\leq i,j\leq n$，
> $$
> \partial_i\partial_jf=-R_iR_j\Delta f.
> $$
>
> **证明思路**：在频率侧，左边的乘子为 $-4\pi^2\xi_i\xi_j$；右边乘子为
> $$
> -\left(-i\frac{\xi_i}{|\xi|}\right)
> \left(-i\frac{\xi_j}{|\xi|}\right)(-4\pi^2|\xi|^2),
> $$
> 两者相同。该关系将二阶导数估计转化为 Riesz 变换估计。

<!-- singular_riesz_rotation_covariance -->
> [!Theorem]
> **旋转协变性 Rotation Covariance**：若 $U\in O(n)$，$f_U(x)=f(U^{-1}x)$，则向量 Riesz 变换满足
> $$
> \bigl(R_1f_U,\ldots,R_nf_U\bigr)(x)
> =U\bigl(R_1f,\ldots,R_nf\bigr)(U^{-1}x).
> $$
>
> **证明思路**：利用 $\widehat{f_U}(\xi)=\widehat f(U^{-1}\xi)$ 及 $|U^{-1}\xi|=|\xi|$，直接比较向量乘子 $-i\xi/|\xi|$。

> **来源**：Elias M. Stein, *Singular Integrals and Differentiability Properties of Functions*, Chapter II；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 5。
