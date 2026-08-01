## Dirichlet 特征

<!-- analytic_number_theory_dirichlet_character_definition -->
> [!Definition]
> **模 $q$ 的 Dirichlet 特征 Dirichlet Character Modulo $q$**：设 $q\geq1$。模 $q$ 的 Dirichlet 特征是群同态
>
> $$\chi:(\mathbb{Z}/q\mathbb{Z})^\times\to\mathbb{C}^{\times}$$
>
> 的零延拓：对正整数 $n$，若 $\gcd(n,q)>1$，令 $\chi(n)=0$；若 $\gcd(n,q)=1$，则令 $\chi(n)$ 为 $n\bmod q$ 的像。因而 $\chi$ 周期为 $q$，完全积性，且当 $\gcd(n,q)=1$ 时 $|\chi(n)|=1$。

<!-- analytic_number_theory_principal_dirichlet_character_definition -->
> [!Definition]
> **主特征 Principal Character**：模 $q$ 的主特征 $\chi_0$ 定义为
>
> $$
> \chi_0(n)=
> \begin{cases}
> 1, & \gcd(n,q)=1,\\
> 0, & \gcd(n,q)>1.
> \end{cases}
> $$
>
> 它对应于单位群上的平凡角色。

<!-- analytic_number_theory_conductor_and_primitive_character_definition -->
> [!Definition]
> **导子与原特征 Conductor and Primitive Character**：若模 $q$ 的特征 $\chi$ 可由模 $d$ 的特征诱导而来，其中 $d\mid q$，则称 $d$ 是 $\chi$ 的一个诱导模。所有此类 $d$ 中最小的正整数称为 $\chi$ 的**导子**，记为 $\operatorname{cond}(\chi)$。当 $\operatorname{cond}(\chi)=q$ 时，称 $\chi$ 为模 $q$ 的**原特征 primitive character**。

<!-- analytic_number_theory_dirichlet_character_orthogonality -->
> [!Theorem]
> **Dirichlet 特征的正交关系 Orthogonality Relations for Dirichlet Characters**：设 $\chi,\psi$ 均为模 $q$ 的 Dirichlet 特征，则
>
> $$\sum_{a\bmod q}\chi(a)\overline{\psi(a)}=\begin{cases}\varphi(q),&\chi=\psi,\\0,&\chi\ne\psi.\end{cases}$$
>
> 又对任意整数 $a,b$，
>
> $$\sum_{\chi\bmod q}\chi(a)\overline{\chi(b)}=\begin{cases}\varphi(q),&a\equiv b\pmod q\text{ 且 }\gcd(ab,q)=1,\\0,&\text{否则} .\end{cases}$$
>
> **证明思路**：将特征限制到有限阿贝尔群 $(\mathbb{Z}/q\mathbb{Z})^\times$。非平凡角色在该群上的和为零；再对角色群应用同一结论即可。