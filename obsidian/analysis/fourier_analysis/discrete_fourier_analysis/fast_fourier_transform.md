# 快速傅里叶变换

## Cooley-Tukey 算法

<!-- radix_two_fft_decomposition -->
> [!Theorem]
> **基二 Cooley-Tukey 分解 Radix-2 Cooley-Tukey Decomposition**：设 $N=2M$，并令
> $$
> E(r)=\sum_{m=0}^{M-1}x_{2m}\omega_M^{mr},
> \qquad
> O(r)=\sum_{m=0}^{M-1}x_{2m+1}\omega_M^{mr}.
> $$
> 则 $N$ 点 DFT 满足
> $$
> \begin{align*}
> \widehat x(r)&=E(r)+\omega_N^rO(r),\\
> \widehat x(r+M)&=E(r)-\omega_N^rO(r),
> \end{align*}
> \qquad r=0,\ldots,M-1.
> $$
>
> **证明思路**：将 DFT 按输入下标的奇偶性分成两部分，使用 $\omega_N^{2} =\omega_M$。对于频率 $r+M$，再利用 $\omega_N^M=-1$ 即得第二式。

<!-- radix_two_fft_algorithm -->
> [!Definition]
> **基二快速 Fourier 变换 Radix-2 Fast Fourier Transform**：当 $N=2^q$ 时，递归地对偶数下标子列与奇数下标子列计算 $N/2$ 点 DFT，再按 Cooley-Tukey 分解合并结果的算法，称为基二快速 Fourier 变换，简称 FFT。

<!-- fft_complexity_theorem -->
> [!Theorem]
> **FFT 的复杂度 Complexity of the FFT**：基二 FFT 计算 $N=2^q$ 点 DFT 所需的复数算术运算次数为
> $$
> O(N\log_2N).
> $$
> 相比之下，直接根据定义计算需要 $O(N^2)$ 次运算。
>
> **证明思路**：设 $T(N)$ 为运算次数。每层递归将问题分成两个规模为 $N/2$ 的子问题，合并需 $O(N)$ 次蝶形运算，因此 $T(N)=2T(N/2)+O(N)$；递归树有 $\log_2N$ 层。

<!-- fft_butterfly_definition -->
> [!Definition]
> **蝶形运算 Butterfly Operation**：对 $a,b\in\mathbb{C}$ 及旋转因子 $w\in\mathbb{C}$，FFT 的基本合并步骤是
> $$
> (a,b)\longmapsto(a+wb,a-wb).
> $$
> 该步骤同时产生一对相差 $N/2$ 的频率分量。

## FFT 的应用

<!-- fft_circular_convolution_application -->
> [!Theorem]
> **用 FFT 计算循环卷积 Circular Convolution via FFT**：对 $x,y\in\mathbb{C}^N$，定义循环卷积
> $$
> (x*_{N}y)_j=\sum_{m=0}^{N-1}x_m y_{j-m}.
> $$
> 则
> $$
> \widehat{x*_{N}y}(k)=\widehat x(k)\widehat y(k).
> $$
> 因此，可用两次 FFT、逐点相乘及一次逆 FFT 在 $O(N\log N)$ 时间内计算循环卷积。
>
> **证明思路**：将循环卷积代入 DFT，交换有限求和次序，并以指标替换将双重和分解为两个 DFT 之积。

<!-- fft_polynomial_multiplication_application -->
> [!Corollary]
> **多项式乘法 Polynomial Multiplication**：设 $p,q$ 分别为次数小于 $r,s$ 的多项式。取 $N\geq r+s-1$ 为合适的二的幂，将系数列零填充到长度 $N$，则可借助 FFT 在 $O(N\log N)$ 次复数运算内求得 $pq$ 的系数。
>
> **证明思路**：多项式乘法的系数是线性卷积；零填充至长度至少 $r+s-1$ 后，循环卷积不发生回绕，故可由上一结论计算。

> **来源**：James W. Cooley and John W. Tukey, "An Algorithm for the Machine Calculation of Complex Fourier Series", *Mathematics of Computation* 19 (1965)；Thomas H. Cormen et al., *Introduction to Algorithms*, 4th ed., Chapter 30。