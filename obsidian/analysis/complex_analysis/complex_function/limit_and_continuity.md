# 极限与连续性

## 复变函数的极限

<!-- complex_function_limit_definition -->
> [!Definition]
> **复变函数的极限 Limit of a Complex Function**：设 $D\subseteq\mathbb{C}$，$z_0$ 是 $D$ 的聚点，$f:D\to\mathbb{C}$。若存在 $L\in\mathbb{C}$，使得对任意 $\varepsilon>0$，存在 $\delta>0$，满足
> $$
> z\in D,\quad 0<|z-z_0|<\delta
> \Longrightarrow |f(z)-L|<\varepsilon,
> $$
> 则称 $f$ 在 $z\to z_0$ 时的极限为 $L$，记为
> $$
> \lim_{z\to z_0}f(z)=L.
> $$

<!-- complex_function_limit_uniqueness -->
> [!Theorem]
> **极限的唯一性 Uniqueness of Limits**：若 $\lim_{z\to z_0}f(z)=L$ 且 $\lim_{z\to z_0}f(z)=M$，则 $L=M$。
>
> **证明思路**：若 $L\ne M$，取 $\varepsilon=|L-M|/3$。三角不等式表明在足够小的穿孔邻域内，$f(z)$ 将同时落在两个不相交的圆盘中，矛盾。

<!-- complex_function_sequential_limit -->
> [!Theorem]
> **序列判别法 Sequential Criterion for Limits**：在上述条件下，$\lim_{z\to z_0}f(z)=L$ 当且仅当对 $D$ 中任意满足 $z_n\ne z_0$ 且 $z_n\to z_0$ 的序列，都有
> $$
> f(z_n)\to L.
> $$
>
> **证明思路**：正向由 $\varepsilon$-$\delta$ 定义直接得到；反向若极限定义失败，可为每个 $n$ 选取 $z_n$ 满足 $0<|z_n-z_0|<1/n$ 且 $|f(z_n)-L|\ge\varepsilon_0$，从而构造矛盾序列。

<!-- complex_function_componentwise_limit -->
> [!Theorem]
> **实部与虚部的极限 Componentwise Limits**：设 $f=u+iv$，则
> $$
> \lim_{z\to z_0}f(z)=L+iM
> $$
> 当且仅当
> $$
> \lim_{z\to z_0}u(z)=L,\qquad \lim_{z\to z_0}v(z)=M.
> $$
>
> **证明思路**：利用 $|\operatorname{Re}w|\le|w|$、$|\operatorname{Im}w|\le|w|$ 证明正向；反向使用 $|a+ib|\le|a|+|b|$。

## 连续性与一致连续性

<!-- complex_function_continuity_definition -->
> [!Definition]
> **连续性 Continuity**：设 $f:D\to\mathbb{C}$，$z_0\in D$。若
> $$
> \lim_{z\to z_0}f(z)=f(z_0),
> $$
> 则称 $f$ 在 $z_0$ 处连续。若 $f$ 在 $D$ 的每一点都连续，则称 $f$ 在 $D$ 上连续。
>
> 等价地，对任意 $\varepsilon>0$，存在 $\delta>0$，使得对所有 $z\in D$，
> $$
> |z-z_0|<\delta\Longrightarrow |f(z)-f(z_0)|<\varepsilon.
> $$

<!-- complex_function_continuity_operations -->
> [!Theorem]
> **连续函数的运算 Operations on Continuous Functions**：若 $f,g:D\to\mathbb{C}$ 在 $z_0$ 处连续，则 $f+g$、$f-g$、$fg$ 在 $z_0$ 处连续；若 $g(z_0)\ne0$，则 $f/g$ 在 $z_0$ 处连续。若 $h$ 在 $f(z_0)$ 处连续，则复合函数 $h\circ f$ 在 $z_0$ 处连续。
>
> **证明思路**：分别使用复数运算的连续性、乘法不等式和商的分母远离零的性质；复合函数由邻域的逆向传递得到。

<!-- complex_function_uniform_continuity_definition -->
> [!Definition]
> **一致连续性 Uniform Continuity**：函数 $f:D\to\mathbb{C}$ 称为一致连续，若对任意 $\varepsilon>0$，存在只依赖于 $\varepsilon$ 的 $\delta>0$，使对所有 $z,w\in D$，
> $$
> |z-w|<\delta\Longrightarrow |f(z)-f(w)|<\varepsilon.
> $$
> 一致连续性比逐点连续性更强，因为同一个 $\delta$ 必须适用于定义域中的所有点。

<!-- complex_function_heine_cantor -->
> [!Theorem]
> **Heine-Cantor 定理 Heine-Cantor Theorem**：若 $K\subseteq\mathbb{C}$ 是紧集，且 $f:K\to\mathbb{C}$ 连续，则 $f$ 在 $K$ 上一致连续。
>
> **证明思路**：若不一致连续，则可取 $z_n,w_n\in K$，使 $|z_n-w_n|\to0$ 而 $|f(z_n)-f(w_n)|\ge\varepsilon_0$。由紧性取 $z_n$ 的收敛子列，再由 $|z_n-w_n|\to0$ 得对应的 $w_n$ 子列收敛到同一点，连续性产生矛盾。

## 紧集上的连续函数

<!-- complex_function_compact_image -->
> [!Theorem]
> **紧集的连续像 Compact Image Theorem**：若 $K\subseteq\mathbb{C}$ 紧且 $f:K\to\mathbb{C}$ 连续，则 $f(K)$ 是紧集。因此 $f(K)$ 是有界闭集。
>
> **证明思路**：连续映射把紧集映为紧集，再使用复平面中的 Heine-Borel 定理。

<!-- complex_function_modulus_maximum_on_compact -->
> [!Theorem]
> **紧集上的模的最大值 Maximum of the Modulus on a Compact Set**：若 $K$ 是非空紧集且 $f:K\to\mathbb{C}$ 连续，则存在 $z_0\in K$ 使
> $$
> |f(z_0)|=\max_{z\in K}|f(z)|.
> $$
>
> **证明思路**：连续函数 $z\mapsto|f(z)|$ 把紧集映到 $\mathbb{R}$ 中的紧集；实数中的紧集具有最大值和最小值。

<!-- complex_function_uniform_limit_continuity -->
> [!Theorem]
> **连续函数列的一致极限 Uniform Limit of Continuous Functions**：设 $f_n:D\to\mathbb{C}$ 都连续，且 $f_n$ 在 $D$ 上一致收敛到 $f$，即
> $$
> \forall\varepsilon>0\ \exists N\ \forall n\ge N\ \forall z\in D,
> \quad |f_n(z)-f(z)|<\varepsilon.
> $$
> 则 $f$ 在 $D$ 上连续。
>
> **证明思路**：在 $z_0$ 附近选取一个统一逼近 $f_N$，再用 $f_N$ 在 $z_0$ 处的连续性控制 $f(z)-f(z_0)$；三角不等式完成证明。

> **注**：本小节的极限、连续性及紧集性质参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 1，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 1。
