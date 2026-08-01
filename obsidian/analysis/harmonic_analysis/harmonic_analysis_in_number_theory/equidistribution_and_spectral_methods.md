# 均匀分布与谱方法

## Fourier 判别、谱隙与量子极限

<!-- number_theory_weyl_criterion_theorem -->
> [!Theorem]
> **Weyl 均匀分布判别法 Weyl Criterion**：实数列 $\{x_n\}$ 在 $\mathbb{T}$ 上均匀分布，当且仅当对每个非零整数 $h$，
> $$
> \lim_{N\to\infty}\frac1N\sum_{n=1}^Ne^{2\pi i h x_n}=0.
> $$
>
> **证明思路**：三角多项式在连续函数中一致稠密。非零 Fourier 系数的 Cesaro 平均消失等价于经验测度对所有三角多项式收敛到 Haar 测度。

<!-- number_theory_linnik_method_concept -->
> [!Concept]
> **Linnik 的遍历方法 Linnik's Ergodic Method**：在二次型表示与算术点均匀分布问题中，Linnik 方法利用整数格点上可交换的 Hecke 对应产生高熵或有效混合，从而将局部算术条件转化为轨道的均匀分布。

<!-- number_theory_expander_spectral_gap_definition -->
> [!Definition]
> **谱隙与扩展图 Spectral Gap and Expander Graphs**：对有限正则图的归一化邻接算子，常数函数以外谱的绝对值若一致小于 $1$，则图族具有谱隙并构成扩展图。由 Hecke 算子构造的 Ramanujan 图将此谱性质与自守形式的特征值联系。

<!-- number_theory_lps_theorem -->
> [!Theorem]
> **Lubotzky--Phillips--Sarnak 构造 Lubotzky--Phillips--Sarnak Construction**：对适当素数参数，LPS 构造给出无穷族正则 Ramanujan 图；其非平凡邻接特征值满足 Ramanujan 界，从而具有最优级别的谱隙。
>
> **证明思路**：将图的邻接算子识别为四元数代数相关商上的 Hecke 算子，并由模形式或自守表示的 Hecke 特征值界控制谱。

<!-- number_theory_quantum_ergodicity_theorem -->
> [!Theorem]
> **量子遍历性 Quantum Ergodicity**：设紧致 Riemann 流形的测地流遍历。则 Laplace 特征函数存在密度为一的子列，其 Wigner 分布弱收敛到余切单位球面束上的 Liouville 测度。
>
> **证明思路**：Egrov 定理将可观测量的共轭传播对应于测地流；局部 Weyl 定律给出平均极限，遍历性使量子方差沿密度为一子列消失。

> **来源**：Hermann Weyl, "Uber die Gleichverteilung von Zahlen mod. Eins"；Peter Sarnak, *Some Applications of Modular Forms*；Steve Zelditch, "Quantum Ergodicity of $C^*$ Dynamical Systems"。
