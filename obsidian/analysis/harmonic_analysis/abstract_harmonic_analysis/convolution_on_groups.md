# 群上的卷积

## $L^1(G)$、群 $C^*$-代数与 von Neumann 代数

<!-- abstract_group_convolution_definition -->
> [!Definition]
> **群卷积 Group Convolution**：在带左 Haar 测度 $dx$ 的局部紧群 $G$ 上，对 $f,g\in L^1(G)$，定义
> $$
> (f*g)(x)=\int_Gf(y)g(y^{-1}x)\,dy.
> $$
> 定义在几乎处处意义下成立，并与左平移相容。

<!-- abstract_l1_group_algebra -->
> [!Theorem]
> **群卷积代数 Group Convolution Algebra**：$L^1(G)$ 在卷积和范数下构成 Banach 代数，且
> $$
> \|f*g\|_1\leq\|f\|_1\|g\|_1,
> \qquad (f*g)*h=f*(g*h).
> $$
> 对合由
> $$
> f^*(x)=\Delta_G(x^{-1})\overline{f(x^{-1})}
> $$
> 给出，使 $L^1(G)$ 成为带对合的 Banach 代数。
>
> **证明思路**：Fubini-Tonelli 定理和左 Haar 测度的不变性给出 Young 型范数估计及结合律。对合公式由求逆变换公式保证与卷积相容。

<!-- abstract_left_regular_representation -->
> [!Definition]
> **左正则表示 Left Regular Representation**：对 $g\in G$，定义 $L^2(G)$ 上的酉算子
> $$
> (\lambda_G(g)u)(x)=u(g^{-1}x).
> $$
> 对 $f\in L^1(G)$，积分形式
> $$
> \lambda_G(f)=\int_Gf(g)\lambda_G(g)\,dg
> $$
> 是 $L^2(G)$ 上的有界卷积算子。

<!-- abstract_group_cstar_algebra_definition -->
> [!Definition]
> **群 $C^*$-代数 Group $C^*$-Algebra**：全群 $C^*$-代数 $C^*(G)$ 是 $L^1(G)$ 相对于所有连续酉表示给出的最大 $C^*$ 范数的完备化；约化群 $C^*$-代数 $C_r^*(G)$ 是相对于左正则表示范数 $\|\lambda_G(f)\|$ 的完备化。

<!-- abstract_group_von_neumann_algebra_definition -->
> [!Definition]
> **群 von Neumann 代数 Group von Neumann Algebra**：群 von Neumann 代数定义为
> $$
> \operatorname{VN}(G)=\{\lambda_G(g):g\in G\}'',
> $$
> 即左正则表示所生成算子代数的双交换子，等价地是 $C_r^*(G)$ 在弱算子拓扑下的闭包。

<!-- abstract_abelian_group_algebra_example -->
> [!Example]+
> **Abel 群情形 Abelian Case**：当 $G$ 为 LCA 群时，Fourier 变换把群卷积化为对偶群 $\widehat G$ 上的点乘，并给出
> $$
> C^*(G)\cong C_0(\widehat G).
> $$
> 这说明非交换群代数是经典 Fourier 乘子代数的自然推广。

> **来源**：Gerald B. Folland, *A Course in Abstract Harmonic Analysis*, Chapters 2--3；Jacques Dixmier, *C*-Algebras*。
