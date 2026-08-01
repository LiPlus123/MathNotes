# 变量替换

<!-- real_analysis_multivariable_jacobian_determinant_definition -->
> [!Definition]
> **Jacobi 行列式 Jacobian Determinant**：设变换 $T:U\subseteq\mathbb{R}^n\to\mathbb{R}^n$ 在 $u$ 处可微，其 Jacobi 行列式定义为
> $$
> J_T(u)=\det J_T(u)
> =\det\left(\frac{\partial T_i}{\partial u_j}(u)\right)_{1\leq i,j\leq n}.
> $$
> 其绝对值 $|J_T(u)|$ 表示 $T$ 在 $u$ 处对体积的一阶伸缩因子。

<!-- real_analysis_multivariable_change_of_variables_theorem -->
> [!Theorem]
> **重积分的变量替换公式 Change of Variables Formula**：设 $U,V\subseteq\mathbb{R}^n$ 为开集，$T:U\to V$ 是 $C^1$ 微分同胚，$A\subseteq U$ Jordan 可测，且 $f$ 在 $T(A)$ 上连续。则
> $$
> \int_{T(A)}f(x)\,\mathrm{d}x
> =\int_Af(T(u))|J_T(u)|\,\mathrm{d}u.
> $$
>
> **证明思路**：在足够小的矩形上，$T$ 由全微分近似，体积的主要变化量为 $|\det DT(u)|$；将区域分割为小矩形、对近似求和后取极限。微分同胚条件保证区域无重叠并可由局部公式拼接。

<!-- real_analysis_multivariable_linear_change_of_variables -->
> [!Corollary]
> **线性变量替换 Linear Change of Variables**：若 $A\in\mathbb{R}^{n\times n}$ 可逆，$E\subseteq\mathbb{R}^n$ Jordan 可测，且 $f$ 在 $AE$ 上连续，则
> $$
> \int_{AE}f(x)\,\mathrm{d}x
> =|\det A|\int_Ef(Au)\,\mathrm{d}u.
> $$
>
> **证明思路**：对线性映射 $T(u)=Au$，其 Jacobi 矩阵恒为 $A$，故 Jacobi 行列式为常数 $\det A$。

<!-- real_analysis_multivariable_polar_coordinates -->
> [!Definition]
> **极坐标 Polar Coordinates**：在平面上，除原点和选定割线外，极坐标变换为
> $$
> x=r\cos\theta,
> \qquad
> y=r\sin\theta,
> $$
> 其中 $r>0$。其 Jacobi 行列式为
> $$
> \det\begin{pmatrix}
> \cos\theta&-r\sin\theta\\
> \sin\theta&r\cos\theta
> \end{pmatrix}=r.
> $$
> 因而面积元为 $\mathrm{d}x\,\mathrm{d}y=r\,\mathrm{d}r\,\mathrm{d}\theta$。

<!-- real_analysis_multivariable_polar_coordinate_integration_formula -->
> [!Theorem]
> **极坐标积分公式 Polar Coordinate Integration Formula**：若区域 $E$ 可由一一的极坐标参数域 $D$ 描述，且 $f$ 在 $E$ 上连续，则
> $$
> \int_Ef(x,y)\,\mathrm{d}x\,\mathrm{d}y
> =\int_Df(r\cos\theta,r\sin\theta)r\,\mathrm{d}r\,\mathrm{d}\theta.
> $$
>
> **证明思路**：将极坐标变换限制到使其一一的角度区间，应用变量替换公式；割线和原点不影响 Jordan 积分。

<!-- real_analysis_multivariable_cylindrical_coordinates -->
> [!Definition]
> **柱坐标 Cylindrical Coordinates**：在 $\mathbb{R}^3$ 中，柱坐标变换为
> $$
> x=r\cos\theta,
> \qquad y=r\sin\theta,
> \qquad z=z,
> $$
> 其中体积元为
> $$
> \mathrm{d}x\,\mathrm{d}y\,\mathrm{d}z=r\,\mathrm{d}r\,\mathrm{d}\theta\,\mathrm{d}z.
> $$

<!-- real_analysis_multivariable_spherical_coordinates -->
> [!Definition]
> **球坐标 Spherical Coordinates**：在 $\mathbb{R}^3$ 中，取 $r\geq0$、$0\leq\varphi\leq\pi$、$0\leq\theta<2\pi$，定义
> $$
> x=r\sin\varphi\cos\theta,
> \qquad y=r\sin\varphi\sin\theta,
> \qquad z=r\cos\varphi.
> $$
> 其体积元为
> $$
> \mathrm{d}x\,\mathrm{d}y\,\mathrm{d}z
> =r^2\sin\varphi\,\mathrm{d}r\,\mathrm{d}\varphi\,\mathrm{d}\theta.
> $$

<!-- real_analysis_multivariable_spherical_coordinate_integration_example -->
> [!Example]+
> **球坐标计算球体体积 Volume of a Ball by Spherical Coordinates**：半径为 $R>0$ 的闭球 $B_R\subseteq\mathbb{R}^3$ 满足
> $$
> \operatorname{vol}(B_R)
> =\int_0^{2\pi}\int_0^\pi\int_0^Rr^2\sin\varphi\,\mathrm{d}r\,\mathrm{d}\varphi\,\mathrm{d}\theta
> =\frac43\pi R^3.
> $$
>
> **证明思路**：将常数函数 $1$ 代入球坐标积分公式，依次计算三个一元积分。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 10；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 10。