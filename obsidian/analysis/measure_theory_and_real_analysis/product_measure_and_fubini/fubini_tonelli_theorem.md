# Fubini-Tonelli 定理

## 可测函数的截面与 Tonelli 定理

<!-- section_of_function_definition -->
> [!Definition]
> **函数的截面 Sections of a Function**：设 $f:X\times Y\to\overline{\mathbb{R}}$。对 $x\in X$ 与 $y\in Y$，定义
> $$
> f_x:Y\to\overline{\mathbb{R}},\qquad f_x(y)=f(x,y),
> $$
> $$
> f^y:X\to\overline{\mathbb{R}},\qquad f^y(x)=f(x,y).
> $$
> 分别称为 $f$ 的 $x$-截面与 $y$-截面。

<!-- measurable_function_sections_theorem -->
> [!Theorem]
> **可测函数截面定理 Measurable Function Sections Theorem**：若 $f:X\times Y\to\overline{\mathbb{R}}$ 是 $(\mathcal{A}\otimes\mathcal{B})$-可测函数，则对每个 $x\in X$，$f_x$ 是 $\mathcal{B}$-可测函数；对每个 $y\in Y$，$f^y$ 是 $\mathcal{A}$-可测函数。
>
> **证明思路**：对任意 $a\in\mathbb{R}$，有 $\{f_x>a\}=\{f>a\}_x$。由可测集截面定理，右侧可测，故 $f_x$ 可测；另一方向相同。

<!-- tonelli_theorem -->
> [!Theorem]
> **Tonelli 定理 Tonelli's Theorem**：设 $(X,\mathcal{A},\mu)$ 与 $(Y,\mathcal{B},\nu)$ 为 $\sigma$ 有限测度空间，$f:X\times Y\to[0,+\infty]$ 可测。则
> $$
> x\mapsto\int_Yf(x,y)\,d\nu(y)
> $$
> 与
> $$
> y\mapsto\int_Xf(x,y)\,d\mu(x)
> $$
> 均可测，且
> $$
> \int_{X\times Y}f\,d(\mu\otimes\nu)
> =\int_X\left(\int_Yf(x,y)\,d\nu(y)\right)d\mu(x)
> =\int_Y\left(\int_Xf(x,y)\,d\mu(x)\right)d\nu(y).
> $$
> 等式允许取值 $+\infty$。
>
> **证明思路**：先对非负简单函数由乘积测度的截面公式直接验证；再用简单函数递增逼近 $f$，对乘积空间与各截面同时应用单调收敛定理。

## Fubini 定理与累次积分

<!-- fubini_theorem -->
> [!Theorem]
> **Fubini 定理 Fubini's Theorem**：设 $(X,\mathcal{A},\mu)$ 与 $(Y,\mathcal{B},\nu)$ 为 $\sigma$ 有限测度空间，$f\in L^1(\mu\otimes\nu)$。则对几乎每个 $x\in X$，$f_x\in L^1(\nu)$；对几乎每个 $y\in Y$，$f^y\in L^1(\mu)$。并且
> $$
> \int_{X\times Y}f\,d(\mu\otimes\nu)
> =\int_X\left(\int_Yf(x,y)\,d\nu(y)\right)d\mu(x)
> =\int_Y\left(\int_Xf(x,y)\,d\mu(x)\right)d\nu(y).
> $$
>
> **证明思路**：对 $|f|$ 应用 Tonelli 定理，得到截面绝对可积性及其积分的可积性；将 $f=f^+-f^-$，再由线性性合并两个非负部分。

<!-- iterated_integral_example -->
> [!Example]+
> **累次积分计算矩形面积 Iterated Integration over a Rectangle**：设 $a<b$、$c<d$。对矩形的示性函数 $f=\mathbf{1}_{[a,b]\times[c,d]}$，Tonelli 定理给出
> $$
> \int_{\mathbb{R}^2}f\,d(m\otimes m)
> =\int_a^b\left(\int_c^d1\,dy\right)dx
> =(b-a)(d-c).
> $$
> 这表明二重积分可按任一变量先后进行，结果均为矩形面积。

<!-- fubini_failure_without_absolute_integrability -->
> [!Example]+
> **缺乏绝对可积性时 Fubini 结论可能失效 Failure of Fubini without Absolute Integrability**：在 $[0,1]^2$ 上，令
> $$
> f(x,y)=
> \begin{cases}
> \dfrac{x^2-y^2}{(x^2+y^2)^2}, & (x,y)\ne(0,0),\\
> 0, & (x,y)=(0,0).
> \end{cases}
> $$
> 对每个固定的 $x>0$，先对 $y$ 积分得到 $\int_0^1f(x,y)\,dy=1/(x^2+1)$，故按 $y$ 后 $x$ 的累次积分为 $\pi/4$；而对每个固定的 $y>0$，先对 $x$ 积分得到 $-1/(y^2+1)$，故按 $x$ 后 $y$ 的累次积分为 $-\pi/4$。因此仅有截面上的形式积分不足以适用 Fubini；必须验证 $\int|f|<+\infty$。

> **注**：本小节参见 Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 2；Gerald B. Folland, *Real Analysis*, 2nd ed., Section 2.6。
