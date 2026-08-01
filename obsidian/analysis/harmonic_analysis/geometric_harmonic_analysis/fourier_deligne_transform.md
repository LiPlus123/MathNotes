# Fourier--Deligne 变换

## 加法角色的几何化

<!-- geometric_artin_schreier_sheaf_definition -->
> [!Definition]
> **Artin--Schreier 层 Artin--Schreier Sheaf**：固定 $\mathbb{F}_q$ 的非平凡加法角色 $\psi$。在仿射直线 $\mathbb{A}^1$ 上存在秩一 $\ell$-进层 $\mathcal{L}_\psi$，其在 $a\in\mathbb{F}_q$ 处的 Frobenius 迹为
> $$
> t_{\mathcal{L}_\psi}(a)=\psi(a).
> $$
> 它把加法角色视为一个几何对象。

<!-- geometric_fourier_deligne_transform_definition -->
> [!Definition]
> **Fourier--Deligne 变换 Fourier--Deligne Transform**：令 $V$ 为 $\mathbb{F}_q$ 上维数 $d$ 的有限维向量空间，$V^\vee$ 为其对偶空间。对投影 $p_1,p_2:V\times V^\vee\to V,V^\vee$ 和配对 $\langle\ ,\ \rangle:V\times V^\vee\to\mathbb{A}^1$，定义
> $$
> \operatorname{Four}_\psi(\mathcal{F})
> =Rp_{2!}\left(p_1^*\mathcal{F}\otimes
> \langle\ ,\ \rangle^*\mathcal{L}_\psi\right)[d].
> $$
> 该定义采用将维数移位 $[d]$ 纳入变换的归一化。

<!-- geometric_fourier_trace_compatibility -->
> [!Theorem]
> **Frobenius 迹与有限 Fourier 变换 Trace Compatibility**：对带 Weil 结构的构造性复形 $\mathcal{F}$，有
> $$
> t_{\operatorname{Four}_\psi(\mathcal{F})}(\xi)
> =(-1)^d\sum_{x\in V(\mathbb{F}_q)}
> t_{\mathcal{F}}(x)\psi(\langle x,\xi\rangle).
> $$
> 因而除由移位造成的符号外，Fourier--Deligne 变换在迹函数层面就是未归一化的有限 Fourier 变换。
>
> **证明思路**：对 $p_2$ 的纤维使用紧支撑推前的迹公式；核层在 $(x,\xi)$ 处的迹为 $\psi(\langle x,\xi\rangle)$，而 $[d]$ 产生 $(-1)^d$。

<!-- geometric_fourier_deligne_inversion -->
> [!Theorem]
> **Fourier--Deligne 反演 Fourier--Deligne Inversion**：在上述归一化下，存在规范同构
> $$
> \operatorname{Four}_{\psi^{-1}}\circ\operatorname{Four}_\psi(\mathcal{F})
> \simeq[-1]^*\mathcal{F}(-d),
> $$
> 其中 $[-1]:V\to V$ 是 $x\mapsto-x$，$( -d)$ 是 Tate 扭曲。等价表述随是否在定义中加入 Tate 扭曲而改变。
>
> **证明思路**：复合变换的核由中间变量上的加法角色正交性简化为 $x+y=0$ 所支撑的核；该核实现负号拉回，其紧支撑上同调给出 Tate 扭曲。

<!-- geometric_local_fourier_transform_concept -->
> [!Concept]
> **局部 Fourier 变换 Local Fourier Transform**：Fourier--Deligne 变换还诱导奇点附近的局部变换，比较层在 $0$ 与 $\infty$ 处的斜率和野分歧。它是研究指数和、Airy 型层与局部单值群的几何工具。

> **来源**：Pierre Deligne, "Sommes trigonometriques"；Gerard Laumon, "Transformation de Fourier, constantes d'equations fonctionnelles et conjecture de Weil", *Publications Mathematiques de l'IHES* 65 (1987)。
