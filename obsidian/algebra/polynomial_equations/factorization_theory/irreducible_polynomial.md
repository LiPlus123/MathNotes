# 不可约多项式 Irreducible Polynomial

## 定义与基本性质

<!-- irreducible_polynomial_over_field_def -->
> [!Definition]
> **不可约多项式 Irreducible Polynomial**：设 $K$ 为数域，$f(x) \in K[x]$。若 $f(x)$ 是非常数多项式，且对任意分解
> $$f(x)=g(x)h(x),\quad g(x),h(x)\in K[x],$$
> 都有 $g(x)$ 或 $h(x)$ 为常数多项式，则称 $f(x)$ 在 $K[x]$ 中不可约（irreducible）。

> **注**：不可约性的判定依赖于系数域 $K$。

<!-- irreducible_linear_polynomial_theorem -->
> [!Theorem]
> **一次多项式不可约 Linear Polynomial Irreducibility**：任意一次多项式 $ax+b$（$a\neq 0$）在 $K[x]$ 中不可约。

> **证明思路**：若 $ax+b=gh$，则次数满足 $1=\deg g+\deg h$，故必有一个因子次数为 $0$，即为常数多项式。

## 域依赖性

<!-- irreducibility_field_dependence_example -->
> [!Example]+
> **不可约性的域依赖性 Field Dependence of Irreducibility**：多项式
> $$f(x)=x^2-2$$
> 在不同系数域中的情况如下：
> - 在 $\mathbb{Q}[x]$ 中，$f(x)$ 不可约；
> - 在 $\mathbb{R}[x]$ 中，$f(x)=(x-\sqrt{2})(x+\sqrt{2})$，可约；
> - 在 $\mathbb{C}[x]$ 中，同样可约。

> **证明思路**：在 $\mathbb{Q}$ 中若可约则必有有理根，与有理根判定矛盾；而在 $\mathbb{R}$ 与 $\mathbb{C}$ 中可直接写出线性因子分解。