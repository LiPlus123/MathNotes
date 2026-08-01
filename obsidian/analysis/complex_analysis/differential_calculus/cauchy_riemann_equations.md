# Cauchy-Riemann 方程

## 直角坐标形式

<!-- cauchy_riemann_equations -->
> [!Theorem]
> **Cauchy-Riemann 方程 Cauchy-Riemann Equations**：设 $f=u+iv$ 在 $z_0=x_0+iy_0$ 附近定义。若 $f$ 在 $z_0$ 处复可微，且 $u,v$ 在 $z_0$ 处有一阶偏导，则
> $$
> u_x(x_0,y_0)=v_y(x_0,y_0),\qquad
> u_y(x_0,y_0)=-v_x(x_0,y_0).
> $$
> 这两个方程称为 Cauchy-Riemann 方程，简称 CR 方程。
>
> **证明思路**：分别令增量 $h$ 沿实轴和虚轴趋于零。沿实轴得到 $f'(z_0)=u_x+iv_x$，沿虚轴得到 $f'(z_0)=v_y-iu_y$；比较实部和虚部即得。

<!-- cauchy_riemann_sufficient_condition -->
> [!Theorem]
> **CR 方程的充分条件 Sufficient Condition for the CR Equations**：若 $u,v$ 在 $z_0$ 的某个邻域内具有连续的一阶偏导，并在该邻域满足
> $$
> u_x=v_y,\qquad u_y=-v_x,
> $$
> 则 $f=u+iv$ 在该邻域内全纯，且
> $$
> f'(z)=u_x+iv_x=v_y-iu_y.
> $$
>
> **证明思路**：一阶 Taylor 展开给出实微分；CR 方程使实 Jacobian 矩阵恰好等于复数乘法 $h\mapsto (u_x+iv_x)h$，故复差商收敛。

<!-- cauchy_riemann_non_sufficient_warning -->
> [!Example]+
> **CR 方程的正则性要求 Regularity Requirement for CR Equations**：仅仅在一点满足 CR 方程通常不能推出复可微。例如，令
> $$
> f(z)=
> \begin{cases}
> \dfrac{\bar z^2}{z},&z\ne0,\\
> 0,&z=0,
> \end{cases}
> $$
> 则 $f$ 在 $0$ 处连续且在 $0$ 处形式上满足由坐标方向导数得到的 CR 条件，但不复可微，因为沿 $z=re^{i\theta}$ 有 $f(z)/z=e^{-4i\theta}$，极限不存在。故通常需要偏导在邻域连续等附加条件。

## 极坐标形式

<!-- polar_cauchy_riemann_equations -->
> [!Theorem]
> **极坐标形式的 CR 方程 Polar Form of the CR Equations**：在 $z=re^{i\theta}$（$r>0$）处，若 $f=u(r,\theta)+iv(r,\theta)$，则 CR 方程等价于
> $$
> u_r=\frac1r v_\theta,\qquad v_r=-\frac1r u_\theta.
> $$
> 等价地，
> $$
> v_\theta=ru_r,\qquad u_\theta=-rv_r.
> $$
>
> **证明思路**：使用 $x=r\cos\theta$、$y=r\sin\theta$ 的链式法则，将 $u_x,u_y,v_x,v_y$ 改写为 $u_r,u_\theta,v_r,v_\theta$。

## Wirtinger 微分算子

<!-- wirtinger_derivatives_definition -->
> [!Definition]
> **Wirtinger 微分算子 Wirtinger Derivatives**：对具有一阶偏导的函数，定义
> $$
> \frac{\partial}{\partial z}:=\frac12\left(\frac{\partial}{\partial x}-i\frac{\partial}{\partial y}\right),\qquad
> \frac{\partial}{\partial\bar z}:=\frac12\left(\frac{\partial}{\partial x}+i\frac{\partial}{\partial y}\right).
> $$
> 于是
> $$
> \frac{\partial z}{\partial z}=1,\quad \frac{\partial\bar z}{\partial z}=0,
> \qquad
> \frac{\partial z}{\partial\bar z}=0,\quad \frac{\partial\bar z}{\partial\bar z}=1.
> $$

<!-- wirtinger_holomorphicity_criterion -->
> [!Theorem]
> **Wirtinger 判据 Wirtinger Criterion for Holomorphicity**：若 $f$ 具有连续的一阶偏导，则
> $$
> f\text{ 全纯}
> \Longleftrightarrow
> \frac{\partial f}{\partial\bar z}=0.
> $$
> 在此条件下，
> $$
> f'(z)=\frac{\partial f}{\partial z}.
> $$
>
> **证明思路**：对 $f=u+iv$ 展开 $\partial f/\partial\bar z$，其为零恰好等价于 CR 方程；$\partial f/\partial z$ 则等于 $u_x+iv_x$。

<!-- wirtinger_product_rule -->
> [!Theorem]
> **Wirtinger 算子的乘积法则 Product Rule for Wirtinger Operators**：若 $f,g$ 具有一阶偏导，则
> $$
> \frac{\partial(fg)}{\partial z}
> =\frac{\partial f}{\partial z}g+f\frac{\partial g}{\partial z},
> $$
> $$
> \frac{\partial(fg)}{\partial\bar z}
> =\frac{\partial f}{\partial\bar z}g+f\frac{\partial g}{\partial\bar z}.
> $$
> Wirtinger 算子是对实变量偏导的线性组合，因此乘积法则直接继承自实微积分。

> **注**：CR 方程和 Wirtinger 算子参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 2，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 2。
