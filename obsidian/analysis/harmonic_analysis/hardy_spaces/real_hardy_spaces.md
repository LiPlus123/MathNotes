# 实 Hardy 空间

## Poisson 极大函数定义

<!-- real_hardy_poisson_maximal_definition -->
> [!Definition]
> **实 Hardy 空间 Real Hardy Space**：设 $0<p\leq1$，并令 $P_y$ 为上半空间 Poisson 核。对温和分布 $f\in\mathcal{S}'(\mathbb{R}^n)$，定义 Poisson 径向极大函数
> $$
> \mathcal{M}_Pf(x)=\sup_{y>0}|P_y*f(x)|.
> $$
> 若 $\mathcal{M}_Pf\in L^p(\mathbb{R}^n)$，则称 $f\in H^p(\mathbb{R}^n)$，并定义
> $$
> \|f\|_{H^p}=\|\mathcal{M}_Pf\|_p.
> $$

<!-- hardy_nontangential_maximal_definition -->
> [!Definition]
> **非切向 Poisson 极大函数 Nontangential Poisson Maximal Function**：对固定 $a>0$，令
> $$
> \mathcal{N}_{P,a}f(x)=\sup_{\substack{y>0\\|z-x|<ay}}|P_y*f(z)|.
> $$
> 它取遍以 $(x,0)$ 为顶点、孔径 $a$ 的上半空间圆锥，因而比径向极大函数捕捉更稳定的边界逼近。

<!-- hardy_grand_maximal_definition -->
> [!Definition]
> **大极大函数 Grand Maximal Function**：取整数 $N$ 充分大，令
> $$
> \mathcal{F}_N=\left\{\varphi\in\mathcal{S}(\mathbb{R}^n):
> \sup_{|\alpha|,|\beta|\leq N}\sup_x|x^\alpha D^\beta\varphi(x)|\leq1\right\}.
> $$
> 定义
> $$
> \mathcal{M}_Nf(x)=\sup_{\varphi\in\mathcal{F}_N}\sup_{t>0}|\varphi_t*f(x)|,
> \qquad
> \varphi_t(x)=t^{-n}\varphi(x/t).
> $$
> 该定义不依赖于某个特定核，适用于分布。

<!-- hardy_maximal_characterization -->
> [!Theorem]
> **极大函数刻画的等价性 Equivalence of Maximal Characterizations**：对 $0<p\leq1$，当 $N$ 充分大时，下列条件等价：
> $$
> \mathcal{M}_Pf\in L^p,
> \qquad
> \mathcal{N}_{P,a}f\in L^p,
> \qquad
> \mathcal{M}_Nf\in L^p.
> $$
> 相应的 $L^p$ 拟范数两两等价；因此它们定义同一空间 $H^p(\mathbb{R}^n)$。
>
> **证明思路**：核的快速衰减和消去矩给出大极大函数对 Poisson 极大函数的控制；反向以 Poisson 核的平滑性及局部平均控制。非切向锥内值可借助辅助极大函数和 Hardy-Littlewood 极大不等式估计。

<!-- hardy_hp_equals_lp -->
> [!Theorem]
> **$p>1$ 时 $H^p=L^p$ Hardy and Lebesgue Spaces Coincide Above One**：若 $1<p<+\infty$，则
> $$
> H^p(\mathbb{R}^n)=L^p(\mathbb{R}^n)
> $$
> 且 Poisson 极大函数范数与 $L^p$ 范数等价。
>
> **证明思路**：$|P_y*f|\lesssim Mf$ 给出 $L^p\subseteq H^p$。反向由 $P_y*f\to f$ 在温和分布意义及 $L^p$ 弱紧性下恢复 $f\in L^p$，并由极大函数范数控制其 $L^p$ 范数。

> **来源**：Elias M. Stein, *Harmonic Analysis*, Chapter III；J. García-Cuerva and J. L. Rubio de Francia, *Weighted Norm Inequalities and Related Topics*, Chapter VI。
