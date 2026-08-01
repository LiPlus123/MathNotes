# Riemann 球面

Riemann 球面把复平面补上一个无穷远点，使许多在有限点处的拓扑与共形问题获得统一描述。

## 广义复平面与球极投影

<!-- extended_complex_plane_definition -->
> [!Definition]
> **广义复平面 Extended Complex Plane**：广义复平面定义为
> $$
> \widehat{\mathbb{C}}=\mathbb{C}\cup\{\infty\},
> $$
> 其中 $\infty$ 是不属于 $\mathbb{C}$ 的新点，称为无穷远点。

<!-- riemann_sphere_definition -->
> [!Definition]
> **Riemann 球面 Riemann Sphere**：单位球面
> $$
> S^2=\{(X,Y,Z)\in\mathbb{R}^3:X^2+Y^2+Z^2=1\}
> $$
> 配备其子空间拓扑与标准复结构时，称为 Riemann 球面。取北极 $N=(0,0,1)$，从 $N$ 出发的球极投影把 $S^2\setminus\{N\}$ 映到复平面，并将 $N$ 对应于 $\infty$。

<!-- stereographic_projection_formula -->
> [!Definition]
> **球极投影 Stereographic Projection**：对 $P=(X,Y,Z)\in S^2\setminus\{N\}$，定义
> $$
> \sigma(P)=\frac{X+iY}{1-Z}\in\mathbb{C}.
> $$
> 其逆映射为
> $$
> \sigma^{-1}(z)=\left(\frac{2\operatorname{Re}z}{|z|^2+1},\frac{2\operatorname{Im}z}{|z|^2+1},\frac{|z|^2-1}{|z|^2+1}\right).
> $$
> 令 $\sigma(N)=\infty$，则 $\sigma$ 给出 $S^2$ 与 $\widehat{\mathbb{C}}$ 之间的双射。

<!-- riemann_sphere_topological_equivalence -->
> [!Theorem]
> **Riemann 球面与广义复平面的拓扑等价 Topological Equivalence**：定义 $\widehat{\mathbb{C}}$ 的拓扑，使得 $\sigma:S^2\to\widehat{\mathbb{C}}$ 为同胚，则 $\widehat{\mathbb{C}}$ 是紧致、连通且 Hausdorff 的空间，并且 $\mathbb{C}$ 是它的开子空间。
>
> **证明思路**：$S^2$ 是 $\mathbb{R}^3$ 中的紧致 Hausdorff 子空间，球极投影在有限点上是连续双射且逆映射显式连续；在北极处用无穷远邻域的定义补足连续性。

## 无穷远处的拓扑与共形结构

<!-- infinity_neighborhoods -->
> [!Definition]
> **无穷远处的邻域 Neighborhoods of Infinity**：对 $R>0$，定义
> $$
> U_R(\infty)=\{\infty\}\cup\{z\in\mathbb{C}:|z|>R\}.
> $$
> 这些集合构成 $\infty$ 的邻域基。于是，序列 $z_n\in\mathbb{C}$ 收敛到 $\infty$ 当且仅当 $|z_n|\to\infty$。

<!-- spherical_metric -->
> [!Definition]
> **球面度量 Spherical Metric**：在 $\widehat{\mathbb{C}}$ 上定义
> $$
> d_{\mathrm{sph}}(z,w)=\frac{2|z-w|}{\sqrt{1+|z|^2}\sqrt{1+|w|^2}},
> $$
> 对 $z,w\in\mathbb{C}$；并令
> $$
> d_{\mathrm{sph}}(z,\infty)=\frac{2}{\sqrt{1+|z|^2}},\qquad
> d_{\mathrm{sph}}(\infty,\infty)=0.
> $$
> 该度量诱导的拓扑正是 Riemann 球面的拓扑。

<!-- riemann_sphere_conformal_structure -->
> [!Definition]
> **Riemann 球面的共形结构 Conformal Structure of the Riemann Sphere**：以复平面坐标 $z$ 和无穷远处坐标
> $$
> \zeta=\frac{1}{z}
> $$
> 构成两个坐标图：有限图覆盖 $\mathbb{C}$，无穷远图覆盖某个 $U_R(\infty)$。在交集上坐标变换为 $\zeta=1/z$，它在 $z\ne0$ 处全纯且导数非零。因此这些坐标图赋予 $\widehat{\mathbb{C}}$ 一个复一维流形结构，即 Riemann 曲面结构。

<!-- infinity_limit_characterization -->
> [!Theorem]
> **无穷远处的极限 Limit at Infinity**：设 $f$ 定义在某个 $U_R(\infty)$ 上。对 $a\in\widehat{\mathbb{C}}$，有
> $$
> \lim_{z\to\infty}f(z)=a
> $$
> 当且仅当以 $\zeta=1/z$ 换元后，函数 $g(\zeta)=f(1/\zeta)$ 在 $\zeta\to0$ 时趋于 $a$。若 $a$ 为有限复数，则这等价于 $g$ 在 $0$ 处可去延拓并令 $g(0)=a$。
>
> **证明思路**：$z\to\infty$ 的邻域定义恰好对应于 $\zeta=1/z\to0$；把极限的 $\epsilon$-$R$ 定义逐项代换即可。

<!-- riemann_sphere_compactness -->
> [!Example]+
> **Riemann 球面的紧性 Compactness of the Riemann Sphere**：$\widehat{\mathbb{C}}$ 是紧空间，而 $\mathbb{C}$ 不是紧空间。事实上，球极投影把前者同胚于紧球面 $S^2$；另一方面，闭圆盘序列 $\bar B(0,n)$ 没有覆盖整个 $\mathbb{C}$ 的有限子覆盖。

<!-- riemann_sphere_reference -->
> **注**：本小节的广义复平面、球极投影和无穷远处坐标参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 1；Riemann 曲面坐标的表述参见 John B. Conway, *Functions of One Complex Variable I*, Chapter 1。
