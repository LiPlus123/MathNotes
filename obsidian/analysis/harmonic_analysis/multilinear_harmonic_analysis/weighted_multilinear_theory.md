# 加权多线性理论

## 多向量权与交换子

<!-- multilinear_weight_definition -->
> [!Definition]
> **多线性 $A_{\vec P}$ 权 Multilinear $A_{\vec P}$ Weight**：令 $1<p_i<+\infty$，并令
> $$
> \frac1p=\sum_{i=1}^m\frac1{p_i},
> \qquad
> \nu_{\vec w}=\prod_{i=1}^mw_i^{p/p_i}.
> $$
> 权向量 $\vec w=(w_1,\ldots,w_m)$ 属于 $A_{\vec P}$，若
> $$
> [\vec w]_{A_{\vec P}}
> =\sup_Q\left(\frac1{|Q|}\int_Q\nu_{\vec w}\right)
> \prod_{i=1}^m\left(\frac1{|Q|}\int_Qw_i^{1-p_i'}\right)^{p/p_i'}<+\infty.
> $$
> 当某个 $p_i=1$ 时，相应因子按本质下确界的端点约定解释。

<!-- weighted_multilinear_maximal_theorem -->
> [!Theorem]
> **加权多线性极大函数定理 Weighted Multilinear Maximal Theorem**：对 $1<p_i<+\infty$ 与 $1/p=\sum_i1/p_i$，有
> $$
> \mathcal{M}:L^{p_1}(w_1)\times\cdots\times L^{p_m}(w_m)
> \longrightarrow L^p(\nu_{\vec w})
> $$
> 有界，当且仅当 $\vec w\in A_{\vec P}$。算子范数可用 $[\vec w]_{A_{\vec P}}$ 的适当幂作定量控制。
>
> **证明思路**：必要性由在立方体上取测试函数得到。充分性以稀疏支配或多线性覆盖分解归结为带权 Carleson 嵌入，再使用 $A_{\vec P}$ 条件。

<!-- weighted_multilinear_cz_theorem -->
> [!Theorem]
> **加权多线性奇异积分估计 Weighted Multilinear Singular Integral Estimate**：若 $T$ 是多线性 Calderón-Zygmund 算子、$1<p_i<+\infty$ 且 $\vec w\in A_{\vec P}$，则
> $$
> \|T(f_1,\ldots,f_m)\|_{L^p(\nu_{\vec w})}
> \lesssim C([\vec w]_{A_{\vec P}})
> \prod_{i=1}^m\|f_i\|_{L^{p_i}(w_i)}.
> $$
> 稀疏控制可给出权特征常数依赖的尖锐或近尖锐版本，具体指数随算子和指数范围而变。
>
> **证明思路**：先用多线性稀疏形式支配 $T$，再对稀疏形式应用带权 Hölder 不等式和 $A_{\vec P}$ 条件。

<!-- multilinear_rubio_de_francia_extrapolation -->
> [!Theorem]
> **多线性 Rubio de Francia 外推定理 Multilinear Rubio de Francia Extrapolation**：若一个多线性估计在某组固定指数上对全部 $A_{\vec P}$ 权一致成立，则在满足 Hölder 倒数关系的其余允许指数上也成立；存在适配弱型、Lorentz 空间及向量值版本的外推定理。
>
> **证明思路**：对每个输入构造 Rubio de Francia 迭代，生成受控的 $A_1$ 主权函数；再将待证估计化归为已知指数处的带权估计。

<!-- multilinear_commutator_definition -->
> [!Definition]
> **多线性交换子 Multilinear Commutator**：对 $m$-线性算子 $T$、$b\in\operatorname{BMO}$ 及 $1\leq j\leq m$，第 $j$ 个交换子定义为
> $$
> [b,T]_j(f_1,\ldots,f_m)
> =bT(f_1,\ldots,f_m)-T(f_1,\ldots,bf_j,\ldots,f_m).
> $$
> 它测量 $T$ 与第 $j$ 个输入位置上 BMO 乘法的非交换性。

<!-- bloom_multilinear_commutator_note -->
> [!Theorem]
> **Bloom 型多线性交换子估计 Bloom-Type Multilinear Commutator Estimate**：在双权或多权设定中，交换子的有界性由适配输入、输出权的加权 BMO 空间刻画。不同的权配置会导出不同的 Bloom 权和 BMO 半范数，故一般定理必须明确指定 $T$、指数、权的分配及采用的 BMO 定义。
>
> **证明思路**：以稀疏控制表示交换子，将振荡因子 $b-\langle b\rangle_Q$ 配对到局部平均；加权 John--Nirenberg 不等式控制这些振荡项。

> **来源**：Carlos Pérez, Israel P. Rivera-Ríos, and collaborators 关于多线性加权与交换子的工作；Andrei Lerner, Sheldy Ombrosi, and Carlos Pérez, "$A_1$ Bounds for Calderón-Zygmund Operators Related to a Problem of Muckenhoupt and Wheeden", *Mathematical Research Letters* 10 (2003)，以及后续稀疏支配方法。
