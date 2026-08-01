# LCA 群上的 Plancherel 定理

## Fourier 变换、正定函数与 Tauberian 原理

<!-- abstract_lca_plancherel_theorem -->
> [!Theorem]
> **LCA 群上的 Plancherel 定理 Plancherel Theorem for LCA Groups**：可选择对偶群 $\widehat G$ 上的 Haar 测度 $d\gamma$，使得 Fourier 变换初始定义在 $L^1(G)\cap L^2(G)$ 上，并唯一延拓为酉同构
> $$
> \mathcal{F}:L^2(G,dx)\longrightarrow L^2(\widehat G,d\gamma).
> $$
> 因而
> $$
> \|f\|_{L^2(G)}=\|\widehat f\|_{L^2(\widehat G)}.
> $$
> 此对偶 Haar 测度称为与 $dx$ 对偶的 Plancherel 测度。
>
> **证明思路**：先对 $L^1\cap L^2$ 函数建立 Parseval 恒等式，再用稠密性延拓为等距映射；通过 Fourier 变换像的稠密性验证满射。

<!-- abstract_lca_fourier_inversion -->
> [!Theorem]
> **LCA 群上的 Fourier 反演 Fourier Inversion on LCA Groups**：若 $f\in L^1(G)$ 且 $\widehat f\in L^1(\widehat G)$，则几乎处处有
> $$
> f(x)=\int_{\widehat G}\widehat f(\gamma)\gamma(x)\,d\gamma.
> $$
> 在连续代表元存在时，上式逐点成立。
>
> **证明思路**：使用对偶群上的逼近恒等式和 Pontryagin 对偶，将双重 Fourier 变换识别为原函数；$L^1$ 条件保证积分的绝对收敛。

<!-- abstract_bochners_theorem -->
> [!Theorem]
> **Bochner 定理 Bochner's Theorem**：LCA 群 $G$ 上连续正定函数 $\varphi$ 当且仅当存在唯一有限正 Radon 测度 $\mu$ 于 $\widehat G$，使
> $$
> \varphi(x)=\int_{\widehat G}\gamma(x)\,d\mu(\gamma).
> $$
> 因此正定函数正是对偶群上正测度的 Fourier-Stieltjes 变换。
>
> **证明思路**：充分性由积分保正定性立即得到。必要性先将 $\varphi$ 视为群卷积代数上的正泛函，再经 Gelfand 表示和 Riesz 表示定理获得测度。

<!-- abstract_wiener_algebra_definition -->
> [!Definition]
> **Wiener 代数 Wiener Algebra**：对 LCA 群 $G$，Fourier 代数的初等 Abel 版本可记为
> $$
> A(G)=\mathcal{F}(L^1(\widehat G)),
> $$
> 并赋予范数 $\|\mathcal{F}h\|_{A(G)}=\|h\|_{L^1(\widehat G)}$。当 $G=\mathbb{T}$ 时，这对应绝对收敛 Fourier 级数构成的 Wiener 代数。

<!-- abstract_wiener_tauberian_theorem -->
> [!Theorem]
> **Wiener Tauberian 定理 Wiener Tauberian Theorem**：设 $f\in L^1(\mathbb{R})$。由 $f$ 的平移所张成的闭子空间等于 $L^1(\mathbb{R})$，当且仅当
> $$
> \widehat f(\xi)\ne0\qquad(\xi\in\mathbb{R}).
> $$
> 更一般的 LCA 版本以对偶群上 Fourier 变换的零集刻画由平移生成的闭理想。
>
> **证明思路**：若 Fourier 变换有零点，可用相应特征标构造湮没泛函。反向方向利用 $L^1(G)$ 的闭理想与其 Fourier 零集之间的对应关系。

> **来源**：Walter Rudin, *Fourier Analysis on Groups*, Chapters 1--4；Yitzhak Katznelson, *An Introduction to Harmonic Analysis*。
