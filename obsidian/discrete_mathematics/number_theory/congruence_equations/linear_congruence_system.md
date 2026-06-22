## 线性同余方程组

<!-- linear_congruence_system_two_equations -->
> [!Theorem]
> **二元线性同余方程组的可解性 Solvability of Two Linear Congruences**：设 $m_1, m_2 \in \mathbb{Z}^+$，$a_1, a_2 \in \mathbb{Z}$，$d = \gcd(m_1, m_2)$。方程组
> $$\begin{cases} x \equiv a_1 \pmod{m_1} \\ x \equiv a_2 \pmod{m_2} \end{cases}$$
> 有解，当且仅当
> $$d \mid (a_1 - a_2)$$
> 若有解，则解模 $\mathrm{lcm}(m_1, m_2)$ 唯一，即全部解为
> $$x \equiv c \pmod{\mathrm{lcm}(m_1, m_2)}$$
> 其中 $c$ 是某一特解。
>
> **证明思路**：第一个方程的解为 $x = a_1 + m_1 t$（$t \in \mathbb{Z}$），代入第二个方程得 $m_1 t \equiv a_2 - a_1 \pmod{m_2}$，这是关于 $t$ 的线性同余方程，可解当且仅当 $d \mid (a_2 - a_1)$。有解时，$t$ 模 $m_2 / d$ 唯一确定，故 $x$ 模 $m_1 \cdot (m_2 / d) = \mathrm{lcm}(m_1, m_2)$ 唯一确定。

<!-- linear_congruence_system_general -->
> [!Theorem]
> **多元线性同余方程组的求解 Solving System of Linear Congruences**：设有方程组
> $$\begin{cases} x \equiv a_1 \pmod{m_1} \\ x \equiv a_2 \pmod{m_2} \\ \quad \vdots \\ x \equiv a_k \pmod{m_k} \end{cases}$$
> 可逐步将方程两两合并：先合并前两个方程得到关于 $x$ 的单个同余方程，再与第三个方程合并，依此类推。每步合并使用上述二元可解性判断，只要每步均满足可解条件，即可求出全部解。
>
> **证明思路**：归纳应用二元情形：设前 $i$ 个方程已合并为 $x \equiv c_i \pmod{M_i}$，其中 $M_i = \mathrm{lcm}(m_1, \ldots, m_i)$，再与第 $i+1$ 个方程合并即可。

<!-- linear_congruence_system_example -->
> [!Example]+
> **线性同余方程组求解示例 Example of Solving System of Congruences**：求解方程组
> $$\begin{cases} x \equiv 2 \pmod{6} \\ x \equiv 3 \pmod{10} \end{cases}$$
>
> $d = \gcd(6, 10) = 2$，$a_1 - a_2 = 2 - 3 = -1$，因 $2 \nmid (-1)$，方程组无解。
>
> 若改为
> $$\begin{cases} x \equiv 2 \pmod{6} \\ x \equiv 8 \pmod{10} \end{cases}$$
>
> $a_1 - a_2 = 2 - 8 = -6$，$2 \mid (-6)$，有解。由第一个方程 $x = 2 + 6t$，代入第二个方程：$2 + 6t \equiv 8 \pmod{10}$，即 $6t \equiv 6 \pmod{10}$，化简为 $3t \equiv 3 \pmod{5}$，得 $t \equiv 1 \pmod{5}$，故 $t = 1 + 5s$，$x = 2 + 6(1 + 5s) = 8 + 30s$，即 $x \equiv 8 \pmod{30}$。$\mathrm{lcm}(6, 10) = 30$，符合。
