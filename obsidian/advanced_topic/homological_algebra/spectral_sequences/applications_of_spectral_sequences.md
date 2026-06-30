# 谱序列的应用

## Lyndon-Hochschild-Serre 谱序列

<!-- lhs_spectral_sequence_thm -->
> [!Theorem]
> **Lyndon-Hochschild-Serre 谱序列 Lyndon-Hochschild-Serre Spectral Sequence**：设
> $$
> 1\to N\to G\to Q\to 1
> $$
> 是群扩张，$M$ 是 $G$-模，则存在群上同调谱序列
> $$
> E_2^{p,q} \cong H^p(Q, H^q(N,M)) \Longrightarrow H^{p+q}(G,M).
> $$
> 对应的群下同调版本为
> $$
> E^2_{p,q} \cong H_p(Q, H_q(N,M)) \Longrightarrow H_{p+q}(G,M).
> $$
>
> **注**：前面给出的膨胀-限制正合列正是该谱序列低次项的直接产物。

## 万有系数定理作为退化情形

<!-- universal_coefficient_as_degenerate_case -->
> [!Proposition]
> **万有系数定理作为退化情形 Universal Coefficient Theorem as a Degenerate Case**：在适当情形下，某些谱序列在 $E_2$ 页后迅速退化，从而给出熟悉的短正合列。例如对链复形 $C_\bullet$ 与系数模 $A$，由双复形构造的谱序列可退化为万有系数短正合列：
> $$
> 0\to H_n(C)\otimes A \to H_n(C;A) \to \mathrm{Tor}_1(H_{n-1}(C),A)\to 0,
> $$
> 或其上同调版本
> $$
> 0\to \mathrm{Ext}^1(H_{n-1}(C),A) \to H^n(C;A) \to \mathrm{Hom}(H_n(C),A)\to 0.
> $$

## 谱序列的应用模式

<!-- spectral_sequence_application_pattern -->
> [!Definition]
> **谱序列的典型应用模式 Typical Pattern of Using a Spectral Sequence**：谱序列的应用通常遵循以下步骤：
> 1. 选取一个滤过复形或双复形；
> 2. 写出 $E_1$ 或 $E_2$ 页；
> 3. 判断哪些微分因次数原因必为零；
> 4. 识别 $E_\infty$ 页与目标同调之间的关系；
> 5. 必要时解决扩张问题。
>
> **注**：实际计算时，谱序列最常见的价值并非完整算出所有页，而是通过零化与退化迅速锁定目标同调的大部分结构。

## 说明

<!-- spectral_sequence_applications_note -->
> [!Corollary]
> **谱序列在同调代数中的地位 Role of Spectral Sequences in Homological Algebra**：谱序列把滤过、双复形、导出函子与群上同调统一在一个框架内，是从“局部可算信息”过渡到“全局同调信息”的系统工具。