# Riemann 可积的条件

<!-- real_analysis_riemann_integrable_function_boundedness -->
> [!Theorem]
> **Riemann 可积函数必有界 Boundedness of Riemann Integrable Functions**：若 $f:[a,b]\to\mathbb{R}$ Riemann 可积，则 $f$ 有界。
>
> **证明思路**：由 Riemann 和极限定义，取任一充分细的分划；固定其余标记点，仅改变一个子区间内的标记点。若函数在该子区间无界，则相应 Riemann 和不可能一致地接近同一有限积分值，矛盾。

<!-- real_analysis_continuous_implies_riemann_integrable -->
> [!Theorem]
> **连续函数 Riemann 可积 Continuous Functions are Riemann Integrable**：若 $f:[a,b]\to\mathbb{R}$ 连续，则 $f$ 在 $[a,b]$ 上 Riemann 可积。
>
> **证明思路**：闭区间上的连续函数一致连续。给定 $\varepsilon>0$，取足够小的网长使每个子区间上的振幅小于 $\varepsilon/(b-a)$，则上、下和之差小于 $\varepsilon$，由 Darboux 判据可积。

<!-- real_analysis_finitely_discontinuous_implies_riemann_integrable -->
> [!Theorem]
> **有限间断点函数的可积性 Riemann Integrability with Finitely Many Discontinuities**：若 $f:[a,b]\to\mathbb{R}$ 有界，且仅在有限多个点不连续，则 $f$ Riemann 可积。
>
> **证明思路**：在每个间断点周围取总长度任意小的区间，利用有界性控制这些区间对上、下和之差的贡献；在其余紧集上函数连续且一致连续，取足够细分割控制剩余贡献。

<!-- real_analysis_monotone_implies_riemann_integrable -->
> [!Theorem]
> **单调函数 Riemann 可积 Monotone Functions are Riemann Integrable**：若 $f:[a,b]\to\mathbb{R}$ 单调，则 $f$ Riemann 可积。
>
> **证明思路**：以等距分割为例，递增函数的上和与下和之差为
> $$
> U(f,P)-L(f,P)=\|P\|\bigl(f(b)-f(a)\bigr),
> $$
> 随网长趋于 $0$ 而趋于 $0；递减情形同理。

<!-- real_analysis_riemann_nonintegrable_dirichlet_example -->
> [!Example]+
> **不可积的 Dirichlet 函数 Dirichlet Function is not Riemann Integrable**：令
> $$
> f(x)=\mathbf{1}_{\mathbb{Q}}(x)
> \qquad(x\in[0,1]).
> $$
> 由于有理数与无理数在每个非退化区间中均稠密，任意分划都满足
> $$
> U(f,P)=1,
> \qquad
> L(f,P)=0.
> $$
> 因而 $f$ 不 Riemann 可积。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 7；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 6。