# 多元函数的连续

<!-- real_analysis_multivariable_continuity_definition -->
> [!Definition]
> **多元函数的连续性 Continuity of a Multivariable Function**：设 $D\subseteq\mathbb{R}^n$，$f:D\to\mathbb{R}^m$，$a\in D$。若对任意 $\varepsilon>0$，存在 $\delta>0$，使得对任意 $x\in D$，
> $$
> \|x-a\|<\delta\Longrightarrow\|f(x)-f(a)\|<\varepsilon,
> $$
> 则称 $f$ 在 $a$ 处连续。若 $f$ 在 $D$ 的每一点连续，则称 $f$ 在 $D$ 上连续。

<!-- real_analysis_multivariable_continuity_equivalent_characterizations -->
> [!Theorem]
> **多元连续性的等价刻画 Equivalent Characterizations of Multivariable Continuity**：对 $a\in D$，下列条件等价：
> 1. $f$ 在 $a$ 处连续；
> 2. 对任意 $x_k\in D$，若 $x_k\to a$，则 $f(x_k)\to f(a)$；
> 3. 对 $f(a)$ 的每个开邻域 $V$，存在 $a$ 的开邻域 $U$，使 $f(U\cap D)\subseteq V$。
>
> **证明思路**：第一、三条分别是度量拓扑下连续性的度量表述与邻域表述。第一、二条由多元 Heine 归结原则得到。

<!-- real_analysis_multivariable_componentwise_continuity -->
> [!Theorem]
> **分量连续性刻画 Componentwise Characterization of Continuity**：设 $f=(f_1,\ldots,f_m):D\to\mathbb{R}^m$。则 $f$ 在 $a$ 处连续，当且仅当每个分量函数 $f_i$ 在 $a$ 处连续。
>
> **证明思路**：由 $|f_i(x)-f_i(a)|\leq\|f(x)-f(a)\|$ 得到必要性；充分性则对有限个分量分别控制，并用范数与分量的关系合并估计。

<!-- real_analysis_multivariable_continuous_algebra_and_composition -->
> [!Theorem]
> **连续函数的运算与复合 Operations and Composition of Continuous Functions**：在相同定义域上连续的实值函数，其线性组合、乘积及分母非零处的商仍连续。若 $f:D\to E\subseteq\mathbb{R}^m$ 在 $a$ 处连续，且 $g:E\to\mathbb{R}^p$ 在 $f(a)$ 处连续，则 $g\circ f$ 在 $a$ 处连续。
>
> **证明思路**：分别使用极限运算法则与连续性的极限定义；复合情形将 $g$ 在 $f(a)$ 处的连续性与 $f$ 在 $a$ 处的连续性依次应用。

<!-- real_analysis_multivariable_continuous_image_of_compact_set -->
> [!Theorem]
> **紧集的连续像 Continuous Image of a Compact Set**：若 $K\subseteq\mathbb{R}^n$ 是紧集，且 $f:K\to\mathbb{R}^m$ 连续，则 $f(K)$ 是紧集。
>
> **证明思路**：任取 $f(K)$ 的开覆盖，取其各成员在 $f$ 下的原像，得到 $K$ 的开覆盖；由 $K$ 紧致性取有限子覆盖，再映回值域。

<!-- real_analysis_multivariable_heine_cantor_theorem -->
> [!Theorem]
> **Heine-Cantor 定理 Heine-Cantor Theorem**：若 $K\subseteq\mathbb{R}^n$ 是紧集，且 $f:K\to\mathbb{R}^m$ 连续，则 $f$ 在 $K$ 上一致连续：对任意 $\varepsilon>0$，存在 $\delta>0$，使任意 $x,y\in K$ 满足
> $$
> \|x-y\|<\delta\Longrightarrow\|f(x)-f(y)\|<\varepsilon.
> $$
>
> **证明思路**：若不一致连续，取 $x_k,y_k\in K$ 使 $\|x_k-y_k\|\to0$ 而函数值距离不小于某正数。紧致性给出 $x_k$ 的收敛子列，$y_k$ 的对应子列趋于同一点，再由连续性矛盾。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 4；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 4。