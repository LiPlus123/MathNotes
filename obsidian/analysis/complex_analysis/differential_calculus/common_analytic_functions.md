# 常见解析函数及其导数

## 指数函数与对数函数

<!-- complex_exponential_function -->
> [!Definition]
> **复指数函数 Complex Exponential Function**：对 $z\in\mathbb{C}$，定义
> $$
> e^z:=\sum_{n=0}^{\infty}\frac{z^n}{n!}.
> $$
> 它满足
> $$
> (e^z)'=e^z,\qquad e^{z+w}=e^ze^w,\qquad e^{x+iy}=e^x(\cos y+i\sin y).
> $$
> 复指数函数的周期为 $2\pi i\mathbb{Z}$，即 $e^{z+2\pi i k}=e^z$。

<!-- complex_logarithm_branches -->
> [!Definition]
> **复对数及其分支 Complex Logarithm and Its Branches**：对 $z\ne0$，满足 $e^w=z$ 的所有 $w$ 构成多值对数
> $$
> \log z=\ln|z|+i(\arg z+2\pi k),\qquad k\in\mathbb{Z}.
> $$
> 在不包含 $0$ 且不绕过原点的单连通区域 $D$ 上，可连续选择辐角 $\operatorname{Arg}_D z$，定义对数的单值分支
> $$
> \operatorname{Log}_D z=\ln|z|+i\operatorname{Arg}_D z.
> $$
> 每个这样的分支满足
> $$
> (\operatorname{Log}_D z)'=\frac1z.
> $$

<!-- principal_logarithm -->
> [!Example]+
> **主值对数 Principal Logarithm**：在切割平面
> $$
> \mathbb{C}\setminus(-\infty,0]
> $$
> 上取 $-\pi<\operatorname{Arg}z<\pi$，得到主值对数
> $$
> \operatorname{Log}z=\ln|z|+i\operatorname{Arg}z,
> $$
> 它在该区域上全纯且导数为 $1/z$。

## 幂函数

<!-- complex_power_function_branches -->
> [!Definition]
> **复幂函数 Complex Power Function**：对 $\alpha\in\mathbb{C}$，在对数分支 $\operatorname{Log}_D$ 上定义
> $$
> z^\alpha:=\exp\bigl(\alpha\operatorname{Log}_D z\bigr).
> $$
> 该函数依赖于所选分支；在 $D$ 上全纯且
> $$
> (z^\alpha)'=\alpha z^{\alpha-1},
> $$
> 其中右侧使用同一分支约定。整数非负幂 $z^n$ 不依赖分支。

## 三角函数与双曲函数

<!-- complex_trigonometric_functions -->
> [!Definition]
> **复三角函数 Complex Trigonometric Functions**：定义
> $$
> \sin z:=\frac{e^{iz}-e^{-iz}}{2i},\qquad
> \cos z:=\frac{e^{iz}+e^{-iz}}2,
> $$
> $$
> \tan z:=\frac{\sin z}{\cos z}\quad(\cos z\ne0).
> $$
> 它们满足
> $$
> (\sin z)'=\cos z,\qquad(\cos z)'=-\sin z,
> $$
> $$
> (\tan z)'=\sec^2z=\frac1{\cos^2z}.
> $$

<!-- complex_hyperbolic_functions -->
> [!Definition]
> **复双曲函数 Complex Hyperbolic Functions**：定义
> $$
> \sinh z:=\frac{e^z-e^{-z}}2,\qquad
> \cosh z:=\frac{e^z+e^{-z}}2,
> $$
> $$
> \tanh z:=\frac{\sinh z}{\cosh z}\quad(\cosh z\ne0).
> $$
> 它们满足
> $$
> (\sinh z)'=\cosh z,\qquad(\cosh z)'=\sinh z,
> $$
> $$
> (\tanh z)'=\operatorname{sech}^2z=\frac1{\cosh^2z}.
> $$
>
> **注**：这些函数由复指数函数定义，因此在其定义域内全纯；商函数的定义域需排除分母的零点。

> **注**：常见解析函数及其分支参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 3。
