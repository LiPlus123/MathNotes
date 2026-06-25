# 多项式方程 Polynomial Equation

## 多项式方程

<!-- polynomial_equation_def -->
> [!Definition]
> **多项式方程 Polynomial Equation**：设 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_0 \in K[x]$ 是数域 $K$ 上的 $n$ 次多项式（$n \geq 1$），则
> $$f(x) = 0$$
> 称为数域 $K$ 上的一个 **$n$ 次多项式方程**（polynomial equation of degree $n$），简称 **$n$ 次方程**。

> **注**：一次方程（$n=1$）、二次方程（$n=2$）、三次方程（$n=3$）、四次方程（$n=4$）分别称为**线性方程**、**二次方程**、**三次方程**、**四次方程**（linear, quadratic, cubic, quartic equation）。

## 方程的根

<!-- polynomial_root_def -->
> [!Definition]
> **根 Root**：设 $f(x) \in K[x]$，$\alpha \in K$（或更一般地，$\alpha$ 属于某个包含 $K$ 的数域 $L$）。若 $f(\alpha) = 0$，则称 $\alpha$ 为多项式 $f(x)$（或方程 $f(x) = 0$）的一个**根**（root）或**零点**（zero）。

> **注**：根的存在性与数域的选取密切相关。例如，$x^2 + 1 = 0$ 在 $\mathbb{R}$ 上无根，但在 $\mathbb{C}$ 上有两个根 $\pm i$。本章后续将系统讨论根的性质，包括根的个数、重根判定以及代数学基本定理等。

## 方程的解集

<!-- polynomial_equation_solution_set -->
> [!Definition]
> **解集 Solution Set**：多项式方程 $f(x) = 0$ 在数域 $K$ 中的所有根构成的集合，称为该方程在 $K$ 上的**解集**（solution set），记为
> $$\{\alpha \in K \mid f(\alpha) = 0\}.$$

> **注**：由因式定理（参见"多项式的除法"），$\alpha$ 是 $f(x)$ 的根当且仅当 $(x - \alpha) \mid f(x)$。这一联系将方程的求根问题与多项式的因式分解紧密相连，是后续理论的基础。
