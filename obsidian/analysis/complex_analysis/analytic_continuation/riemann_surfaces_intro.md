# Riemann 面初步

## 多值函数与 Riemann 面

<!-- riemann_surface_as_single_valued_domain -->
> [!Definition]
> **Riemann 面 Riemann Surface**：Riemann 面是一个连通 Hausdorff 拓扑空间 $X$，配备一族复坐标图 $(U_\alpha,\varphi_\alpha)$，其中
> $$
> \varphi_\alpha:U_\alpha\to\varphi_\alpha(U_\alpha)\subseteq\mathbb{C}
> $$
> 是同胚，且在坐标图交集上的坐标变换
> $$
> \varphi_\beta\circ\varphi_\alpha^{-1}
> $$
> 全纯且导数处处非零。这样的图册称为复解析图册。

<!-- branched_function_riemann_surface -->
> [!Theorem]
> **多值函数在 Riemann 面上成为单值函数 Multivalued Functions on Riemann Surfaces**：多值函数的不同分支可以作为不同局部坐标片的局部函数；通过把具有相同解析延拓关系的函数元组织成一个空间，可得到一个 Riemann 面 $X$ 及全纯函数
> $$
> \pi:X\to D,
> $$
> 使原多值函数在 $X$ 上成为单值全纯函数。映射 $\pi$ 在非分支点附近局部为双全纯坐标投影。
>
> **证明思路**：以解析元素为点，按相容延拓粘合局部定义域；局部坐标取底空间中的变量，坐标变换由解析延拓的唯一性保证全纯。

<!-- square_root_riemann_surface -->
> [!Example]+
> **平方根的 Riemann 面 Riemann Surface of the Square Root**：考虑
> $$
> X=\{(z,w)\in\mathbb{C}^2:w^2=z\}.
> $$
> 投影 $\pi(z,w)=z$ 在 $z\ne0$ 附近有两个局部逆分支，对应平方根的两个值；在 $(0,0)$ 处发生分支。参数化 $w\mapsto(w^2,w)$ 表明 $X$ 本身可用 $w$ 作全局坐标，从而平方根在 $X$ 上由单值函数 $w$ 表示。

## 对数函数与幂函数的 Riemann 面

<!-- logarithm_riemann_surface -->
> [!Example]+
> **对数函数的 Riemann 面 Riemann Surface of the Logarithm**：可取
> $$
> X_{\log}=\{(z,w)\in(\mathbb{C}\setminus\{0\})\times\mathbb{C}:e^w=z\},
> $$
> 投影 $\pi(z,w)=z$。在 $X_{\log}$ 上，$w$ 是单值全纯函数并满足 $e^w=z$；沿底空间绕原点一周对应 $w$ 增加 $2\pi i$。该 Riemann 面通常不是有限层覆叠，而是无限层覆叠。

<!-- power_function_riemann_surface -->
> [!Theorem]
> **幂函数的 Riemann 面 Riemann Surface of a Power Function**：对有理数 $\alpha=p/q$（$p,q$ 互素、$q>0$），关系
> $$
> w^q=z^p
> $$
> 的适当归一化给出幂函数 $z^{p/q}$ 的有限层 Riemann 面；绕分支点一次会把分支循环置换，绕 $q$ 次后返回原分支。对无理数幂，通常需要无限层的解析延拓结构。
>
> **证明思路**：局部选取 $q$ 次根并分析绕分支点的单值性；分支的置换群由 $q$ 次根的循环对称性给出。

<!-- riemann_surface_branch_points -->
> [!Definition]
> **分支点 Branch Point**：若沿底空间中绕某点的闭曲线解析延拓后，函数元不能返回原分支，则该点称为分支点。分支点是投影 $\pi:X\to D$ 不能保持局部双全纯的点。

> **注**：Riemann 面与多值函数的基本观点参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 8，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 7。
