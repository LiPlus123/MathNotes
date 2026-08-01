# Haar 测度

## 不变积分与模函数

<!-- abstract_left_haar_measure_definition -->
> [!Definition]
> **左 Haar 测度 Left Haar Measure**：局部紧群 $G$ 上的非零 Radon 测度 $\mu$ 称为左 Haar 测度，若对每个 $g\in G$ 和 $f\in C_c(G)$，
> $$
> \int_Gf(gx)\,d\mu(x)=\int_Gf(x)\,d\mu(x).
> $$
> 右 Haar 测度相应满足右平移不变性。

<!-- abstract_haar_existence_uniqueness -->
> [!Theorem]
> **Haar 测度存在唯一性定理 Haar Existence and Uniqueness Theorem**：每个局部紧 Hausdorff 群 $G$ 都存在左 Haar 测度；任意两个左 Haar 测度相差一个正的常数倍。
>
> **证明思路**：Weil 的构造先在 $C_c(G)$ 上建立满足平移不变性的正线性泛函，再由 Riesz 表示定理得到 Radon 测度。唯一性以紧支撑函数的卷积比较和左不变性证明。

<!-- abstract_modular_function_definition -->
> [!Definition]
> **模函数 Modular Function**：固定左 Haar 测度 $dx$。存在唯一连续群同态 $\Delta_G:G\to\mathbb{R}_{>0}$，使得对 $f\in C_c(G)$，
> $$
> \int_Gf(xg)\,dx=\Delta_G(g)^{-1}\int_Gf(x)\,dx.
> $$
> 它测量右平移对左 Haar 测度的尺度改变。

<!-- abstract_inversion_formula -->
> [!Proposition]
> **求逆变换公式 Inversion Formula for Haar Measure**：对可积函数 $f$，
> $$
> \int_Gf(x^{-1})\,dx=\int_Gf(x)\Delta_G(x)^{-1}\,dx.
> $$
> 因此 $d\nu(x)=\Delta_G(x^{-1})\,dx$ 是一个右 Haar 测度。
>
> **证明思路**：将左 Haar 测度在求逆映射下推前，验证其右不变性；再根据左右 Haar 测度的相对 Radon-Nikodym 导数得到公式。

<!-- abstract_unimodular_group_definition -->
> [!Definition]
> **幺模群 Unimodular Group**：若 $\Delta_G\equiv1$，则称 $G$ 为幺模群。此时同一 Haar 测度同时左、右不变，且求逆保持该测度。

<!-- abstract_haar_measure_examples -->
> [!Example]+
> **Haar 测度的经典例子 Classical Examples of Haar Measure**：加法群 $\mathbb{R}^n$ 的 Haar 测度是 Lebesgue 测度；紧群 $\mathbb{T}$ 与 $SO(n)$ 可取总质量为 $1$ 的 Haar 概率测度；离散群使用计数测度。$SL_2(\mathbb{R})$ 是非紧幺模群，而阿芬群给出非幺模局部紧群的典型例子。$p$-进域加法群也有唯一到常数的 Haar 测度。

> **来源**：Walter Rudin, *Fourier Analysis on Groups*, Chapter 2；Gerald B. Folland, *A Course in Abstract Harmonic Analysis*, Chapter 2。
