# 代数元素与极小多项式

## 代数元素

<!-- algebraic_element_def -->
> [!Definition]
> **代数元素 Algebraic Element**：设 $E/F$ 为域扩张，$\alpha \in E$。若存在非零多项式 $f(x) \in F[x]$ 使得
> $$
> f(\alpha)=0,
> $$
> 则称 $\alpha$ 关于 $F$ **代数**；否则称 $\alpha$ 关于 $F$ **超越**。

<!-- minimal_polynomial_def -->
> [!Definition]
> **极小多项式 Minimal Polynomial**：设 $\alpha \in E$ 关于 $F$ 代数。在所有满足 $f(\alpha)=0$ 的非零多项式 $f \in F[x]$ 中，次数最小且首一的多项式唯一存在，记为
> $$
> m_{\alpha,F}(x),
> $$
> 称为 $\alpha$ 在 $F$ 上的**极小多项式**。

## 极小多项式的性质

<!-- minimal_polynomial_irreducible -->
> [!Theorem]
> **极小多项式不可约**：$m_{\alpha,F}(x)$ 在 $F[x]$ 中不可约。
>
> **证明思路**：若可约为 $m=gh$，则 $0=m(\alpha)=g(\alpha)h(\alpha)$。因像域无零因子，$g(\alpha)=0$ 或 $h(\alpha)=0$，与极小次数矛盾。

<!-- minimal_polynomial_divides_annihilator -->
> [!Theorem]
> **整除性质**：对任意 $f(x) \in F[x]$，若 $f(\alpha)=0$，则
> $$
> m_{\alpha,F}(x) \mid f(x).
> $$
>
> **证明思路**：对 $f$ 作欧几里得除法 $f=qm+r$（$\deg r<\deg m$）。代入 $\alpha$ 得 $r(\alpha)=0$，由极小性知 $r=0$。

<!-- simple_extension_isomorphic_quotient -->
> [!Theorem]
> **单扩张的商环描述**：若 $\alpha$ 关于 $F$ 代数，则
> $$
> F(\alpha) \cong F[x]/(m_{\alpha,F}(x)).
> $$
>
> **证明思路**：考虑评价同态 $\varphi: F[x] \to E,\ f \mapsto f(\alpha)$。其核为主理想 $(m_{\alpha,F})$，像为 $F[\alpha]=F(\alpha)$，由同构基本定理即得。

<!-- simple_extension_degree_minpoly -->
> [!Corollary]
> **单扩张次数公式**：若 $\alpha$ 关于 $F$ 代数，则
> $$
> [F(\alpha):F] = \deg m_{\alpha,F}(x).
> $$

## 单扩张

<!-- simple_extension_def -->
> [!Definition]
> **单扩张 Simple Extension**：设 $E/F$ 为扩张，若存在 $\alpha \in E$ 使得
> $$
> E = F(\alpha),
> $$
> 则称 $E/F$ 为由 $\alpha$ 生成的**单扩张**。

## 例子

<!-- minimal_polynomial_example_sqrt2 -->
> [!Example]+
> **$\sqrt{2}$ 的极小多项式**：在扩张 $\mathbb{Q}(\sqrt{2})/\mathbb{Q}$ 中，$\sqrt{2}$ 的极小多项式为
> $$
> m_{\sqrt{2},\mathbb{Q}}(x)=x^2-2,
> $$
> 故 $[\mathbb{Q}(\sqrt{2}):\mathbb{Q}] = 2$。

<!-- minimal_polynomial_example_primitive_cube_root -->
> [!Example]+
> **原三次单位根**：设 $\omega = e^{2\pi i/3}$，则在 $\mathbb{Q}$ 上有
> $$
> m_{\omega,\mathbb{Q}}(x)=x^2+x+1,
> $$
> 因而 $[\mathbb{Q}(\omega):\mathbb{Q}] = 2$。
