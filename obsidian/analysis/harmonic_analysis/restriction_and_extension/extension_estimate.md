# 扩张估计

## 对偶性、色散演化与多线性增益

<!-- extension_operator_definition -->
> [!Definition]
> **扩张算子 Extension Operator**：设 $S\subset\mathbb{R}^n$ 带有曲面测度 $d\sigma$。对 $g\in L^1(S,d\sigma)$，定义
> $$
> \mathcal{E}_Sg(x)=\int_Se^{2\pi i x\cdot\xi}g(\xi)\,d\sigma(\xi).
> $$
> 它是限制算子 $R_S$ 的 $L^2$ 对偶：对 Schwartz 函数 $f$，
> $$
> \int_{\mathbb{R}^n}f(x)\overline{\mathcal{E}_Sg(x)}\,dx
> =\int_S\widehat f(\xi)\overline{g(\xi)}\,d\sigma(\xi).
> $$

<!-- restriction_extension_duality -->
> [!Theorem]
> **限制与扩张的对偶性 Restriction-Extension Duality**：对 $1\leq p,q\leq+\infty$，下列估计等价：
> $$
> \|R_Sf\|_{L^{q'}(S)}\leq C\|f\|_{L^p(\mathbb{R}^n)},
> $$
> $$
> \|\mathcal{E}_Sg\|_{L^{p'}(\mathbb{R}^n)}\leq C\|g\|_{L^q(S)}.
> $$
> 因此 Stein--Tomas 定理等价于 $\mathcal{E}_S:L^2(S)\to L^{2(n+1)/(n-1)}(\mathbb{R}^n)$ 的有界性。
>
> **证明思路**：使用上面的配对恒等式，并分别对 $f$ 和 $g$ 的单位范数球取上确界。

<!-- schrodinger_extension_identity -->
> [!Proposition]
> **Schrödinger 演化作为抛物面扩张 Schrödinger Evolution as Paraboloid Extension**：令
> $$
> u(t,x)=e^{it\Delta}f(x).
> $$
> 在本项目的 Fourier 约定下，
> $$
> u(t,x)=\int_{\mathbb{R}^{n-1}}
> e^{2\pi i x\cdot\xi-4\pi^2it|\xi|^2}\widehat f(\xi)\,d\xi.
> $$
> 因而自由 Schrödinger 解是带有抛物相位的扩张算子，时间与空间变量共同构成抛物面扩张的目标空间。
>
> **证明思路**：在 Fourier 侧解常微分方程 $\partial_t\widehat u=-4\pi^2|\xi|^2\widehat u$，再作逆 Fourier 变换。

<!-- strichartz_estimate -->
> [!Theorem]
> **Schrödinger Strichartz 估计 Schrödinger Strichartz Estimate**：设空间维数为 $d$，并令 $q,r\geq2$ 满足
> $$
> \frac2q+\frac d r=\frac d2,
> $$
> 且避开二维端点 $(q,r)=(2,+\infty)$。则
> $$
> \|e^{it\Delta}f\|_{L_t^qL_x^r(\mathbb{R}\times\mathbb{R}^d)}
> \lesssim\|f\|_2.
> $$
> 这类估计可视为抛物面扩张估计在混合范数中的表达。
>
> **证明思路**：色散估计给出 $\|e^{it\Delta}\|_{L^1\to L^\infty}\lesssim|t|^{-d/2}$；再应用 $TT^*$ 方法和 Hardy-Littlewood-Sobolev 不等式，或采用 Keel--Tao 的抽象端点论证。

<!-- bilinear_restriction_estimate -->
> [!Theorem]
> **双线性限制估计 Bilinear Restriction Estimate**：当两个抛物面或锥面的频率支撑位于横截分离的帽中时，扩张函数的乘积可满足强于逐项线性估计的界，例如在局部球 $B_R$ 上
> $$
> \|\mathcal{E}g_1\,\mathcal{E}g_2\|_{L^q(B_R)}
> \lesssim R^\varepsilon\|g_1\|_2\|g_2\|_2,
> $$
> 其中允许的 $q$ 和精确尺度因子取决于曲面及横截性。
>
> **证明思路**：把数据分解为波包。横截性使来自不同帽的波包管以受控方式相交；结合双线性 Kakeya 型估计和尺度归纳得到结论。

<!-- multilinear_restriction_estimate -->
> [!Theorem]
> **多线性限制估计 Multilinear Restriction Estimate**：对 $n$ 个法向量一致横截的超曲面片 $S_i\subset\mathbb{R}^n$，多线性限制理论控制
> $$
> \left\|\prod_{i=1}^n\mathcal{E}_{S_i}g_i\right\|_{L^{2/(n-1)}(B_R)}
> $$
> ，通常允许任意小的 $R^\varepsilon$ 损失。横截性将波包相交问题降为多线性 Kakeya 几何。
>
> **证明思路**：应用多线性 Kakeya 不等式控制横截管族的乘积；再通过尺度归纳与局部化把波包估计提升为扩张估计。

> **来源**：Terence Tao, *Nonlinear Dispersive Equations*, Chapters 2--3；Jonathan Bennett, Anthony Carbery, and Terence Tao, "On the Multilinear Restriction and Kakeya Conjectures", *Acta Mathematica* 196 (2006)。
