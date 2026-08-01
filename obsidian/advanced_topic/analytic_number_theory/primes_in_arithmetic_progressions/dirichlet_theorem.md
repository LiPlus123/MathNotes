## Dirichlet 定理

<!-- analytic_number_theory_primes_in_arithmetic_progression_counting_definition -->
> [!Definition]
> **算术级数中的素数计数函数 Prime-Counting Function in an Arithmetic Progression**：对正整数 $q$ 与满足 $\gcd(a,q)=1$ 的整数 $a$，定义
>
> $$\pi(x;q,a)=\#\{p\leq x:p\text{ 为素数且 }p\equiv a\pmod q\}.$$
>
> 相应的 von Mangoldt 加权求和函数定义为
>
> $$\psi(x;q,a)=\sum_{\substack{n\leq x\\n\equiv a\pmod q}}\Lambda(n).$$

<!-- analytic_number_theory_dirichlet_theorem_on_primes_in_ap -->
> [!Theorem]
> **Dirichlet 算术级数素数定理 Dirichlet's Theorem on Primes in Arithmetic Progressions**：若 $q\geq1$ 且 $\gcd(a,q)=1$，则算术级数
>
> $$a,a+q,a+2q,\ldots$$
>
> 中包含无穷多个素数。等价地，$\pi(x;q,a)$ 当 $x\to\infty$ 时无界。

> **证明思路**：以模 $q$ 的 Dirichlet 特征分解同余类的示性函数，证明相应素数倒数的加权和发散。主特征给出发散主项，非主特征的贡献因 $L(1,\chi)\ne0$ 而受控，故该同余类中不可能只有有限个素数。

<!-- analytic_number_theory_coprimality_necessity_for_dirichlet_theorem -->
> [!Theorem]
> **互素条件的必要性 Necessity of the Coprimality Condition**：若 $d=\gcd(a,q)>1$，则级数 $a+kq$ 的每一项都可被 $d$ 整除。因此除至多一个等于 $d$ 的项外，该级数不含素数；故 Dirichlet 定理中的 $\gcd(a,q)=1$ 条件不可省略。
>
> **证明思路**：由 $d\mid a$ 与 $d\mid q$ 立即有 $d\mid(a+kq)$。大于 $d$ 的此类项均为合数。