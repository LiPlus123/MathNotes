## 模形式与 $L$ 函数

<!-- analytic_number_theory_modular_form_definition -->
> [!Definition]
> **模形式 Modular Form**：设 $k\in\mathbb Z$。若全纯函数 $f:\mathbb H\to\mathbb C$ 满足对每个
>
> $$\gamma=\begin{pmatrix}a&b\\c&d\end{pmatrix}\in\operatorname{SL}_2(\mathbb Z)$$
>
> 有
>
> $$f\left(\frac{a\tau+b}{c\tau+d}\right)=(c\tau+d)^kf(\tau),$$
>
> 且在尖点 $\infty$ 处全纯，则称 $f$ 为权 $k$ 的模形式。若其在尖点处消失，则称为尖点形式。

<!-- analytic_number_theory_hecke_eigenform_l_function_definition -->
> [!Definition]
> **Hecke $L$ 函数 Hecke $L$-Function of an Eigenform**：设归一化 Hecke 本征尖点形式的 Fourier 展开为
>
> $$f(\tau)=\sum_{n=1}^{\infty}a_nq^n,\qquad q=e^{2\pi i\tau},\qquad a_1=1.$$
>
> 定义其 $L$ 函数为
>
> $$L(s,f)=\sum_{n=1}^{\infty}\frac{a_n}{n^s}.$$
>
> Hecke 本征关系使系数 $(a_n)$ 具有乘法性，从而在绝对收敛半平面内给出 Euler 乘积。

<!-- analytic_number_theory_hecke_l_function_euler_product -->
> [!Theorem]
> **Hecke $L$ 函数的 Euler 乘积 Euler Product of a Hecke $L$-Function**：对权 $k$、水平 $1$ 的归一化 Hecke 本征尖点形式 $f$，在 $\operatorname{Re}(s)>1+(k-1)/2$ 中，
>
> $$L(s,f)=\prod_p\left(1-a_pp^{-s}+p^{k-1-2s}\right)^{-1}.$$
>
> **证明思路**：Hecke 算子的乘法关系给出 $a_{mn}=a_ma_n$（当 $(m,n)=1$）及 $a_{p^{r+1}}=a_pa_{p^r}-p^{k-1}a_{p^{r-1}}$；将这些递推代入局部生成函数即可。

<!-- analytic_number_theory_modular_l_function_functional_equation -->
> [!Theorem]
> **模形式 $L$ 函数的函数方程 Functional Equation of a Modular $L$-Function**：对上述尖点形式，完成函数
>
> $$\Lambda(s,f)=(2\pi)^{-s}\Gamma(s)L(s,f)$$
>
> 可解析延拓为整函数，并满足
>
> $$\Lambda(s,f)=i^k\Lambda(k-s,f).$$
>
> **证明思路**：对 $f(iy)$ 作 Mellin 变换。模变换 $\tau\mapsto-1/\tau$ 将积分中 $y<1$ 的部分化为 $y>1$ 的对应部分，尖点条件保证端点衰减，进而得到整延拓和函数方程。

> **注**：更一般的水平、特征和自守表示情形会引入导子、根数及分歧局部因子；这些对象是 Langlands 纲领的重要原型。