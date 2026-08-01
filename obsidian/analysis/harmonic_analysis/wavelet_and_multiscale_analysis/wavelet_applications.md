# 小波应用

## 去噪与压缩

<!-- wavelet_soft_thresholding_definition -->
> [!Definition]
> **小波软阈值 Soft Thresholding**：对阈值 $\lambda\geq0$，定义
> $$
> \eta_\lambda(c)=\operatorname{sgn}(c)(|c|-\lambda)_+.
> $$
> 小波软阈值去噪先计算观测信号的小波系数，再对细节系数施加 $\eta_\lambda$，最后重构信号。

<!-- wavelet_threshold_denoising_principle -->
> [!Theorem]
> **小波阈值去噪原理 Wavelet Threshold Denoising Principle**：若观测为 $y=f+\varepsilon$，其中 $\varepsilon$ 是白噪声，且采用正交小波变换，则噪声的小波系数仍为同方差、近似不相关的噪声。因而可通过阈值压缩小系数，同时保留代表局部结构的大系数。
>
> **证明思路**：正交变换保持高斯白噪声的协方差矩阵；具有局部正则性的信号在小波域产生稀疏或近稀疏系数，而噪声系数通常分散。

<!-- wavelet_compression_best_n_term -->
> [!Theorem]
> **小波压缩的最佳 $N$ 项原则 Best $N$-Term Principle for Wavelet Compression**：对正交小波基，保留模最大的 $N$ 个系数并将其余系数置零，得到 $L^2$ 意义下的最佳 $N$ 项小波逼近。该策略解释了小波编码在具有边缘的图像上通常优于固定块余弦编码。
>
> **证明思路**：正交性使重构误差等于舍弃系数的平方和；最小化该和等价于保留最大的 $N$ 项。边缘附近只在少数位置和尺度产生显著系数。

## 边缘与数值方法

<!-- wavelet_edge_detection_definition -->
> [!Definition]
> **基于小波的边缘检测 Wavelet Edge Detection**：选择具有一个或多个消失矩的小波，在细尺度上寻找 $|\langle f,\psi_{j,k}\rangle|$ 的局部极大值链，以定位信号或图像中的突变、轮廓和奇异点。

<!-- wavelet_adaptive_numerical_method -->
> [!Theorem]
> **小波自适应数值方法 Wavelet Adaptive Numerical Method**：对椭圆型或演化型问题，以小波基展开数值解，并依系数大小选择活动指标集，可将计算资源集中于解的奇异区域。若离散算子满足适当的压缩性、稳定性和近似性质，则可得到与最佳 $N$ 项逼近同阶的误差复杂度。
>
> **证明思路**：小波基将局部正则性转化为系数衰减，并使许多微分或积分算子近似稀疏；残量估计驱动细化，稳定性将残量控制转化为解误差控制。

<!-- wavelet_error_estimator_definition -->
> [!Definition]
> **小波误差指示子 Wavelet Error Indicator**：在自适应算法中，常以局部小波系数或离散残量的小波系数的大小作为误差指示子；超过给定容差的尺度-位置指标被细化，其余指标可被舍弃。

<!-- wavelet_denoising_example -->
> [!Example]+
> **一维分段光滑信号去噪 Piecewise-Smooth Signal Denoising**：对含加性白噪声的分段光滑信号，选取具有若干消失矩的紧支撑小波并对细尺度系数作软阈值处理。平滑区的噪声系数大多被压缩，而跳跃点附近跨尺度持续存在的大系数得到保留，从而在降噪的同时保持边缘。
>
> **证明思路**：平滑部分的消失矩导致系数随尺度快速衰减；跳跃破坏该消去机制，故其邻域的细尺度系数显著。

> **来源**：David L. Donoho and Iain M. Johnstone, "Ideal Spatial Adaptation by Wavelet Shrinkage", *Biometrika* 81 (1994)；Stéphane Mallat, *A Wavelet Tour of Signal Processing*, 3rd ed., Chapters 9--10；Albert Cohen, *Numerical Analysis of Wavelet Methods*, Chapters 1--3。
