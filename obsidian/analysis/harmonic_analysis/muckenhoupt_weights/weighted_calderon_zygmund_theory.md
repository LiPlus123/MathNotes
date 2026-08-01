# 加权 Calderón-Zygmund 理论

## 加权有界性与尖锐估计

<!-- weighted_cz_boundedness -->
> [!Theorem]
> **加权 Calderón-Zygmund 有界性 Weighted Calderón-Zygmund Boundedness**：设 $T$ 为 $L^2(\mathbb{R}^n)$ 有界的标准 Calderón-Zygmund 算子。若 $1<p<+\infty$ 且 $w\in A_p$，则
> $$
> \|Tf\|_{L^p(w)}\leq C_{T,n,p,[w]_{A_p}}\|f\|_{L^p(w)}.
> $$
> 特别地，Hilbert 变换与 Riesz 变换在每个 $L^p(w)$、$w\in A_p$ 上有界。
>
> **证明思路**：可由 Rubio de Francia 外推将一个指数处的加权估计推广到所有 $p$，或先建立 $T$ 的稀疏支配，再直接估计正稀疏算子。

<!-- coifman_fefferman_inequality -->
> [!Theorem]
> **Coifman-Fefferman 不等式 Coifman-Fefferman Inequality**：设 $0<p<+\infty$、$w\in A_\infty$，且 $T$ 为 Calderón-Zygmund 算子，则
> $$
> \|Tf\|_{L^p(w)}\leq C\|M^\#f\|_{L^p(w)},
> $$
> 其中 $M^\#$ 是尖锐极大函数。它将奇异积分的加权估计归约为局部平均振荡的估计。
>
> **证明思路**：使用局部良 $\lambda$ 不等式比较 $|Tf|$ 的超水平集与 $M^\#f$、$Mf$ 的超水平集，再利用 $A_\infty$ 权对小 Lebesgue 测度集合的定量控制进行迭代。

<!-- a2_theorem -->
> [!Theorem]
> **$A_2$ 定理 $A_2$ Theorem**：若 $T$ 为标准 Calderón-Zygmund 算子，则对每个 $w\in A_2$，
> $$
> \|T\|_{L^2(w)\to L^2(w)}
> \leq C_{T,n}[w]_{A_2}.
> $$
> 特征常数的线性依赖是尖锐的。
>
> **证明思路**：Hytönen 表示定理将 $T$ 表为二进移位算子和抛物平均算子的加权平均；这些模型算子具有线性 $A_2$ 控制，随后通过表示积分传递给 $T$。亦可由稀疏支配与尖锐加权嵌入定理得到。

<!-- hytonen_representation_role -->
> [!Theorem]
> **Hytönen 表示定理的角色 Role of Hytönen Representation**：在适当随机二进格的平均意义下，一个标准 Calderón-Zygmund 算子可分解为具有指数衰减系数的二进移位算子与抛物平均算子的级数。该表示将连续核的光滑性转化为离散模型的复杂度衰减。
>
> **证明思路**：在随机二进 Haar 基下展开双线性型 $\langle Tf,g\rangle$；按两个 Haar 函数立方体的相对尺度、距离和嵌套关系分类，核的 Hölder 正则性产生复杂度衰减。

> **来源**：Michael T. Lacey, "An Elementary Proof of the $A_2$ Bound", *Israel Journal of Mathematics* 217 (2017)；Tuomas Hytönen, "The Sharp Weighted Bound for General Calderón-Zygmund Operators", *Annals of Mathematics* 175 (2012)。
