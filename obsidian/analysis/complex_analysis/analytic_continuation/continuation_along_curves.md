# 沿曲线的解析延拓

## 函数元沿曲线延拓

<!-- continuation_along_curve_definition -->
> [!Definition]
> **沿曲线的解析延拓 Analytic Continuation Along a Curve**：设 $\gamma:[0,1]\to\mathbb{C}$ 为连续曲线，起点处给定解析元素 $(f_0,D_0)$，且 $\gamma(0)\in D_0$。若存在有限或可数的开圆盘族 $D_t$ 及全纯函数 $f_t$，满足：
> 1. $\gamma(t)\in D_t$；
> 2. 相邻解析元素在非空开集上相容；
> 3. $f_0$ 是起点处的初始元素；
> 则称 $(f_0,D_0)$ 可沿 $\gamma$ 解析延拓。
>
> 由于 $[0,1]$ 的紧性，实际构造可取有限个相邻的解析元素覆盖曲线像。

<!-- continuation_chain_uniqueness -->
> [!Theorem]
> **延拓链的局部唯一性 Local Uniqueness Along a Chain**：若沿同一条曲线从同一初始解析元素出发，两条延拓链在每一步都相容，则它们在曲线的共同终点邻域内给出相同的解析元素。
>
> **证明思路**：从起点开始，利用相邻定义域交集中的恒等性逐步比较；每一步的唯一性由恒等定理给出。

<!-- monodromy_obstruction_example -->
> [!Example]+
> **沿闭曲线延拓产生的单值性障碍 Monodromy Obstruction**：从 $z=1$ 附近的局部平方根开始，沿单位圆 $\gamma(t)=e^{2\pi it}$ 延拓一周后，平方根的值从 $1$ 变为 $-1$。因此它不能在 $\mathbb{C}\setminus\{0\}$ 上形成单值连续分支。
>
> 同样地，对数函数沿原点绕一周后增加 $2\pi i$，说明局部解析元素的延拓可能依赖于路径。

## 单值性定理

<!-- monodromy_theorem -->
> [!Theorem]
> **单值性定理 Monodromy Theorem**：设 $D$ 是单连通区域，$(f_0,D_0)$ 是 $D$ 中的初始解析元素。若该元素可以沿 $D$ 中从起点出发的每条路径解析延拓，则延拓到任意终点的结果与路径无关。因此它确定一个定义在 $D$ 上的单值全纯函数。
>
> **证明思路**：两条连接同一点的路径在单连通区域中同伦；将同伦分割为足够小的邻域，在每个邻域内用局部唯一性比较延拓，得到终点元素相同。

<!-- monodromy_theorem_loop_form -->
> [!Corollary]
> **闭曲线形式的单值性定理 Loop Form of the Monodromy Theorem**：若从初始解析元素出发沿每条闭曲线延拓后都返回原解析元素，则沿任意两条同端点路径的延拓结果相同。
>
> **证明思路**：将一条路径与另一条路径的逆连接成闭曲线；闭曲线上的延拓无单值性变化即推出两条路径的终点元素一致。

<!-- logarithm_continuation_along_curves -->
> [!Example]+
> **对数函数的延拓 Logarithmic Continuation**：局部满足 $L'(z)=1/z$ 且 $e^{L(z)}=z$ 的函数元可以沿 $\mathbb{C}\setminus\{0\}$ 中的路径延拓。若路径的卷绕数为 $n$，则延拓终值相对于初值增加
> $$
> 2\pi i\,n.
> $$
> 因此只有在单连通的、避开原点的区域上才能得到单值对数分支。

> **注**：沿曲线解析延拓和单值性定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 8，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 7。
