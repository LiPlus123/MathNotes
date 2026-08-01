# Dirichlet 问题

## Dirichlet 问题的定义

<!-- dirichlet_problem_definition -->
> [!Definition]
> **Dirichlet 问题 Dirichlet Problem**：设 $D\subseteq\mathbb R^2$ 为有界区域，给定边界函数 $\varphi:\partial D\to\mathbb R$，Dirichlet 问题要求寻找函数 $u$，使
> $$
> \begin{cases}
> \Delta u=0,&z\in D,\\
> u=\varphi,&z\in\partial D.
> \end{cases}
> $$
> 通常要求 $u\in C^2(D)\cap C(\overline D)$。

<!-- dirichlet_problem_uniqueness -->
> [!Theorem]
> **Dirichlet 问题的唯一性 Uniqueness of the Dirichlet Problem**：若 $u,v\in C^2(D)\cap C(\overline D)$ 都是给定连续边界数据 $\varphi$ 的解，则 $u=v$。
>
> **证明思路**：差函数 $u-v$ 调和且在边界为零，应用最大值原理得到 $u-v\equiv0$。

<!-- disk_dirichlet_problem_solution -->
> [!Theorem]
> **圆盘上的 Dirichlet 问题 Dirichlet Problem on the Disk**：对任意连续函数 $\varphi:\partial\mathbb D\to\mathbb R$，存在唯一函数 $u\in C^2(\mathbb D)\cap C(\overline{\mathbb D})$，满足
> $$
> \Delta u=0\quad\text{in }\mathbb D,
> \qquad
> u|_{\partial\mathbb D}=\varphi.
> $$
> 解由 Poisson 积分给出。
>
> **证明思路**：存在性由 Poisson 积分公式和边界逼近恒等性得到，唯一性由最大值原理得到。

## Perron 方法与次调和函数

<!-- subharmonic_function_definition -->
> [!Definition]
> **次调和函数 Subharmonic Function**：设 $u:D\to[-\infty,\infty)$ 上半连续。若对每个闭圆盘 $\overline{B(a,r)}\subset D$，都有
> $$
> u(a)\le\frac1{2\pi}\int_0^{2\pi}u(a+re^{i\theta})\,d\theta,
> $$
> 则称 $u$ 在 $D$ 上次调和。若 $u\in C^2(D)$，则次调和性等价于
> $$
> \Delta u\ge0.
> $$

<!-- superharmonic_function_definition -->
> [!Definition]
> **超调和函数 Superharmonic Function**：函数 $v$ 称为超调和函数，若 $-v$ 是次调和函数。对 $C^2$ 函数而言，超调和性等价于 $\Delta v\le0$。

<!-- perron_method_definition -->
> [!Definition]
> **Perron 方法 Perron's Method**：对有界区域 $D$ 和边界数据 $\varphi$，考虑所有满足
> $$
> u\text{ 次调和于 }D,\qquad \limsup_{z\to\xi}u(z)\le\varphi(\xi)\quad(\xi\in\partial D)
> $$
> 的函数组成的 Perron 类 $\mathcal S_\varphi$，并定义 Perron 上包络
> $$
> U(z)=\sup_{u\in\mathcal S_\varphi}u(z).
> $$
> 若边界具有适当正则性，$U$ 给出 Dirichlet 问题的解。

<!-- perron_method_theorem -->
> [!Theorem]
> **Perron 方法 Perron's Method for the Dirichlet Problem**：设 $D$ 是有界区域，且每个边界点都是 Dirichlet 正则点；若 $\varphi\in C(\partial D)$，则 Perron 上包络 $U$ 在 $D$ 内调和，并且连续延拓到边界满足
> $$
> U|_{\partial D}=\varphi.
> $$
> 因而 $U$ 是 Dirichlet 问题的唯一解。
>
> **证明思路**：对 Perron 类在小圆盘内做调和替换，证明上包络具有调和性；用边界正则性构造屏障函数，证明其边界极限等于给定数据。

<!-- dirichlet_regular_boundary_point -->
> [!Definition]
> **Dirichlet 正则边界点 Regular Boundary Point**：边界点 $\xi\in\partial D$ 称为 Dirichlet 正则点，若对任意连续边界数据 $\varphi$，Perron 解满足
> $$
> \lim_{z\to\xi}U(z)=\varphi(\xi).
> $$
> 满足外部球条件的边界点是正则点；具有足够光滑边界的有界区域的每个边界点都是正则点。

<!-- subharmonic_maximum_principle -->
> [!Theorem]
> **次调和函数的极值原理 Maximum Principle for Subharmonic Functions**：若 $u$ 在有界区域 $D$ 上次调和并连续到 $\overline D$，则
> $$
> \max_{\overline D}u=\max_{\partial D}u
> $$
> 除非 $u$ 为常数；超调和函数具有相应的最小值原理。
>
> **证明思路**：若次调和函数在内部取得严格最大值，则均值不等式迫使邻域内取同一最大值，再由连通性传播；边界结论由紧性给出。

> **注**：Dirichlet 问题、Perron 方法和次调和函数参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 Walter Rudin, *Real and Complex Analysis*, Chapter 11。
