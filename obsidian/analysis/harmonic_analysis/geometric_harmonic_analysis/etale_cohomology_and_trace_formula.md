# etale 上同调与 Grothendieck--Lefschetz 迹公式

## Frobenius 迹与 Weil 猜想

<!-- geometric_frobenius_endomorphism_definition -->
> [!Definition]
> **几何 Frobenius 元 Geometric Frobenius**：对 $\mathbb{F}_q$ 的代数闭包 $\overline{\mathbb{F}}_q$，算术 Frobenius 为 $x\mapsto x^q$；几何 Frobenius 定义为其逆元，记为 $\operatorname{Frob}_q$。在 etale 上同调的迹公式中通常采用几何 Frobenius 约定。

<!-- geometric_etale_cohomology_definition -->
> [!Definition]
> **etale 上同调 Etale Cohomology**：对定义在 $\mathbb{F}_q$ 上的代数簇 $X$ 与素数 $\ell\ne\operatorname{char}\mathbb{F}_q$，紧支撑 $\ell$-进 etale 上同调群
> $$
> H_c^i(X_{\overline{\mathbb{F}}_q},\overline{\mathbb{Q}}_\ell)
> $$
> 是带有 Frobenius 作用的有限维 $\overline{\mathbb{Q}}_\ell$ 向量空间。它为有限域代数簇提供类似奇异上同调的同伦不变量。

<!-- geometric_grothendieck_lefschetz_trace_formula -->
> [!Theorem]
> **Grothendieck--Lefschetz 迹公式 Grothendieck--Lefschetz Trace Formula**：对有限型分离 $\mathbb{F}_q$-概形 $X$，
> $$
> |X(\mathbb{F}_q)|
> =\sum_{i\geq0}(-1)^i
> \operatorname{Tr}\left(\operatorname{Frob}_q\mid
> H_c^i(X_{\overline{\mathbb{F}}_q},\overline{\mathbb{Q}}_\ell)\right).
> $$
> 更一般地，对具有 Frobenius 结构的构造性层，点数由各点局部 Frobenius 迹的和给出。
>
> **证明思路**：将固定点公式应用于 Frobenius 对应。紧支撑上同调保证非紧簇的边界贡献被正确计入，交替迹给出有理点总数。

<!-- geometric_weil_conjectures_note -->
> [!Theorem]
> **Weil 猜想的上同调形式 Cohomological Form of the Weil Conjectures**：若 $X$ 是光滑射影 $\mathbb{F}_q$-簇，则其 zeta 函数可写为
> $$
> Z(X,t)=\prod_{i=0}^{2\dim X}
> \det\left(1-t\operatorname{Frob}_q\mid H^i(X_{\overline{\mathbb{F}}_q},\overline{\mathbb{Q}}_\ell)\right)^{(-1)^{i+1}}.
> $$
> Deligne 证明 Frobenius 在 $H^i$ 上的特征值在任意复嵌入下绝对值为 $q^{i/2}$，这给出有限域上的 Riemann 假设及指数和的平方根消去。
>
> **证明思路**：迹公式将各有限扩张上的点数打包为 zeta 函数；上同调的有限维性给出有理性。权理论控制 Frobenius 特征值，导出所需绝对值。

<!-- geometric_weight_definition -->
> [!Definition]
> **权与纯性 Weights and Purity**：Frobenius 特征值称为权 $w$ 的，若其所有复嵌入绝对值为 $q^{w/2}$；混合层或混合上同调允许出现不同权的滤过。权界直接将上同调维数转化为指数和的定量估计。

> **来源**：James S. Milne, *Etale Cohomology*；Pierre Deligne, "La Conjecture de Weil II", *Publications Mathematiques de l'IHES* 52 (1980)。
