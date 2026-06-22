## 二次互反律

<!-- quadratic_reciprocity_law -->
> [!Theorem]
> **二次互反律 Law of Quadratic Reciprocity**：设 $p, q$ 是不同的奇素数，则：
> $$\left(\frac{p}{q}\right)\left(\frac{q}{p}\right) = (-1)^{\frac{p-1}{2} \cdot \frac{q-1}{2}}$$
>
> 等价地：
> $$\left(\frac{p}{q}\right) = \begin{cases} \left(\dfrac{q}{p}\right), & p \equiv 1 \pmod{4} \text{ 或 } q \equiv 1 \pmod{4} \\ -\left(\dfrac{q}{p}\right), & p \equiv q \equiv 3 \pmod{4} \end{cases}$$
>
> **证明思路**：利用高斯引理，$\left(\dfrac{p}{q}\right) = (-1)^\mu$，$\left(\dfrac{q}{p}\right) = (-1)^\nu$，其中
> $$\mu = \#\left\{(x,y) : 1 \leq x \leq \frac{q-1}{2},\; 1 \leq y \leq \frac{p-1}{2},\; \frac{p x}{q} < y\right\}$$
> 通过对格点计数，证明 $\mu + \nu = \dfrac{p-1}{2} \cdot \dfrac{q-1}{2}$，从而得到 $(-1)^{\mu+\nu} = (-1)^{\frac{p-1}{2} \cdot \frac{q-1}{2}}$。

<!-- quadratic_reciprocity_supplement -->
> [!Corollary]
> **二次互反律的补充 Supplements to Quadratic Reciprocity**：设 $p$ 是奇素数，则：
> $$\left(\frac{-1}{p}\right) = (-1)^{(p-1)/2}, \quad \left(\frac{2}{p}\right) = (-1)^{(p^2-1)/8}$$
>
> **证明思路**：这两个公式分别由欧拉判别法和高斯引理直接导出，构成二次互反律在 $p$ 或 $q = 2, -1$ 时的"补充"情形。

> **注**：二次互反律是高斯于 1796 年首先证明的，被他称为"数论中的宝石"。它将判断 $p$ 是否为模 $q$ 的二次剩余的问题，化归为判断 $q$ 是否为模 $p$ 的二次剩余，从而结合欧拉判别法和递归可高效计算勒让德符号。

<!-- legendre_symbol_computation_example -->
> [!Example]+
> **利用二次互反律计算勒让德符号 Computing Legendre Symbol via QRL**：计算 $\left(\dfrac{365}{1847}\right)$（其中 $1847$ 是素数）。
>
> **解题思路**：先将 $365 = 5 \times 73$ 分解，利用完全积性化为 $\left(\dfrac{5}{1847}\right)\left(\dfrac{73}{1847}\right)$。再对每个因子反复应用二次互反律和模运算，将计算化归为小素数处的勒让德符号，直至得出结果。
