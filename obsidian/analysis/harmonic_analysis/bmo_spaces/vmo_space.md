# VMO 空间

## 消失均值振荡

<!-- harmonic_vmo_definition -->
> [!Definition]
> **消失均值振荡空间 Vanishing Mean Oscillation**：函数 $f\in\operatorname{BMO}(\mathbb{R}^n)$ 属于 $\operatorname{VMO}(\mathbb{R}^n)$，若其平均振荡在以下三种极限中均消失：
> $$
> \lim_{r\to0^+}\sup_{\ell(Q)\leq r}\frac1{|Q|}\int_Q|f-\langle f\rangle_Q|\,dx=0,
> $$
> $$
> \lim_{r\to+\infty}\sup_{\ell(Q)\geq r}\frac1{|Q|}\int_Q|f-\langle f\rangle_Q|\,dx=0,
> $$
> $$
> \lim_{R\to+\infty}\sup_{Q\cap B(0,R)^c\ne\varnothing\atop \ell(Q)\leq R}
> \frac1{|Q|}\int_Q|f-\langle f\rangle_Q|\,dx=0.
> $$
> 这里 $\ell(Q)$ 是立方体边长；第三项排除了远离原点处持续的局部振荡。

<!-- harmonic_vmo_density_theorem -->
> [!Theorem]
> **光滑紧支撑函数的稠密性 Density of $C_c^\infty$ in VMO**：
> $$
> \operatorname{VMO}(\mathbb{R}^n)
> =\overline{C_c^\infty(\mathbb{R}^n)}^{\|\cdot\|_{\operatorname{BMO}}}.
> $$
> 因而 VMO 是 BMO 中可由光滑紧支撑函数在 BMO 半范数下逼近的闭子空间。
>
> **证明思路**：对 VMO 函数先以平滑逼近恒等式卷积处理小尺度振荡，再用截断处理无穷远和大尺度振荡；三种消失条件恰好保证两步误差均趋于零。反向由每个 $C_c^\infty$ 函数的三种消失性质及 BMO 闭性得到。

<!-- harmonic_vmo_commutator_compactness -->
> [!Theorem]
> **VMO 与交换子紧性 VMO and Commutator Compactness**：设 $T$ 为适当非退化 Calderón-Zygmund 算子，$1<p<+\infty$。若 $b\in\operatorname{VMO}(\mathbb{R}^n)$，则
> $$
> [b,T]:L^p(\mathbb{R}^n)\longrightarrow L^p(\mathbb{R}^n)
> $$
> 是紧算子；在标准非退化条件下，紧性反过来刻画 $b\in\operatorname{VMO}$。
>
> **证明思路**：先对 $b\in C_c^\infty$ 利用核的平滑性、截断和 Fréchet-Kolmogorov 紧性判别证明紧性；再由 $C_c^\infty$ 在 VMO 中的稠密性及交换子范数估计传递到一般 $b$。

<!-- harmonic_vmo_predual_theorem -->
> [!Theorem]
> **VMO 的对偶 VMO Duality**：在由积分配对给出的自然嵌入下，
> $$
> \bigl(\operatorname{VMO}(\mathbb{R}^n)\bigr)^*=H^1(\mathbb{R}^n).
> $$
> 此处 VMO 视为模常数的 Banach 空间；该结论应与
> $$
> (H^1)^*=\operatorname{BMO}/\mathbb{C}
> $$
> 区分。它说明 VMO 是 $H^1$ 的一个自然预对偶。
>
> **证明思路**：由 $C_c^\infty$ 在 VMO 中的稠密性和 $H^1$-BMO 配对，先将每个 $H^1$ 元素定义为 VMO 上泛函；反向对 VMO 泛函作适当的平滑近似与对偶延拓，识别为一个 $H^1$ 分布。

> **来源**：Donald Sarason, "Functions of Vanishing Mean Oscillation", *Transactions of the American Mathematical Society* 207 (1975)；Akihito Uchiyama, "On the Compactness of Operators of Hankel Type", *Tohoku Mathematical Journal* 30 (1978)。
