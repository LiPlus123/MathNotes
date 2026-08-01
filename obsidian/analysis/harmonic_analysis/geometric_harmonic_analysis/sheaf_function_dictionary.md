# 函数--层字典

## 从构造性层到有限域函数

<!-- geometric_constructible_sheaf_definition -->
> [!Definition]
> **构造性 $\ell$-进层 Constructible $\ell$-adic Sheaf**：设 $X$ 为有限域 $\mathbb{F}_q$ 上的有限型概形。一个构造性 $\ell$-进复形 $\mathcal{F}$ 指其上同调层在某个有限分层上局部常值且纤维有限维的导出范畴对象；若它带有几何 Frobenius 作用，则称带有 Weil 结构。

<!-- geometric_trace_function_definition -->
> [!Definition]
> **迹函数 Trace Function**：对带 Weil 结构的构造性复形 $\mathcal{F}$，其在 $X(\mathbb{F}_q)$ 上的迹函数定义为
> $$
> t_{\mathcal{F}}(x)=
> \sum_i(-1)^i\operatorname{Tr}\left(
> \operatorname{Frob}_x\mid\mathcal{H}^i(\mathcal{F})_{\overline{x}}
> \right).
> $$
> 这里 $\operatorname{Frob}_x$ 为点 $x$ 的几何 Frobenius，$\overline{x}$ 是一个几何点。常值层的迹函数为常函数 $1$。

<!-- geometric_pullback_dictionary -->
> [!Proposition]
> **拉回与函数复合 Pullback and Composition**：若 $f:X\to Y$ 是定义在 $\mathbb{F}_q$ 上的态射，且 $\mathcal{G}$ 带 Weil 结构，则
> $$
> t_{f^*\mathcal{G}}(x)=t_{\mathcal{G}}(f(x))
> \qquad(x\in X(\mathbb{F}_q)).
> $$
> 因而几何拉回对应函数的复合。
>
> **证明思路**：拉回后的几何纤维与原层在 $f(x)$ 处的几何纤维同构，且该同构与局部 Frobenius 作用相容。

<!-- geometric_proper_pushforward_dictionary -->
> [!Theorem]
> **紧支撑推前与求和 Proper Pushforward and Summation**：若 $f:X\to Y$ 是有限型分离态射，则对带 Weil 结构的构造性复形 $\mathcal{F}$，
> $$
> t_{Rf_!\mathcal{F}}(y)=
> \sum_{x\in X_y(\mathbb{F}_q)}t_{\mathcal{F}}(x)
> \qquad(y\in Y(\mathbb{F}_q)).
> $$
> 此处右侧也可理解为几何纤维上的 Frobenius 加权迹；当纤维的有理点都在基域上时即为所写的有限和。
>
> **证明思路**：对纤维应用 Grothendieck--Lefschetz 迹公式，并以紧支撑基变换识别 $Rf_!\mathcal{F}$ 的纤维。

<!-- geometric_convolution_dictionary -->
> [!Definition]
> **几何卷积 Geometric Convolution**：对代数群 $G$ 上带 Weil 结构的构造性复形 $\mathcal{F},\mathcal{G}$，乘法态射 $m:G\times G\to G$ 给出
> $$
> \mathcal{F}*\mathcal{G}=Rm_!(\mathcal{F}\boxtimes\mathcal{G}).
> $$
> 其迹函数满足
> $$
> t_{\mathcal{F}*\mathcal{G}}(g)=
> \sum_{ab=g}t_{\mathcal{F}}(a)t_{\mathcal{G}}(b),
> $$
> 即对应有限群或有限点集上的离散卷积。

<!-- geometric_sheaf_function_principle -->
> [!Concept]
> **函数--层原则 Sheaf-Function Principle**：在有限域几何中，函数的求和、卷积和 Fourier 变换常可提升为导出范畴中的推前、卷积和积分变换。Frobenius 迹将这些几何操作投影回有限集上的函数操作，同时保留权、奇点和单值群等额外结构。

> **来源**：Gérard Laumon, "Transformation de Fourier, constantes d'équations fonctionnelles et conjecture de Weil", *Publications Mathématiques de l'IHÉS* 65 (1987)；Nicholas M. Katz, *Exponential Sums and Differential Equations*。
