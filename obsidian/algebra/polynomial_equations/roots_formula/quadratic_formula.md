# 二次方程求根公式 Quadratic Formula

## 二次方程的标准求根公式

<!-- quadratic_formula_theorem -->
> [!Theorem]
> **二次方程求根公式 Quadratic Formula**：设
> $$ax^2 + bx + c = 0,
> \\quad a,b,c \in K,\ a \neq 0,$$
> 其中 $K$ 为特征不等于 $2$ 的数域。令
> $$\Delta = b^2 - 4ac.$$
> 则该方程在包含 $\sqrt{\Delta}$ 的扩域中有根
> $$x = \frac{-b \pm \sqrt{\Delta}}{2a}.$$

> **证明思路**：将方程两边同除以 $a$，得
> $$x^2 + \frac{b}{a}x + \frac{c}{a} = 0.$$ 
> 通过配方法，
> $$\begin{align*}
> x^2 + \frac{b}{a}x &= -\frac{c}{a}, \\
> x^2 + \frac{b}{a}x + \frac{b^2}{4a^2} &= \frac{b^2 - 4ac}{4a^2}, \\
> \left(x + \frac{b}{2a}\right)^2 &= \frac{\Delta}{4a^2}.
> \end{align*}$$
> 对两边开方并移项即得结论。

> **注**：当 $K = \mathbb{R}$ 时，若 $\Delta < 0$，则方程在 $\mathbb{R}$ 中无根，但在 $\mathbb{C}$ 中仍有两个互为共轭的根。

## 根的分类

<!-- quadratic_formula_root_classification -->
> [!Corollary]
> **二次方程根的分类 Classification of Roots of Quadratic**：设 $a,b,c \in \mathbb{R}$，$a \neq 0$，并令 $\Delta = b^2 - 4ac$。则：
> - $\Delta > 0$ 时，方程有两个不同的实根；
> - $\Delta = 0$ 时，方程有一个二重实根 $-\dfrac{b}{2a}$；
> - $\Delta < 0$ 时，方程无实根而有两个互为共轭的复根。

> **证明思路**：直接由求根公式中 $\sqrt{\Delta}$ 的取值情况分类讨论即可。

## 例子

<!-- quadratic_formula_example -->
> [!Example]+
> **二次方程求解示例 Solving a Quadratic Equation**：求方程
> $$x^2 - 5x + 6 = 0$$
> 的根。

> **解**：此时 $a = 1$，$b = -5$，$c = 6$，故
> $$\Delta = (-5)^2 - 4 \cdot 1 \cdot 6 = 1.$$
> 由求根公式，
> $$x = \frac{5 \pm 1}{2},$$
> 因而两根为 $x = 2$ 与 $x = 3$。