# 加权极大函数不等式

## $A_p$ 的极大函数刻画

<!-- weighted_maximal_ap_characterization -->
> [!Theorem]
> **Muckenhoupt 极大函数定理 Muckenhoupt Maximal-Function Theorem**：设 $1<p<+\infty$，则 Hardy-Littlewood 极大算子 $M$ 在 $L^p(w)$ 上有界当且仅当 $w\in A_p$：
> $$
> \|Mf\|_{L^p(w)}\leq C\|f\|_{L^p(w)}.
> $$
>
> **证明思路**：充分性可先在二进格上用加权覆盖论证，后以有限个平移二进格比较。必要性以 $f=w^{-1/(p-1)}\mathbf{1}_Q$ 测试，并将 $Mf$ 在 $Q$ 上的下界代回加权估计，恢复 $A_p$ 条件。

<!-- weighted_a1_weak_type -->
> [!Theorem]
> **$A_1$ 弱型端点 $A_1$ Weak-Type Endpoint**：对权函数 $w$，下列两者等价：
> 1. $w\in A_1$；
> 2. 存在 $C$，使所有 $f\in L^1(w)$ 及 $\lambda>0$ 满足
> $$
> w(\{x:Mf(x)>\lambda\})
> \leq\frac{C}{\lambda}\int_{\mathbb{R}^n}|f(x)|w(x)\,dx.
> $$
>
> **证明思路**：对超水平集采用 Vitali 覆盖。$A_1$ 条件将每个选中球上的 $w$-质量控制为其本质下确界乘以体积，从而与 $f$ 的加权积分比较；逆向仍以立方体上的测试函数得到 $Mw\lesssim w$。

<!-- buckley_maximal_estimate -->
> [!Theorem]
> **Buckley 定量估计 Buckley Estimate**：若 $1<p<+\infty$ 且 $w\in A_p$，则
> $$
> \|M\|_{L^p(w)\to L^p(w)}
> \leq C_{n,p}[w]_{A_p}^{1/(p-1)}.
> $$
> 特征常数的指数 $1/(p-1)$ 在一般情形是尖锐的。
>
> **证明思路**：以加权弱型估计配合分布函数积分，或应用稀疏控制。幂权模型展示特征常数的该幂次不能整体降低。

<!-- weighted_dyadic_sparse_control -->
> [!Theorem]
> **二进极大函数与稀疏控制 Dyadic Maximal and Sparse Control**：对任意紧支撑函数 $f$，可在有限个平移二进格中选取稀疏族 $\mathcal{S}$，使
> $$
> Mf(x)\leq C_n\sum_{Q\in\mathcal{S}}\langle|f|\rangle_Q\mathbf{1}_Q(x)
> $$
> 几乎处处成立。该正稀疏算子可直接接受 $A_p$ 权估计。
>
> **证明思路**：对二进极大函数逐层选取平均值显著增大的极大子方体；未被子方体覆盖的部分占父方体的固定正比例，从而形成稀疏族。再用有限平移格支配非中心极大函数。

> **来源**：Benjamin Muckenhoupt, "Weighted Norm Inequalities for the Hardy Maximal Function", *Transactions of the American Mathematical Society* 165 (1972)；Stephen M. Buckley, "Estimates for Operator Norms on Weighted Spaces and Reverse Jensen Inequalities", *Transactions of the American Mathematical Society* 340 (1993)。
