# 与 Riemann 积分的比较

## 有界区间上的比较

<!-- riemann_integrable_implies_lebesgue_integrable -->
> [!Theorem]
> **Riemann 可积蕴含 Lebesgue 可积 Riemann Integrability Implies Lebesgue Integrability**：设 $f:[a,b]\to\mathbb{R}$ 为有界 Riemann 可积函数。则 $f$ 是 Lebesgue 可测且 Lebesgue 可积，并且
> $$
> \int_a^bf(x)\,dx
> =\int_{[a,b]}f\,dm,
> $$
> 左侧为 Riemann 积分，右侧为 Lebesgue 积分。
>
> **证明思路**：Riemann 可积性蕴含不连续点集零测，故 $f$ 可测；有界性与 $m([a,b])<+\infty$ 给出 $f\in L^1([a,b])$。以 Riemann 上、下阶梯函数夹逼 $f$，其积分差可任意小，故两种积分相等。

<!-- lebesgue_criterion_for_riemann_integrability -->
> [!Theorem]
> **Riemann 可积的 Lebesgue 判别法 Lebesgue Criterion for Riemann Integrability**：设 $f:[a,b]\to\mathbb{R}$ 有界。则 $f$ Riemann 可积，当且仅当其不连续点集的 Lebesgue 测度为零。
>
> **证明思路**：以局部振幅控制 Riemann 上和与下和之差。若不连续点集零测，则可用总长度任意小的开区间覆盖高振幅集合；反过来，可由任意小的 Darboux 上、下和之差构造高振幅集合的任意小长度覆盖。

<!-- lebesgue_not_riemann_integrable_example -->
> [!Example]+
> **Lebesgue 可积但不 Riemann 可积 Lebesgue Integrable but Not Riemann Integrable**：在 $[0,1]$ 上，函数 $\mathbf{1}_{\mathbb{Q}}$ Lebesgue 可积，且
> $$
> \int_{[0,1]}\mathbf{1}_{\mathbb{Q}}\,dm=0,
> $$
> 因为 $\mathbb{Q}\cap[0,1]$ 可数而零测；但该函数在每一点不连续，所以不 Riemann 可积。此例显示 Lebesgue 积分可以忽略零测集上的函数取值。

<!-- bounded_riemann_and_lebesgue_integrability_distinction -->
> [!Proposition]
> **有界 Lebesgue 可积不保证 Riemann 可积 Bounded Lebesgue Integrability Does Not Imply Riemann Integrability**：在紧区间上，Lebesgue 可积性要求函数可测且绝对值积分有限；Riemann 可积性还要求不连续点集为零测。故即使函数有界且 Lebesgue 可积，也可能不 Riemann 可积。

## 广义 Riemann 积分

<!-- improper_riemann_integral_definition -->
> [!Definition]
> **广义 Riemann 积分 Improper Riemann Integral**：设 $f$ 在每个 $[a,R]$（$R>a$）上 Riemann 可积。若极限
> $$
> \lim_{R\to+\infty}\int_a^Rf(x)\,dx
> $$
> 存在且有限，则称其为 $f$ 在 $[a,+\infty)$ 上的广义 Riemann 积分。同样可对端点奇异性，以避开奇点的截断区间的 Riemann 积分极限定义。

<!-- absolute_improper_riemann_implies_lebesgue_integrable -->
> [!Theorem]
> **绝对收敛的广义 Riemann 积分与 Lebesgue 积分 Absolutely Convergent Improper Riemann Integrals**：设 $f$ 在每个 $[a,R]$ 上 Riemann 可积，并且
> $$
> \int_a^{+\infty}|f(x)|\,dx
> $$
> 作为广义 Riemann 积分收敛。则 $f\in L^1([a,+\infty),m)$，且
> $$
> \int_{[a,+\infty)}f\,dm
> =\lim_{R\to+\infty}\int_a^Rf(x)\,dx.
> $$
>
> **证明思路**：对每个有限截断区间，两种积分相等。绝对收敛保证 $|f|$ 的 Lebesgue 积分有限；对截断函数 $f\mathbf{1}_{[a,R]}$ 应用控制收敛定理即可通过极限。

<!-- conditionally_convergent_improper_riemann_example -->
> [!Example]+
> **条件收敛的广义 Riemann 积分 Conditionally Convergent Improper Riemann Integral**：函数
> $$
> f(x)=\frac{\sin x}{x}\qquad(x\geq1)
> $$
> 的广义 Riemann 积分收敛，但
> $$
> \int_1^{+\infty}\left|\frac{\sin x}{x}\right|\,dx=+\infty.
> $$
> 因而 $f$ 不属于 $L^1([1,+\infty),m)$，即它不是 Lebesgue 可积函数。这说明广义 Riemann 积分允许条件收敛，而 Lebesgue 可积性要求绝对可积。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Sections 1.1 and 2.1；Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 2。
