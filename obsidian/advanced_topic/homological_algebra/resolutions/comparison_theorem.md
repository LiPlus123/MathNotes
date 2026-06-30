# 比较定理

## 投射分解的比较定理

<!-- comparison_theorem_projective -->
> [!Theorem]
> **比较定理（投射分解）Comparison Theorem (Projective Resolutions)**：设 $u: M \to N$ 是左 $R$-模同态，
> $$
> P_\bullet \xrightarrow{\varepsilon_P} M \to 0, \quad Q_\bullet \xrightarrow{\varepsilon_Q} N \to 0
> $$
> 分别是 $M$ 和 $N$ 的投射分解。则：
> 1. 存在链映射 $\phi_\bullet: P_\bullet \to Q_\bullet$，使得下图交换：
> $$
> \varepsilon_Q \circ \phi_0 = u \circ \varepsilon_P;
> $$
> 即 $\phi_\bullet$ 是 $u$ 到分解层面的提升（lift）；
> 2. 任意两个这样的提升 $\phi_\bullet, \psi_\bullet$ 链同伦：
> $$
> \phi_\bullet \simeq \psi_\bullet.
> $$
>
> **证明思路**：
> - **存在性**：归纳构造 $\phi_n$。$n=0$ 时由 $P_0$ 投射、$\varepsilon_Q$ 满得到 $\phi_0$。若已构造到 $n-1$，则由交换性要求 $\phi_{n-1}\partial^P_n$ 落在 $\ker\partial^Q_{n-1}=\mathrm{im}\,\partial^Q_n$，由 $P_n$ 投射可提升得到 $\phi_n$。
> - **同伦唯一性**：对差映射 $\phi_\bullet-\psi_\bullet$ 归纳构造同伦算子 $h_n: P_n\to Q_{n+1}$，满足
> $$
> \phi_n-\psi_n = \partial^Q_{n+1}h_n + h_{n-1}\partial^P_n.
> $$
> 每一步用到 $P_n$ 投射和 $Q_\bullet$ 的正合性。

## 同伦唯一性的同调后果

<!-- comparison_theorem_homology_consequence -->
> [!Corollary]
> **提升在同调上唯一 Homological Uniqueness of Lifts**：在比较定理条件下，若 $u = \mathrm{id}_M$ 且 $P_\bullet, Q_\bullet$ 都是 $M$ 的投射分解，则任意提升 $\phi_\bullet: P_\bullet \to Q_\bullet$ 诱导同调同构，并且在同伦范畴中唯一。特别地，两个投射分解在链同伦意义下等价。
>
> **证明思路**：由比较定理分别构造 $P_\bullet \to Q_\bullet$ 和 $Q_\bullet \to P_\bullet$ 的提升；复合后都是恒等映射的提升，故与恒等链映射同伦，从而互为链同伦逆。

## 入射分解的对偶比较定理

<!-- comparison_theorem_injective_dual -->
> [!Theorem]
> **比较定理（入射分解，对偶版）Comparison Theorem (Injective Resolutions, Dual Form)**：设 $u: M \to N$ 是左 $R$-模同态，
> $$
> 0 \to M \xrightarrow{\eta_I} I^\bullet, \quad 0 \to N \xrightarrow{\eta_J} J^\bullet
> $$
> 分别是 $M$ 和 $N$ 的入射分解。则：
> 1. 存在上链映射 $\Phi^\bullet: I^\bullet \to J^\bullet$，使得 $\Phi^0 \circ \eta_I = \eta_J \circ u$；
> 2. 任意两个这样的上链映射是上链同伦的。
>
> **证明思路**：与投射比较定理对偶。利用 $J^n$ 的入射性，对余核逐步扩张得到 $\Phi^n$；同伦唯一性由对偶归纳构造获得。

## 导出函子构造中的作用

<!-- comparison_theorem_role_in_derived_functors -->
> [!Proposition]
> **比较定理保障导出函子定义良定 Comparison Theorem Ensures Well-defined Derived Functors**：
> - 右正合加性函子 $F$ 的左导出函子 $L_nF$ 用投射分解定义时，比较定理保证"不同投射分解得到同构且自然"；
> - 左正合加性函子 $G$ 的右导出函子 $R^nG$ 用入射分解定义时，对偶比较定理保证同样结论。
>
> **证明思路**：给定两组分解，通过比较定理得到两方向链映射，并由同伦唯一性保证它们在同调上给出互逆同构；自然性由比较定理对模同态的函子性给出。
