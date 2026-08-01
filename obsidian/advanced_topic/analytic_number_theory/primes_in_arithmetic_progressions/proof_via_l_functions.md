## 通过 $L$ 函数的证明

<!-- analytic_number_theory_residue_class_character_expansion -->
> [!Theorem]
> **同余类示性函数的特征展开 Character Expansion of a Residue Class**：若 $\gcd(a,q)=1$，则对任意正整数 $n$，
>
> $$\mathbf{1}_{n\equiv a\, (\mathrm{mod}\,q)}=\frac{1}{\varphi(q)}\sum_{\chi\bmod q}\overline{\chi(a)}\chi(n).$$
>
> 当 $\gcd(n,q)>1$ 时，右端为 $0$，与左端一致。
>
> **证明思路**：这是有限阿贝尔群 $(\mathbb{Z}/q\mathbb{Z})^\times$ 的角色正交关系；将 Dirichlet 特征按定义零延拓到非单位剩余类即可。

<!-- analytic_number_theory_ap_von_mangoldt_l_series_identity -->
> [!Theorem]
> **同余类 von Mangoldt 和的 $L$ 级数分解 $L$-Series Decomposition for the von Mangoldt Sum**：当 $\operatorname{Re}(s)>1$ 且 $\gcd(a,q)=1$ 时，
>
> $$\sum_{\substack{n\geq1\\n\equiv a\, (\mathrm{mod}\,q)}}\frac{\Lambda(n)}{n^s}
> =-\frac{1}{\varphi(q)}\sum_{\chi\bmod q}\overline{\chi(a)}\frac{L'(s,\chi)}{L(s,\chi)}.$$
>
> **证明思路**：以特征展开同余类示性函数，并使用 Euler 乘积对数微分恒等式 $-L'/L=\sum_{n\geq1}\chi(n)\Lambda(n)n^{-s}$。

<!-- analytic_number_theory_dirichlet_theorem_l_function_proof -->
> [!Theorem]
> **Dirichlet 定理的 $L$ 函数证明 Proof of Dirichlet's Theorem via $L$-Functions**：若 $\gcd(a,q)=1$，则
>
> $$\sum_{\substack{p\equiv a\, (\mathrm{mod}\,q)}}\frac1p=\infty.$$
>
> 因而该同余类中有无穷多个素数。
>
> **证明思路**：在同余类的 $L$ 级数分解中，主特征的 $-L'/L$ 在 $s=1$ 产生正的主发散项；非主特征由 $L(1,\chi)\ne0$ 保证在 $s=1$ 附近无奇点。高次素数幂贡献在 $s\to1^+$ 时有界，故素数倒数和必须发散。