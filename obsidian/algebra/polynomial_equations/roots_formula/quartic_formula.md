# 四次方程求根公式 Quartic Formula

## 化为压缩四次式

<!-- depressed_quartic_reduction -->
> [!Definition]
> **压缩四次式 Depressed Quartic**：一般四次方程
> $$ax^4 + bx^3 + cx^2 + dx + e = 0,
> \\quad a \neq 0,$$
> 经变量替换
> $$x = y - \frac{b}{4a}$$
> 可化为无三次项的形式
> $$y^4 + py^2 + qy + r = 0,$$
> 其中
> $$p = \frac{8ac - 3b^2}{8a^2}, \qquad q = \frac{b^3 - 4abc + 8a^2d}{8a^3}, \qquad r = \frac{256a^3e - 64a^2bd + 16ab^2c - 3b^4}{256a^4}.$$

> **注**：和三次方程一样，先消去高一阶项是经典求根方法的第一步。

## Ferrari 方法

<!-- ferrari_method_theorem -->
> [!Theorem]
> **Ferrari 公式 Ferrari's Method**：设
> $$y^4 + py^2 + qy + r = 0$$
> 是压缩四次方程。若存在非零复数 $m$ 满足
> $$m^3 + 2pm^2 + (p^2 - 4r)m - q^2 = 0,$$
> 再取 $s$ 使 $s^2 = m$，并定义
> $$t = \frac{p + m - q/s}{2}, \qquad u = \frac{p + m + q/s}{2},$$
> 则原方程可分解为
> $$(y^2 + sy + t)(y^2 - sy + u) = 0.$$
> 因而其四个根可由两个二次方程
> $$y^2 + sy + t = 0, \qquad y^2 - sy + u = 0$$
> 分别用二次公式求出。

> **证明思路**：设
> $$(y^2 + sy + t)(y^2 - sy + u) = y^4 + (t + u - s^2)y^2 + s(u-t)y + tu.$$
> 与 $y^4 + py^2 + qy + r$ 对比系数，得到
> $$t + u - s^2 = p, \qquad s(u-t) = q, \qquad tu = r.$$
> 令 $m = s^2$，消去 $t,u$ 后便得到关于 $m$ 的三次方程
> $$m^3 + 2pm^2 + (p^2 - 4r)m - q^2 = 0.$$
> 该三次方程称为 Ferrari 方法中的预解三次方程。先用 Cardano 公式解出 $m$，再回代求 $s,t,u$，最终把四次方程化为两个二次方程。

> **注**：这就是四次方程存在根式公式的根本原因。四次问题并未直接化为闭式表达，而是先降为一个三次问题，再降为两个二次问题。

## 双二次方程是特殊情形

<!-- biquadratic_case_corollary -->
> [!Corollary]
> **双二次方程 Biquadratic Equation**：若四次方程形如
> $$ax^4 + bx^2 + c = 0,
> \\quad a \neq 0,$$
> 则令 $z = x^2$，可先解二次方程
> $$az^2 + bz + c = 0,$$
> 再对得到的 $z$ 分别开平方，从而求得全部根。

> **证明思路**：原方程只含 $x^2$ 的幂次，把 $x^2$ 视为新变量即可。

## 一般四次方程的根

<!-- general_quartic_formula_corollary -->
> [!Corollary]
> **一般四次方程求根公式 General Quartic Formula**：设
> $$ax^4 + bx^3 + cx^2 + dx + e = 0,
> \\quad a \neq 0.$$
> 先代入 $x = y - \dfrac{b}{4a}$ 化为压缩四次式，再由 Ferrari 方法将其分解为两个二次方程，最后分别应用二次方程求根公式，即得到原方程的四个根。

> **证明思路**：压缩四次变换与 Ferrari 分解连续应用即可。