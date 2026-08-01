# 离散傅里叶变换

## 定义与逆变换

<!-- discrete_fourier_transform_definition -->
> [!Definition]
> **离散 Fourier 变换 Discrete Fourier Transform**：设 $N\geq1$，$x=(x_0,\ldots,x_{N-1})\in\mathbb{C}^N$。$x$ 的离散 Fourier 变换是向量 $\widehat{x}\in\mathbb{C}^N$，其第 $k$ 个分量定义为
> $$
> \widehat{x}(k)=\sum_{j=0}^{N-1}x_j\omega_N^{jk},
> \qquad k=0,\ldots,N-1.
> $$
> 下标均按模 $N$ 理解。

<!-- discrete_exponential_orthogonality -->
> [!Theorem]
> **离散指数函数的正交性 Orthogonality of Discrete Exponentials**：对 $k,\ell\in\{0,\ldots,N-1\}$，有
> $$
> \sum_{j=0}^{N-1}\omega_N^{j(k-\ell)}=N\delta_{k\ell}.
> $$
>
> **证明思路**：当 $k=\ell$ 时，每一项均为 $1$；否则这是公比不为 $1$ 而第 $N$ 次幂为 $1$ 的有限几何级数，故其和为零。

<!-- inverse_discrete_fourier_transform -->
> [!Theorem]
> **离散 Fourier 反变换 Inverse Discrete Fourier Transform**：对每个 $j=0,\ldots,N-1$，有
> $$
> x_j=\frac{1}{N}\sum_{k=0}^{N-1}\widehat{x}(k)\omega_N^{-jk}.
> $$
> 因而离散 Fourier 变换是 $\mathbb{C}^N$ 上的线性同构。
>
> **证明思路**：将 DFT 定义代入右端并交换有限求和次序；离散指数函数的正交性使得除第 $j$ 项外的全部项消失。

## 基本性质

<!-- discrete_fourier_transform_linearity -->
> [!Theorem]
> **线性性 Linearity**：对 $x,y\in\mathbb{C}^N$ 和 $a,b\in\mathbb{C}$，有
> $$
> \widehat{ax+by}=a\widehat{x}+b\widehat{y}.
> $$
>
> **证明思路**：由有限求和的线性性直接得到。

<!-- discrete_fourier_transform_cyclic_shift -->
> [!Theorem]
> **循环平移性质 Cyclic Shift Property**：若 $y_j=x_{j-m}$，其中下标模 $N$ 计算，则
> $$
> \widehat y(k)=\omega_N^{mk}\widehat x(k).
> $$
>
> **证明思路**：在 DFT 的求和中作指标替换 $r=j-m$，并将与 $r$ 无关的因子 $\omega_N^{mk}$ 提出。

<!-- discrete_fourier_transform_modulation -->
> [!Theorem]
> **调制性质 Modulation Property**：若 $y_j=\omega_N^{-mj}x_j$，其中下标模 $N$ 计算，则
> $$
> \widehat y(k)=\widehat x(k-m).
> $$
>
> **证明思路**：将调制因子合并到 DFT 核中，得到指数 $\omega_N^{j(k-m)}$。

<!-- discrete_fourier_transform_parseval -->
> [!Theorem]
> **离散 Parseval 恒等式 Discrete Parseval Identity**：对任意 $x,y\in\mathbb{C}^N$，有
> $$
> \sum_{j=0}^{N-1}x_j\overline{y_j}
> =\frac{1}{N}\sum_{k=0}^{N-1}\widehat x(k)\overline{\widehat y(k)}.
> $$
> 特别地，$\sum_j|x_j|^2=N^{-1}\sum_k|\widehat x(k)|^2$。
>
> **证明思路**：将两个向量用反变换表示，展开后应用离散指数函数的正交性；也可视为归一化 DFT 矩阵为酉矩阵。

> **来源**：Ronald N. Bracewell, *The Fourier Transform and Its Applications*, 3rd ed., Chapter 6；James W. Cooley and John W. Tukey, "An Algorithm for the Machine Calculation of Complex Fourier Series", *Mathematics of Computation* 19 (1965)。