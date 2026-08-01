# Fourier 乘子

## 乘子定理与 Bernstein 不等式

<!-- lp_fourier_multiplier_definition -->
> [!Definition]
> **Fourier 乘子 Fourier Multiplier**：对有界可测函数 $m:\mathbb{R}^n\to\mathbb{C}$，在 Schwartz 函数上定义
> $$
> \widehat{T_mf}(\xi)=m(\xi)\widehat f(\xi).
> $$
> 若 $T_m$ 延拓为 $L^p(\mathbb{R}^n)$ 上的有界算子，则称 $m$ 为 $L^p$ Fourier 乘子。

<!-- lp_multiplier_algebra -->
> [!Proposition]
> **乘子代数 Multiplier Algebra**：对固定 $1\leq p\leq+\infty$，所有 $L^p$ Fourier 乘子构成含幺交换 Banach 代数：若 $m_1,m_2$ 是乘子，则
> $$
> T_{m_1m_2}=T_{m_1}T_{m_2},
> \qquad
> \|T_{m_1m_2}\|_{L^p\to L^p}
> \leq\|T_{m_1}\|\,\|T_{m_2}\|.
> $$
>
> **证明思路**：先在 Schwartz 函数上验证 Fourier 侧乘法对应算子复合，再通过有界延拓得到结论。

<!-- lp_mikhlin_multiplier_theorem -->
> [!Theorem]
> **Mikhlin 乘子定理 Mikhlin Multiplier Theorem**：设 $m\in C^N(\mathbb{R}^n\setminus\{0\})$，其中 $N>n/2$ 是整数。若
> $$
> \sup_{\xi\ne0}|\xi|^{|\alpha|}|D^\alpha m(\xi)|<+\infty
> \qquad(|\alpha|\leq N),
> $$
> 则对每个 $1<p<+\infty$，$T_m$ 在 $L^p(\mathbb{R}^n)$ 上有界。
>
> **证明思路**：将 $m$ 作二进频率分解。各环域上的逆 Fourier 核具有统一的可积控制与尺度衰减，从而满足 Calderón-Zygmund 核估计；再应用奇异积分有界性。

<!-- lp_hormander_mikhlin_multiplier_theorem -->
> [!Theorem]
> **Hörmander-Mikhlin 乘子定理 Hörmander-Mikhlin Multiplier Theorem**：设 $s>n/2$，并取非零环域截断函数 $\eta\in C_c^\infty(\mathbb{R}^n\setminus\{0\})$。若
> $$
> \sup_{t>0}\|\eta(\cdot)m(t\cdot)\|_{H^s(\mathbb{R}^n)}<+\infty,
> $$
> 则 $T_m$ 在所有 $L^p$（$1<p<+\infty$）上有界。该条件以 Sobolev 正则性取代逐点导数界。
>
> **证明思路**：环域 Sobolev 控制经 Fourier 分析给出每个尺度核的统一 Hörmander 光滑性条件；对尺度块求和后应用 Calderón-Zygmund 理论。

<!-- lp_marcinkiewicz_multiplier_theorem -->
> [!Theorem]
> **Marcinkiewicz 乘子定理 Marcinkiewicz Multiplier Theorem**：在一维，若 $m$ 有界，且其在每个二进区间上的总变差一致有界，即
> $$
> \sup_{j\in\mathbb{Z}}\operatorname{Var}_{[2^j,2^{j+1}]}m
> +\operatorname{Var}_{[-2^{j+1},-2^j]}m<+\infty,
> $$
> 则 $m$ 是所有 $1<p<+\infty$ 的 Fourier 乘子。高维版本对每个变量施加相应的二进变差条件。
>
> **证明思路**：将 $m$ 分割到二进区间，在每个区间上以有界变差控制 Fourier 核；随机化或多参数分解将局部估计拼接为全局 $L^p$ 乘子估计。

<!-- lp_bernstein_inequality -->
> [!Theorem]
> **Bernstein 不等式 Bernstein Inequality**：若 $\operatorname{supp}\widehat f\subseteq\{\xi:|\xi|\leq A2^j\}$，则对 $1\leq p\leq q\leq+\infty$ 及多重指标 $\alpha$，
> $$
> \|D^\alpha f\|_q
> \leq C2^{j|\alpha|+jn(1/p-1/q)}\|f\|_p.
> $$
> 若 Fourier 支撑位于半径约为 $2^j$ 的环域，且 $|\alpha|>0$，则
> $$
> \|D^\alpha f\|_p\asymp2^{j|\alpha|}\|f\|_p.
> $$
>
> **证明思路**：将导数视为频率侧乘子 $(2\pi i\xi)^\alpha$，并以缩放后的 Schwartz 核表示频率截断。Young 不等式给出 $p$ 到 $q$ 的尺度因子；环域上的逆导数乘子给出反向估计。

> **来源**：Elias M. Stein, *Singular Integrals and Differentiability Properties of Functions*, Chapter IV；Hans Triebel, *Theory of Function Spaces*, Chapter 2。
