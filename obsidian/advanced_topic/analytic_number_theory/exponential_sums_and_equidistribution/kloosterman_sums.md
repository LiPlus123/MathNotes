## Kloosterman 和

<!-- analytic_number_theory_kloosterman_sum_definition -->
> [!Definition]
> **Kloosterman 和 Kloosterman Sum**：对正整数 $q$ 及整数 $a,b$，定义
>
> $$S(a,b;q)=\sum_{\substack{x\bmod q\\\gcd(x,q)=1}}e\left(\frac{ax+b\overline{x}}{q}\right),$$
>
> 其中 $\overline{x}$ 是 $x$ 模 $q$ 的乘法逆元。

<!-- analytic_number_theory_kloosterman_weil_bound -->
> [!Theorem]
> **Kloosterman 和的 Weil 界 Weil Bound for Kloosterman Sums**：对任意 $a,b,q$，有
>
> $$|S(a,b;q)|\leq\tau(q)\sqrt{\gcd(a,b,q)q},$$
>
> 其中 $\tau(q)$ 是 $q$ 的正约数个数。特别地，若 $p$ 为素数且 $p\nmid ab$，则
>
> $$|S(a,b;p)|\leq2\sqrt p.$$
>
> **证明思路**：先借助中国剩余定理将一般模数问题化为素数幂模数；对素数模数，深层证明把 Kloosterman 和实现为 Frobenius 在 Kloosterman 层上的迹，并由 Weil 猜想的权界得到平方根消去。

<!-- analytic_number_theory_kloosterman_sum_symmetries -->
> [!Theorem]
> **Kloosterman 和的基本对称性 Basic Symmetries of Kloosterman Sums**：若 $u$ 与 $q$ 互素，则
>
> $$S(a,b;q)=S(b,a;q)=S(au,bu^{-1};q).$$
>
> **证明思路**：第一式由换元 $x\mapsto\overline{x}$ 得到。第二式由换元 $x\mapsto u^{-1}x$ 得到，且该变换置换模 $q$ 的既约剩余类。

> **注**：Kloosterman 和是模形式 Voronoi 求和公式与 Kuznetsov 迹公式中的基本算术振荡项。