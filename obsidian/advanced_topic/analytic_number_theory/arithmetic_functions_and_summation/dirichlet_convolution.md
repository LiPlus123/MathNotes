## Dirichlet 卷积

<!-- analytic_number_theory_dirichlet_convolution_definition -->
> [!Definition]
> **Dirichlet 卷积 Dirichlet Convolution**：设 $f,g:\mathbb{Z}^+\to\mathbb{C}$ 为数论函数。它们的 Dirichlet 卷积定义为
>
> $$(f*g)(n)=\sum_{d\mid n}f(d)g\left(\frac{n}{d}\right)=\sum_{ab=n}f(a)g(b).$$

<!-- analytic_number_theory_dirichlet_unit_function_definition -->
> [!Definition]
> **Dirichlet 单位元 Dirichlet Identity**：定义函数
>
> $$
> \varepsilon(n)=
> \begin{cases}
> 1, & n=1,\\
> 0, & n>1.
> \end{cases}
> $$
>
> 它是 Dirichlet 卷积的单位元，即对每个数论函数 $f$ 有 $f*\varepsilon=\varepsilon*f=f$。

<!-- analytic_number_theory_dirichlet_convolution_algebra -->
> [!Theorem]
> **Dirichlet 卷积的代数性质 Algebraic Properties of Dirichlet Convolution**：对取值于交换环的数论函数，逐点加法和 Dirichlet 卷积使全体数论函数构成交换环，其乘法单位元为 $\varepsilon$。特别地，若 $f,g$ 均为积性函数，则 $f*g$ 也是积性函数。
>
> **证明思路**：交换律由因数对 $(a,b)$ 的对称性得到；结合律将两侧都重写为 $\sum_{abc=n}f(a)g(b)h(c)$。对互素的 $m,n$，$mn$ 的每个因数唯一写成 $d_1d_2$，其中 $d_1\mid m$、$d_2\mid n$，由此证明积性。

<!-- analytic_number_theory_dirichlet_inverse_theorem -->
> [!Theorem]
> **Dirichlet 逆 Dirichlet Inverse**：数论函数 $f$ 存在唯一的 Dirichlet 逆 $f^{-1}$，即 $f*f^{-1}=\varepsilon$，当且仅当 $f(1)\ne0$。此时
>
> $$f^{-1}(1)=\frac{1}{f(1)},\qquad f^{-1}(n)=-\frac{1}{f(1)}\sum_{\substack{d\mid n\\d<n}}f\left(\frac nd\right)f^{-1}(d)\quad(n>1).$$
>
> 特别地，常数函数 $\mathbf{1}$ 的 Dirichlet 逆是 Möbius 函数 $\mu$，即 $\mu*\mathbf{1}=\varepsilon$。
>
> **证明思路**：比较 $(f*f^{-1})(n)$ 的值。$n=1$ 时确定 $f^{-1}(1)$；$n>1$ 时分离因数 $d=n$ 所对应的一项，递归确定 $f^{-1}(n)$。

<!-- analytic_number_theory_mobius_inversion_formula -->
> [!Theorem]
> **Möbius 反演公式 Möbius Inversion Formula**：对数论函数 $f,g$，以下两个命题等价：
>
> $$g(n)=\sum_{d\mid n}f(d),$$
>
> $$f(n)=\sum_{d\mid n}\mu(d)g\left(\frac nd\right).$$
>
> 等价地，若 $g=f*\mathbf{1}$，则 $f=g*\mu$。
>
> **证明思路**：利用 $\mathbf{1}*\mu=\varepsilon$，将等式 $g=f*\mathbf{1}$ 的两边与 $\mu$ 作 Dirichlet 卷积。

<!-- analytic_number_theory_mobius_inversion_euler_phi_example -->
> [!Example]+
> **Euler 函数的 Möbius 反演 Möbius Inversion for Euler's Totient**：恒等函数 $\mathrm{id}(n)=n$ 满足
>
> $$\sum_{d\mid n}\varphi(d)=n.$$
>
> 因此由 Möbius 反演，
>
> $$\varphi(n)=\sum_{d\mid n}\mu(d)\frac nd=n\sum_{d\mid n}\frac{\mu(d)}{d}.$$
>
> **证明思路**：按分式最简形式的分母分类 $n$ 次单位根，得到第一式；再直接应用 Möbius 反演公式。