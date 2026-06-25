# 艾森斯坦判别法 Eisenstein Criterion

## 判别定理

<!-- eisenstein_criterion_theorem -->
> [!Theorem]
> **艾森斯坦判别法 Eisenstein Criterion**：设
> $$f(x)=a_nx^n+a_{n-1}x^{n-1}+\cdots+a_1x+a_0\in\mathbb{Z}[x],\quad a_n\neq 0.$$
> 若存在素数 $p$ 满足：
> - $p\nmid a_n$；
> - $p\mid a_i$（$i=0,1,\ldots,n-1$）；
> - $p^2\nmid a_0$；
> 则 $f(x)$ 在 $\mathbb{Q}[x]$ 中不可约。

> **证明思路**：反设 $f=gh$ 在 $\mathbb{Z}[x]$（经高斯引理可约化到此）中非常数分解。由系数同余模 $p$ 的结构，可推出 $g,h$ 的常数项都被 $p$ 整除，进而 $a_0$ 被 $p^2$ 整除，矛盾。

## 例子

<!-- eisenstein_xn_minus_p_example -->
> [!Example]+
> **多项式 $x^n-p$ 的不可约性 Irreducibility of $x^n-p$**：设 $p$ 为素数，$n\ge 1$，则
> $$f(x)=x^n-p$$
> 满足艾森斯坦判别法（取同一素数 $p$），因此在 $\mathbb{Q}[x]$ 中不可约。

> **证明思路**：首项系数为 $1$ 不被 $p$ 整除；除首项外其余系数均被 $p$ 整除；常数项为 $-p$ 不被 $p^2$ 整除。