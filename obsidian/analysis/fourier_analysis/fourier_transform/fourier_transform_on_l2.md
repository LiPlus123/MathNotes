# $L^2$ 上的 Fourier 变换

## Plancherel 定理

<!-- plancherel_theorem -->
> [!Theorem]
> **Plancherel 定理 Plancherel Theorem**：Fourier 变换作为 $L^1(\mathbb{R}^n)\cap L^2(\mathbb{R}^n)$ 上的算子，唯一地延拓为 $L^2(\mathbb{R}^n)$ 上的线性等距同构 $\mathcal{F}$，并满足
> $$
> \|\mathcal{F}f\|_2=\|f\|_2,
> \qquad f\in L^2(\mathbb{R}^n).
> $$
>
> **证明思路**：先在 Schwartz 函数上由反演公式和 Fubini 定理证明等距性，再利用 Schwartz 空间在 $L^2$ 中的稠密性，将等距算子唯一连续延拓到全体 $L^2$。

<!-- parseval_identity_euclidean -->
> [!Theorem]
> **Parseval 恒等式 Parseval Identity**：对任意 $f,g\in L^2(\mathbb{R}^n)$，有
> $$
> \int_{\mathbb{R}^n}f(x)\overline{g(x)}\,dx
> =\int_{\mathbb{R}^n}\widehat f(\xi)\overline{\widehat g(\xi)}\,d\xi.
> $$
>
> **证明思路**：先由 Plancherel 等距性与极化恒等式在稠密子空间上得到内积保持，再以连续性延拓到 $L^2$。

<!-- fourier_transform_unitary -->
> [!Corollary]
> **$L^2$ Fourier 变换的酉性 Unitarity on $L^2$**：$\mathcal{F}:L^2(\mathbb{R}^n)\to L^2(\mathbb{R}^n)$ 是酉算子，其逆算子为
> $$
> \mathcal{F}^{-1}f(x)=\widehat f(-x)
> $$
> （作为 $L^2$ 等价类之间的等式）。
>
> **证明思路**：Plancherel 定理给出等距性，Fourier 对偶性先在 Schwartz 空间上成立，并由稠密性延拓；因此该等距算子满射且逆由反射后的 Fourier 变换给出。

> **注**：对一般 $L^2$ 函数，Fourier 变换按 $L^2$ 极限定义，不必由绝对收敛积分逐点给出。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 1；Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Chapter 8。