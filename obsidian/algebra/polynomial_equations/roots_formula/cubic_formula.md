# 三次方程求根公式 Cubic Formula

## 化为压缩三次式

<!-- depressed_cubic_reduction -->
> [!Definition]
> **压缩三次式 Depressed Cubic**：一般三次方程
> $$ax^3 + bx^2 + cx + d = 0,
> \\quad a \neq 0,$$
> 经变量替换
> $$x = y - \frac{b}{3a}$$
> 可化为无二次项的形式
> $$y^3 + py + q = 0,$$
> 其中
> $$p = \frac{3ac - b^2}{3a^2}, \qquad q = \frac{27a^2d - 9abc + 2b^3}{27a^3}.$$

> **注**：该变换称为降次变换，其目的在于先消去二次项，再对压缩三次式使用 Cardano 公式。

## Cardano 公式

<!-- cardano_formula_theorem -->
> [!Theorem]
> **Cardano 公式 Cardano Formula**：设
> $$y^3 + py + q = 0$$
> 是一元三次压缩方程。令
> $$\Delta_c = \left(\frac{q}{2}\right)^2 + \left(\frac{p}{3}\right)^3.$$
> 取复数 $u,v$ 满足
> $$u^3 = -\frac{q}{2} + \sqrt{\Delta_c}, \qquad v^3 = -\frac{q}{2} - \sqrt{\Delta_c},$$
> 且立方根的分支选择满足
> $$uv = -\frac{p}{3}.$$
> 则该方程的三个根可写为
> $$y_1 = u + v, \qquad y_2 = \zeta_3 u + \zeta_3^2 v, \qquad y_3 = \zeta_3^2 u + \zeta_3 v,$$
> 其中 $\zeta_3 = e^{2\pi i/3}$ 是本原三次单位根。

> **证明思路**：设 $y = u + v$，则
> $$y^3 = u^3 + v^3 + 3uv(u+v).$$
> 若要求 $y^3 + py + q = 0$，只需令
> $$3uv + p = 0, \qquad u^3 + v^3 + q = 0.$$
> 于是 $u^3,v^3$ 是二次方程
> $$t^2 + qt - \frac{p^3}{27} = 0$$
> 的两根，解得上式中的 $u^3,v^3$。再利用三次单位根对立方根的全部分支进行组合，即得三个根。

> **注**：当 $p,q \in \mathbb{R}$ 且 $\Delta_c < 0$ 时，方程有三个互不相同的实根，但 Cardano 公式中的中间计算通常需要经过复数，这一现象称为**不可约情形**（casus irreducibilis）。

## 一般三次方程的根

<!-- general_cubic_formula_corollary -->
> [!Corollary]
> **一般三次方程求根公式 General Cubic Formula**：设
> $$ax^3 + bx^2 + cx + d = 0,
> \\quad a \neq 0.$$
> 先代入 $x = y - \dfrac{b}{3a}$ 化为压缩三次式 $y^3 + py + q = 0$，再由 Cardano 公式求出 $y_1,y_2,y_3$，则原方程的三个根为
> $$x_k = y_k - \frac{b}{3a}, \qquad k = 1,2,3.$$

> **证明思路**：降次变换与 Cardano 公式连续应用即可。

## 例子

<!-- cardano_formula_example -->
> [!Example]+
> **压缩三次式求解示例 Solving a Depressed Cubic**：求方程
> $$y^3 - 3y - 2 = 0$$
> 的根。

> **解**：此时 $p = -3$，$q = -2$，故
> $$\Delta_c = \left(-\frac{2}{2}\right)^2 + \left(-\frac{3}{3}\right)^3 = 1 - 1 = 0.$$
> 从而可取 $u^3 = v^3 = 1$，于是 $u = v = 1$ 给出一个根
> $$y_1 = u + v = 2.$$
> 又因为
> $$y^3 - 3y - 2 = (y - 2)(y + 1)^2,$$
> 所以其余两根均为 $-1$。故全部根为 $2,-1,-1$。