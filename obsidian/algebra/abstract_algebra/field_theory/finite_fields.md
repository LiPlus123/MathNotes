# 有限域

## 基本结构

<!-- finite_field_order_prime_power -->
> [!Theorem]
> **有限域阶为素数幂**：若 $F$ 为有限域，则存在素数 $p$ 与正整数 $n$ 使
> $$
> |F| = p^n.
> $$
>
> **证明思路**：$\mathrm{char}(F)=p$ 为素数，素域同构于 $\mathbb{F}_p$。把 $F$ 视为 $\mathbb{F}_p$ 上有限维向量空间，故基数为 $p^n$。

<!-- finite_field_existence_uniqueness -->
> [!Theorem]
> **有限域存在唯一性**：对每个素数幂 $q=p^n$，存在且仅存在（同构意义下）一个 $q$ 元域，记为 $\mathbb{F}_q$。
>
> **证明思路**：存在性可由 $\mathbb{F}_p[x]$ 中次数 $n$ 的不可约多项式商构造，唯一性由它们都是 $x^q-x$ 在代数闭包中的根集并具有同样域结构。

<!-- finite_field_multiplicative_cyclic -->
> [!Theorem]
> **有限域乘法群循环性**：$\mathbb{F}_q^\times$ 是阶为 $q-1$ 的循环群。
>
> **证明思路**：有限阿贝尔群分解定理与方程 $x^{q-1}=1$ 的根个数上界结合，可得存在生成元（本原元）。

<!-- finite_field_frobenius -->
> [!Theorem]
> **Frobenius 自同态**：在特征 $p$ 的域上，映射
> $$
> \mathrm{Fr}_p:F\to F,\quad x\mapsto x^p
> $$
> 是环同态；对有限域 $\mathbb{F}_q$，它还是自同构。
>
> **证明思路**：由二项式系数在模 $p$ 下消失得 $(x+y)^p=x^p+y^p$；有限集上的单射即满射。

## 多项式与有限域

<!-- finite_field_roots_of_xq_minus_x -->
> [!Theorem]
> **$x^q-x$ 的根结构**：在任一包含 $\mathbb{F}_q$ 的域中，方程
> $$
> x^q-x=0
> $$
> 的根恰为 $\mathbb{F}_q$ 的元素。
>
> **证明思路**：$a\in\mathbb{F}_q$ 必满足 $a^q=a$；反过来，次数为 $q$ 的多项式至多有 $q$ 个根，而 $\mathbb{F}_q$ 已提供 $q$ 个根。

## 例子

<!-- finite_field_example_F4 -->
> [!Example]+
> **四元域**：
> $$
> \mathbb{F}_4 \cong \mathbb{F}_2[x]/(x^2+x+1).
> $$
> 记 $\alpha$ 为 $x^2+x+1$ 的根，则 $\mathbb{F}_4=\{0,1,\alpha,\alpha+1\}$，且 $\alpha^2=\alpha+1$。

<!-- finite_field_example_F8 -->
> [!Example]+
> **八元域**：取 $\mathbb{F}_2[x]$ 中不可约多项式 $x^3+x+1$，可构造
> $$
> \mathbb{F}_8\cong\mathbb{F}_2[x]/(x^3+x+1).
> $$
> 其非零元构成 $7$ 阶循环群。
