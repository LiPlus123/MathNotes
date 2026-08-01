## 算术级数中的素数定理

<!-- analytic_number_theory_prime_number_theorem_for_arithmetic_progressions -->
> [!Theorem]
> **算术级数中的素数定理 Prime Number Theorem for Arithmetic Progressions**：固定正整数 $q$，若 $\gcd(a,q)=1$，则当 $x\to\infty$ 时，
>
> $$\pi(x;q,a)\sim\frac{\pi(x)}{\varphi(q)}\sim\frac{x}{\varphi(q)\log x}.$$
>
> 等价地，
>
> $$\psi(x;q,a)\sim\frac{x}{\varphi(q)}.$$
>
> **证明思路**：利用特征正交关系将 $\psi(x;q,a)$ 分解为各个特征扭曲 von Mangoldt 和。主特征给出 $x/\varphi(q)$；所有非主特征 $L$ 函数在单位实部直线无零，故 Tauber 定理或显式公式表明其贡献为 $o(x)$。

<!-- analytic_number_theory_ap_pnt_equidistribution_corollary -->
> [!Corollary]
> **既约剩余类中的渐近均分 Asymptotic Equidistribution among Reduced Residue Classes**：对固定模数 $q$，素数在全部 $\varphi(q)$ 个既约剩余类中渐近均匀分布：若 $\gcd(a,q)=\gcd(b,q)=1$，则
>
> $$\frac{\pi(x;q,a)}{\pi(x;q,b)}\longrightarrow1.$$
>
> **证明思路**：对两个既约剩余类分别应用算术级数中的素数定理，其主项相同。

<!-- analytic_number_theory_siegel_walfisz_theorem -->
> [!Theorem]
> **Siegel-Walfisz 定理 Siegel-Walfisz Theorem**：对每个常数 $A>0$，存在常数 $c_A>0$，使得当
>
> $$q\leq(\log x)^A,\qquad \gcd(a,q)=1$$
>
> 时，一致地有
>
> $$\psi(x;q,a)=\frac{x}{\varphi(q)}+O_A\left(x\exp\left(-c_A\sqrt{\log x}\right)\right).$$
>
> **证明思路**：在允许的模数范围内，对所有相关 Dirichlet $L$ 函数使用统一零点无空隙区；处理可能的 Siegel 零点并结合特征正交关系、Perron 公式或显式公式，即得一致误差项。

<!-- analytic_number_theory_siegel_walfisz_pi_form_corollary -->
> [!Corollary]
> **Siegel-Walfisz 定理的素数计数形式 Prime-Counting Form of Siegel-Walfisz**：在 Siegel-Walfisz 定理的条件下，一致地有
>
> $$\pi(x;q,a)=\frac{\operatorname{li}(x)}{\varphi(q)}+O_A\left(\frac{x\exp\left(-c_A\sqrt{\log x}\right)}{\log x}\right).$$
>
> **证明思路**：高次素数幂的贡献可忽略；对 $\psi(x;q,a)$ 的估计应用 Abel 求和公式，将 von Mangoldt 加权和转化为素数计数函数。