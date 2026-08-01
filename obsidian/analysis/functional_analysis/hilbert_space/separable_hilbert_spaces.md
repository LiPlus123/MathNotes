# 可分 Hilbert 空间与正交基

<!-- functional_analysis_separable_hilbert_characterization -->
> [!Theorem]
> **可分 Hilbert 空间的特征 Characterization of Separable Hilbert Spaces**：Hilbert 空间 $H$ 可分，当且仅当 $H$ 存在可数完备标准正交系。
>
> **证明思路**：可数完备标准正交系的有理系数有限线性组合构成可数稠密集。反之，从可数稠密集递归选取不属于此前张成空间的向量并作 Gram-Schmidt 正交化，得到可数完备标准正交系。

<!-- functional_analysis_gram_schmidt_orthogonalization -->
> [!Theorem]
> **Gram-Schmidt 正交化 Gram-Schmidt Orthogonalization**：设 $(v_n)_{n\geq1}$ 是 Hilbert 空间中的线性无关序列。递推定义
> $$
> u_1=v_1,
> \qquad
> u_n=v_n-\sum_{k=1}^{n-1}\langle e_k,v_n\rangle e_k,
> \qquad
> e_n=\frac{u_n}{\|u_n\|},
> $$
> 则 $(e_n)$ 是标准正交系，且对每个 $n$，
> $$
> \operatorname{span}\{e_1,\ldots,e_n\}
> =\operatorname{span}\{v_1,\ldots,v_n\}.
> $$
>
> **证明思路**：归纳验证 $u_n$ 与此前的 $e_k$ 正交；线性无关性保证 $u_n\ne0$。张成空间相等由递推定义的双向线性表示得到。

<!-- functional_analysis_l2_universal_separable_hilbert -->
> [!Theorem]
> **$\ell^2$ 的万有性 Universality of $\ell^2$ for Separable Hilbert Spaces**：每个无限维可分 Hilbert 空间都与 $\ell^2$ 等距同构；有限维 $n$ 维 Hilbert 空间与 $\mathbb{F}^n$ 等距同构。
>
> **证明思路**：取可数完备标准正交系 $(e_n)$，定义 $U:H\to\ell^2$ 为 $Ux=(\langle e_n,x\rangle)_n$。Parseval 等式给出 $U$ 等距，正交展开给出满射。

<!-- functional_analysis_hilbert_space_l2_lambda_classification -->
> [!Theorem]
> **Hilbert 空间的 $\ell^2(\Lambda)$ 分类 Classification of Hilbert Spaces by $\ell^2(\Lambda)$**：任意 Hilbert 空间 $H$ 都存在集合 $\Lambda$，使得
> $$
> H\cong_{\mathrm{iso}}\ell^2(\Lambda).
> $$
> 其中 $\Lambda$ 可取为 $H$ 的任一完备标准正交系的指标集；两个 Hilbert 空间等距同构当且仅当它们的 Hilbert 维数（完备标准正交系的基数）相同。
>
> **证明思路**：由 Zorn 引理存在极大标准正交系，极大性蕴含完备性。将 $x$ 映到其关于该系的 Fourier 系数族；广义 Parseval 等式表明此映射是到 $\ell^2(\Lambda)$ 的等距同构。