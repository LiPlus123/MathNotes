# 梯度、散度与旋度

<!-- real_analysis_del_operator_definition -->
> [!Definition]
> **del 算子 del Operator**：在直角坐标 $(x,y,z)$ 中，形式微分算子
> $$
> \nabla=\left(\frac{\partial}{\partial x},\frac{\partial}{\partial y},\frac{\partial}{\partial z}\right)
> $$
> 称为 del 算子。它本身不是数值函数；与数量场或向量场按相应规则作用时，分别产生梯度、散度、旋度或 Laplace 算子。

<!-- real_analysis_gradient_vector_calculus_definition -->
> [!Definition]
> **梯度 Gradient**：设标量场 $f:U\subseteq\mathbb{R}^3\to\mathbb{R}$ 属于 $C^1$。定义
> $$
> \nabla f=\left(\frac{\partial f}{\partial x},\frac{\partial f}{\partial y},\frac{\partial f}{\partial z}\right).
> $$
> 在任意单位向量 $u$ 上，方向导数满足 $D_uf=\nabla f\cdot u$；因此梯度指向 $f$ 增长最快的方向。

<!-- real_analysis_divergence_definition -->
> [!Definition]
> **散度 Divergence**：设向量场 $F=(P,Q,R):U\subseteq\mathbb{R}^3\to\mathbb{R}^3$ 属于 $C^1$。定义其散度为
> $$
> \operatorname{div}F=\nabla\cdot F
> =\frac{\partial P}{\partial x}+\frac{\partial Q}{\partial y}+\frac{\partial R}{\partial z}.
> $$
> 它是一个标量场。

<!-- real_analysis_curl_definition -->
> [!Definition]
> **旋度 Curl**：设 $F=(P,Q,R):U\subseteq\mathbb{R}^3\to\mathbb{R}^3$ 属于 $C^1$。定义其旋度为
> $$
> \operatorname{curl}F=\nabla\times F
> =\left(
> \frac{\partial R}{\partial y}-\frac{\partial Q}{\partial z},
> \frac{\partial P}{\partial z}-\frac{\partial R}{\partial x},
> \frac{\partial Q}{\partial x}-\frac{\partial P}{\partial y}
> \right).
> $$
> 它是一个向量场。

<!-- real_analysis_laplacian_definition -->
> [!Definition]
> **Laplace 算子 Laplace Operator**：若 $f:U\subseteq\mathbb{R}^3\to\mathbb{R}$ 属于 $C^2$，定义
> $$
> \Delta f=\nabla\cdot(\nabla f)
> =\frac{\partial^2f}{\partial x^2}+\frac{\partial^2f}{\partial y^2}+\frac{\partial^2f}{\partial z^2}.
> $$
> 若 $F=(P,Q,R)$ 的每个分量属于 $C^2$，则逐分量定义 $\Delta F=(\Delta P,\Delta Q,\Delta R)$。

<!-- real_analysis_gradient_divergence_curl_example -->
> [!Example]+
> **基本微分算子的例子 Example of Basic Differential Operators**：令
> $$
> f(x,y,z)=x^2y+z,
> \qquad F(x,y,z)=(xy,yz,zx).
> $$
> 则
> $$
> \nabla f=(2xy,x^2,1),
> \qquad \Delta f=2y,
> $$
> $$
> \operatorname{div}F=x+y+z,
> \qquad \operatorname{curl}F=(-y,-z,-x).
> $$
>
> **证明思路**：按各分量的偏导数定义直接计算。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 12。