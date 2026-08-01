# John--Nirenberg 不等式

## 指数可积性与范数等价

<!-- harmonic_john_nirenberg_inequality -->
> [!Theorem]
> **John--Nirenberg 不等式 John--Nirenberg Inequality**：存在仅依赖于维数 $n$ 的常数 $c,C>0$，使任意 $f\in\operatorname{BMO}(\mathbb{R}^n)$、任意立方体 $Q$ 与任意 $\lambda>0$ 满足
> $$
> \left|\left\{x\in Q:|f(x)-\langle f\rangle_Q|>\lambda\right\}\right|
> \leq C e^{-c\lambda/\|f\|_{\operatorname{BMO}}}|Q|.
> $$
> 这说明 BMO 的局部振荡具有指数尾衰减。
>
> **证明思路**：在 $Q$ 上对 $|f-\langle f\rangle_Q|$ 施行 Calderón-Zygmund 分解。坏立方体的总体积由 BMO 半范数控制；在每个坏立方体上递归分解，得到几何级数型的分布函数估计。

<!-- harmonic_bmo_exponential_integrability -->
> [!Corollary]
> **局部指数可积性 Local Exponential Integrability**：存在 $c,C>0$，使每个 $f\in\operatorname{BMO}$ 与立方体 $Q$ 满足
> $$
> \frac{1}{|Q|}\int_Q
> \exp\left(\frac{c|f(x)-\langle f\rangle_Q|}{\|f\|_{\operatorname{BMO}}}\right)\,dx
> \leq C.
> $$
>
> **证明思路**：使用层析公式将指数函数的积分表示为振荡超水平集测度的积分，再代入 John--Nirenberg 的指数衰减估计。

<!-- harmonic_bmo_lq_oscillation_equivalence -->
> [!Theorem]
> **$L^q$ 平均振荡范数等价 Equivalent $L^q$ Mean-Oscillation Norms**：对每个 $1\leq q<+\infty$，
> $$
> \|f\|_{\operatorname{BMO},q}
> =\sup_Q\left(\frac1{|Q|}\int_Q|f-\langle f\rangle_Q|^q\,dx\right)^{1/q}
> $$
> 与 $\|f\|_{\operatorname{BMO}}$ 等价。
>
> **证明思路**：$q=1$ 是定义。对 $q>1$，将分布函数公式与 John--Nirenberg 指数尾相结合，得到高阶矩上界；反向由 Hölder 不等式成立。

<!-- harmonic_bmo_endpoint_character -->
> [!Proposition]
> **BMO 的端点性质 Endpoint Character of BMO**：BMO 严格包含 $L^\infty$，却仍具有所有有限局部 $L^q$ 振荡控制。它在许多插值尺度中充当 $L^\infty$ 的替代端点，并与 $H^1$ 构成对偶对。

> **来源**：Fritz John and Louis Nirenberg, "On Functions of Bounded Mean Oscillation", *Communications on Pure and Applied Mathematics* 14 (1961)；Elias M. Stein, *Harmonic Analysis*, Chapter IV。
