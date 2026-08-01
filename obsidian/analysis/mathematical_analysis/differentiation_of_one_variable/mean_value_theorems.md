# 微分中值定理

<!-- real_analysis_fermat_lemma -->
> [!Lemma]
> **Fermat 引理 Fermat's Lemma**：设 $f$ 在 $a$ 处可导，且 $a$ 是 $f$ 的局部极大值点或局部极小值点，则
> $$
> f'(a)=0.
> $$
>
> **证明思路**：极大值情形中，右侧差商非正、左侧差商非负；若双侧导数存在，则二者必须同为零。极小值情形对偶。

<!-- real_analysis_rolle_theorem -->
> [!Theorem]
> **Rolle 定理 Rolle's Theorem**：设 $f:[a,b]\to\mathbb{R}$ 在 $[a,b]$ 上连续、在 $(a,b)$ 上可导，且 $f(a)=f(b)$。则存在 $c\in(a,b)$，使得
> $$
> f'(c)=0.
> $$
>
> **证明思路**：由最值定理，$f$ 在闭区间上取最大值和最小值。若函数非常值，则至少一个最值在内点取得，应用 Fermat 引理；若为常值，任取内点即可。

<!-- real_analysis_lagrange_mean_value_theorem -->
> [!Theorem]
> **Lagrange 中值定理 Lagrange Mean Value Theorem**：设 $f:[a,b]\to\mathbb{R}$ 在 $[a,b]$ 上连续、在 $(a,b)$ 上可导，且 $a<b$。则存在 $c\in(a,b)$，使得
> $$
> f'(c)=\frac{f(b)-f(a)}{b-a}.
> $$
>
> **证明思路**：对 $F(x)=f(x)-\frac{f(b)-f(a)}{b-a}(x-a)$ 应用 Rolle 定理。

<!-- real_analysis_cauchy_mean_value_theorem -->
> [!Theorem]
> **Cauchy 中值定理 Cauchy Mean Value Theorem**：设 $f,g:[a,b]\to\mathbb{R}$ 在 $[a,b]$ 上连续、在 $(a,b)$ 上可导，且 $a<b$。则存在 $c\in(a,b)$，使得
> $$
> (f(b)-f(a))g'(c)=(g(b)-g(a))f'(c).
> $$
> 若另有 $g'(x)\ne0$ 于 $(a,b)$ 且 $g(b)\ne g(a)$，则
> $$
> \frac{f'(c)}{g'(c)}=\frac{f(b)-f(a)}{g(b)-g(a)}.
> $$
>
> **证明思路**：对函数 $(g(b)-g(a))f-(f(b)-f(a))g$ 应用 Rolle 定理。

<!-- real_analysis_darboux_theorem_for_derivatives -->
> [!Theorem]
> **Darboux 定理 Darboux's Theorem for Derivatives**：设 $f$ 在区间 $I$ 上可导。对任意 $a,b\in I$ 且 $a<b$，每个介于 $f'(a)$ 与 $f'(b)$ 之间的实数 $\lambda$，都存在 $c\in(a,b)$，使得
> $$
> f'(c)=\lambda.
> $$
>
> **证明思路**：考察 $F(x)=f(x)-\lambda x$。当 $F'(a)$ 与 $F'(b)$ 异号时，$F$ 的最值不可能都在端点取得，故存在内点极值；Fermat 引理给出 $F'(c)=0$。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 5；Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 6。