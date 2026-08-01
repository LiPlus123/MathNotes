# 带号测度

## 带号测度与 Hahn 分解

<!-- signed_measure_definition -->
> [!Definition]
> **带号测度 Signed Measure**：设 $(X,\mathcal{A})$ 为可测空间。映射
> $$
> \nu:\mathcal{A}\to[-\infty,+\infty]
> $$
> 称为带号测度，若满足：
> 1. $\nu(\varnothing)=0$；
> 2. $\nu$ 不同时取值 $+\infty$ 与 $-\infty$；
> 3. 对任意两两不交的可测集列 $\{E_n\}_{n\geq1}$，有
> $$
> \nu\left(\bigcup_{n=1}^{\infty}E_n\right)=\sum_{n=1}^{\infty}\nu(E_n),
> $$
> 其中右侧级数按扩展实数意义收敛。
>
> 若 $\nu$ 只取非负值，则它就是通常的正测度。

<!-- positive_negative_set_definition -->
> [!Definition]
> **正集与负集 Positive and Negative Sets**：设 $\nu$ 是带号测度。若 $P\in\mathcal{A}$ 满足对每个可测集 $E\subseteq P$ 均有 $\nu(E)\geq0$，则称 $P$ 为 $\nu$ 的正集。若 $N\in\mathcal{A}$ 满足对每个可测集 $E\subseteq N$ 均有 $\nu(E)\leq0$，则称 $N$ 为 $\nu$ 的负集。

<!-- hahn_decomposition_theorem -->
> [!Theorem]
> **Hahn 分解定理 Hahn Decomposition Theorem**：设 $\nu$ 是 $(X,\mathcal{A})$ 上的带号测度。则存在一对可测集 $(P,N)$，使得
> $$
> P\cap N=\varnothing,
> \qquad
> P\cup N=X,
> $$
> 且 $P$ 是正集、$N$ 是负集。这样的 $(P,N)$ 称为 $\nu$ 的 Hahn 分解；任意两个 Hahn 分解至多相差一个 $\nu$-零测集。
>
> **证明思路**：先令正集的测度上确界逼近其最大可能值，取一列近似极大的正集之并得到正集 $P$；证明其补集若含有正测度子集则可增大该上确界，从而补集必为负集。唯一性由两个正部分和负部分的交集同时具有非负、非正测度得出。

## Jordan 分解与全变差

<!-- jordan_decomposition_signed_measure -->
> [!Theorem]
> **Jordan 分解定理 Jordan Decomposition Theorem**：设 $\nu$ 是带号测度。则存在唯一的一对互相奇异的正测度 $\nu^+$ 与 $\nu^-$，使得
> $$
> \nu=\nu^+-\nu^-.
> $$
> 若 $(P,N)$ 是一个 Hahn 分解，则可取
> $$
> \nu^+(E)=\nu(E\cap P),
> \qquad
> \nu^-(E)=-\nu(E\cap N)
> $$
> 对所有 $E\in\mathcal{A}$ 成立。
>
> **证明思路**：Hahn 分解使上述两个量非负，并由可数可加性成为测度；按 $E=(E\cap P)\cup(E\cap N)$ 分解即得 $\nu=\nu^+-\nu^-$。若还有另一对互相奇异的正测度给出该差，比较它们在正、负集上的限制即可推出唯一性。

<!-- total_variation_of_signed_measure_definition -->
> [!Definition]
> **带号测度的全变差 Total Variation of a Signed Measure**：带号测度 $\nu$ 的全变差测度定义为
> $$
> |\nu|=\nu^++\nu^-.
> $$
> 等价地，对每个 $E\in\mathcal{A}$，
> $$
> |\nu|(E)=\sup\left\{\sum_{i=1}^{n}|\nu(E_i)|:E=\bigsqcup_{i=1}^{n}E_i,\ E_i\in\mathcal{A}\right\}.
> $$

<!-- signed_measure_integration_formula -->
> [!Proposition]
> **带号测度的积分公式 Integration with Respect to a Signed Measure**：若 $f$ 是 $|\nu|$-可积实值函数，则定义
> $$
> \int_Xf\,d\nu=\int_Xf\,d\nu^+-\int_Xf\,d\nu^-,
> $$
> 并有
> $$
> \left|\int_Xf\,d\nu\right|\leq\int_X|f|\,d|\nu|.
> $$
>
> **证明思路**：$|\nu|$-可积保证两项右侧积分均有限。绝对值不等式由两项积分的三角不等式以及 $\nu^+,\nu^-\leq|\nu|$ 得到。

<!-- signed_measure_example -->
> [!Example]+
> **两个正测度之差 Difference of Two Positive Measures**：若 $\mu_1,\mu_2$ 是正测度，且二者至少一个在 $X$ 上有限，则
> $$
> \nu(E)=\mu_1(E)-\mu_2(E)
> $$
> 定义了带号测度。例如，在 $\mathbb{R}$ 上令
> $$
> \nu(E)=m(E\cap[0,1])-m(E\cap[1,2]),
> $$
> 则 $[0,1)$ 是正集，$(1,2]$ 是负集。

> **注**：本小节参见 Donald L. Cohn, *Measure Theory*, 2nd ed., Chapter 6；Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 3.1。
