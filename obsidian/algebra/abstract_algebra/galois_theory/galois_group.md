# Galois 群

## 定义

<!-- galois_group_def -->
> [!Definition]
> **Galois 群 Galois Group**：设 $E/F$ 为域扩张。$E$ 的所有 $F$-自同构（即满足 $\sigma|_F = \mathrm{id}_F$ 的域自同构 $\sigma: E \xrightarrow{\cong} E$）在复合运算下构成群，称为 $E/F$ 的 **Galois 群**，记作
> $$
> \mathrm{Gal}(E/F).
> $$

> **注**：即使 $E/F$ 不是 Galois 扩张，$\mathrm{Gal}(E/F)$ 作为群也是有意义的，但此时 $|\mathrm{Gal}(E/F)| < [E:F]$。

## 基本性质

<!-- galois_group_order -->
> [!Theorem]
> **Galois 群的阶**：若 $E/F$ 是 Galois 扩张，则
> $$
> |\mathrm{Gal}(E/F)| = [E : F].
> $$
>
> **证明思路**：这直接由 Galois 扩张的等价刻画（自同构群阶等于扩张次数）得出。

<!-- galois_group_action_on_roots -->
> [!Theorem]
> **Galois 群对根的作用**：设 $E/F$ 为 Galois 扩张，$f(x) \in F[x]$ 为不可约多项式，$\alpha \in E$ 为 $f$ 的一个根。则 $\mathrm{Gal}(E/F)$ 在 $f$ 在 $E$ 中的所有根构成的集合上传递地作用，即：对 $f$ 的任意两个在 $E$ 中的根 $\alpha, \beta$，存在 $\sigma \in \mathrm{Gal}(E/F)$ 使得 $\sigma(\alpha) = \beta$。
>
> **证明思路**：利用域同构延拓定理：$F$-同构 $F(\alpha) \cong F(\beta)$（将 $\alpha$ 映到 $\beta$）可以延拓到 $E$ 的自同构，因为 $E/F(\alpha)$ 和 $E/F(\beta)$ 均为分裂域上的扩张。

<!-- galois_group_subgroup_intermediate -->
> [!Theorem]
> **子群与中间域的对应**：设 $E/F$ 为 Galois 扩张，$G = \mathrm{Gal}(E/F)$。对每个子群 $H \leq G$，令
> $$
> E^H = \{ a \in E \mid \sigma(a) = a,\ \forall \sigma \in H \}
> $$
> 为 $H$ 的**固定域**，则 $E^H$ 是 $E/F$ 的中间域，且由 Artin 定理，$[E : E^H] = |H|$。
>
> **证明思路**：由 Artin 定理，$E/E^H$ 是 Galois 扩张，$\mathrm{Gal}(E/E^H) = H$，次数为 $|H|$。

## 具体计算

<!-- galois_group_quadratic -->
> [!Example]+
> **二次扩张的 Galois 群**：$\mathrm{Gal}(\mathbb{Q}(\sqrt{d})/\mathbb{Q}) \cong \mathbb{Z}/2\mathbb{Z}$（$d$ 无平方因子），其中非平凡自同构为 $\sigma: \sqrt{d} \mapsto -\sqrt{d}$。

<!-- galois_group_cyclotomic -->
> [!Example]+
> **分圆域的 Galois 群**：设 $p$ 为奇素数，则
> $$
> \mathrm{Gal}(\mathbb{Q}(\zeta_p)/\mathbb{Q}) \cong (\mathbb{Z}/p\mathbb{Z})^\times \cong \mathbb{Z}/(p-1)\mathbb{Z}.
> $$
> 每个 $\sigma_k$（$1 \leq k \leq p-1$，$(k,p)=1$）由 $\sigma_k(\zeta_p) = \zeta_p^k$ 确定，乘法对应 $\mathbb{Z}/p\mathbb{Z}$ 中的乘法。更一般地，对任意 $n$，
> $$
> \mathrm{Gal}(\mathbb{Q}(\zeta_n)/\mathbb{Q}) \cong (\mathbb{Z}/n\mathbb{Z})^\times.
> $$

<!-- galois_group_finite_field -->
> [!Example]+
> **有限域的 Galois 群**：$\mathrm{Gal}(\mathbb{F}_{p^n}/\mathbb{F}_p)$ 是 $n$ 阶循环群，由 Frobenius 自同构
> $$
> \mathrm{Fr}_p: x \mapsto x^p
> $$
> 生成。更一般地，$\mathrm{Gal}(\mathbb{F}_{q^n}/\mathbb{F}_q)$ 是 $n$ 阶循环群，由 $x \mapsto x^q$ 生成。

<!-- galois_group_x3_minus2 -->
> [!Example]+
> **$x^3-2$ 的 Galois 群**：$f(x) = x^3-2$ 在 $\mathbb{Q}$ 上的分裂域为 $E = \mathbb{Q}(\sqrt[3]{2}, \omega)$（$\omega = e^{2\pi i/3}$），$[E:\mathbb{Q}] = 6$。则
> $$
> \mathrm{Gal}(E/\mathbb{Q}) \cong S_3,
> $$
> 因为 Galois 群以传递方式作用在 $f$ 的三个根 $\{\sqrt[3]{2},\ \omega\sqrt[3]{2},\ \omega^2\sqrt[3]{2}\}$ 上，且保持这三个根决定整个自同构，同构于 $S_3$。

<!-- galois_group_biquadratic -->
> [!Example]+
> **双二次扩张的 Galois 群**：$\mathrm{Gal}(\mathbb{Q}(\sqrt{2},\sqrt{3})/\mathbb{Q}) \cong \mathbb{Z}/2\mathbb{Z} \times \mathbb{Z}/2\mathbb{Z}$，四个自同构由 $\sqrt{2} \mapsto \pm\sqrt{2}$，$\sqrt{3} \mapsto \pm\sqrt{3}$ 的四种组合给出。
