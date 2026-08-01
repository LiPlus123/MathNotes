# 小波与函数空间

设 $(\psi_{j,k})_{j,k\in\mathbb{Z}}$ 是具有足够正则性和消失矩的正交小波基，且 $c_{j,k}=\langle f,\psi_{j,k}\rangle$。

## 小波系数刻画

<!-- wavelet_sobolev_characterization -->
> [!Theorem]
> **Sobolev 空间的小波刻画 Wavelet Characterization of Sobolev Spaces**：若小波正则性足够高，则对 $s$ 落在其允许范围内，
> $$
> \|f\|_{H^s(\mathbb{R})}^2
> \asymp \|P_0f\|_2^2+\sum_{j\geq0}\sum_{k\in\mathbb{Z}}2^{2js}|c_{j,k}|^2.
> $$
> 其中 $P_0$ 是到粗尺度空间的正交投影。
>
> **证明思路**：尺度 $j$ 的小波局部化在频率约 $2^j$ 的带内，故 Sobolev 权 $(1+|\xi|^2)^s$ 在该频带上与 $2^{2js}$ 可比；再使用近似正交性。

<!-- wavelet_besov_characterization -->
> [!Theorem]
> **Besov 空间的小波刻画 Wavelet Characterization of Besov Spaces**：在相应正则性条件下，$f\in B^s_{p,q}(\mathbb{R})$ 当且仅当其尺度系数与小波系数满足
> $$
> \|P_0f\|_p+
> \left(\sum_{j\geq0}\left(2^{j(s+1/2-1/p)}
> \|(c_{j,k})_k\|_{\ell^p}\right)^q\right)^{1/q}<+\infty,
> $$
> 并以 $q=+\infty$ 时的上确界替代外层和。
>
> **证明思路**：小波系数衡量各二进尺度的局部振荡；使用具有消失矩的小波将有限差分定义与二进频带分解相互比较。

<!-- wavelet_triebel_lizorkin_characterization -->
> [!Theorem]
> **Triebel-Lizorkin 空间的小波刻画 Wavelet Characterization of Triebel-Lizorkin Spaces**：在相应参数范围和小波条件下，$f\in F^s_{p,q}(\mathbb{R})$ 当且仅当
> $$
> \left\|
> \left(\sum_{j\geq0}\sum_{k\in\mathbb{Z}}
> \left(2^{j(s+1/2)}|c_{j,k}|\mathbf{1}_{[2^{-j}k,2^{-j}(k+1))}\right)^q
> \right)^{1/q}\right\|_p<+\infty,
> $$
> 并加上低频部分。
>
> **证明思路**：将 Littlewood-Paley 平方函数的频率局部化与小波的空间局部化比较；向量值极大函数不等式控制两类范数。

## 原子分解与稀疏逼近

<!-- wavelet_atomic_decomposition -->
> [!Theorem]
> **小波原子分解 Wavelet Atomic Decomposition**：在适当的参数范围内，Besov 与 Triebel-Lizorkin 空间中的每个元素都可表示为按尺度和位置索引的小波原子的收敛级数；其函数空间范数与对应系数序列范数等价。
>
> **证明思路**：分析算子将函数映为小波系数，合成算子将可容许系数序列映回分布；消失矩和正则性保证二者有界并互为逆。

<!-- best_n_term_wavelet_approximation -->
> [!Theorem]
> **小波的最佳 $N$ 项逼近 Best $N$-Term Wavelet Approximation**：对正交小波基中的 $f\in L^2(\mathbb{R})$，保留绝对值最大的 $N$ 个小波系数所得逼近 $f_N$ 满足
> $$
> \|f-f_N\|_2^2
> =\sum_{(j,k)\notin\Lambda_N}|c_{j,k}|^2,
> $$
> 其中 $\Lambda_N$ 为这 $N$ 个系数的指标集。因此，系数的快速衰减给出稀疏逼近率。
>
> **证明思路**：正交性将误差范数化为舍弃系数平方和；为了最小化该和，只需保留模最大的 $N$ 项。

> **来源**：Hans Triebel, *Theory of Function Spaces II*, Chapters 1--2；Yves Meyer, *Wavelets and Operators*, Chapters VI--VII；Ronald DeVore, "Nonlinear Approximation", *Acta Numerica* 7 (1998)。
